Feature: Merge Articles
  As a blog administrator
  In order to organize my blog entries
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Only admins can see merge option
    Given I am on the edit article page
    Then I should see "Merge Articles"
