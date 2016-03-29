Feature: Merge Articles
  As a blog contributor
  In order to have proper permissions
  I want to not be able to merge articles in my blog

  Background:
    Given the blog is set up
    And I am logged in as a contributor

  Scenario: Non-admins cannot see merge option
    Given I am on the edit article page
    Then I should not see "Merge Articles"
