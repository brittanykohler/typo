Feature: Merge Articles
  As a blog administrator
  In order to organize my blog entries
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And each article has a comment
    And I am logged into the admin panel
    Given I am on the first article edit page

  Scenario: Admins can see merge option
    Then I should see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    When I select "Goodbye World" from "merge_with"
    And I press "Merge"
    Then I should be on the article index page
    When I follow "Hello World"
    Then I should be on the first article edit page
    Then I should see "HI"
    And I should see "Welcome to Typo"

  Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article)
    When I select "Goodbye World" from "merge_with"
    And I press "Merge"
    Then I should be on the article index page
    Then I should see "admin"

  Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article
    When I select "Goodbye World" from "merge_with"
    And I press "Merge"
    Then I should be on the article index page
    When I follow "2"
    Then I should see "Comment2"

  Scenario: The title of the new article should be the title from either one of the merged articles
    When I select "Goodbye World" from "merge_with"
    And I press "Merge"
    Then I should be on the article index page
    And I should see "Hello World"

  Scenario: The merged article should be deleted
  When I select "Goodbye World" from "merge_with"
  And I press "Merge"
  Then I should be on the article index page
  And I should not see "Goodbye World"
