Feature: Merge Articles
  As a blog administrator
  In order to organize my blog entries
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Admins can see merge option
    Given I am on the first article edit page
    Then I should see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am on the first article edit page
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the article index page
    When I follow "Hello World"
    Then I should be on the first article edit page
    Then I should see "HI"
    And I should see "Welcome to Typo"

  Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article)
    Given I am on the first article edit page
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the article index page
    Then I should see "admin"

  Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article
    Given I am on the first article edit page
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on the article index page
    Then I should see "2"
