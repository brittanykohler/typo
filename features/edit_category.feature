Feature: Edit Categories
  As a blog administrator
  In order to organize my blog entries
  I want to be able to edit categories for my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the categories page
    When I press "Edit"
    And I fill in "name" with "Name"
    And I fill in "keywords" with "Lorem Ipsum"
    And I fill in "description" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the categories page
    Then I should see "Foobar"
