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
    When I fill in "merge_with" with "2"
    And I press "Merge"
    Then I should be on the article index page
    When I follow "Edit"
    Then I should be on the first article edit page
    Then I should see "First article Second article"
