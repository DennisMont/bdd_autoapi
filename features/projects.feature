@projects @acceptance

Feature: Projects

  Scenario:  Verify GET all projects is returning all data correctly
      As a user I want to GET the projects from TODOIST API

    Given I set the base url and headers
    When I call to projects endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response

  @project_id
  Scenario:  Verify GET one projects is returning all data correctly
      As a user I want to GET the project from TODOIST API

    Given I set the base url and headers
    When I call to projects endpoint using "GET" method using the "project_id" as parameter
    Then I receive a 200 status code in response

  Scenario: Verify POST project endpoint creates a project with the name provided

    Given I set the base url and headers
    When I call to projects endpoint using "POST" method using the "name project" as parameter
    """
    {
      "name": "Proyecto Behave"
    }
    """
    Then I receive a 200 status code in response

  @project_id
  Scenario: Verify DELETE project endpoint creates a project with the name provided

    Given I set the base url and headers
    When I call to projects endpoint using "DELETE" method using the "project_id" as parameter
    Then I receive a 204 status code in response

  @project_id
  Scenario: Verify POST project endpoint updates a project with the name provided

    Given I set the base url and headers
    When I call to projects endpoint using "POST" method using the "update project data" as parameter
    """
    {
      "name": "New name Project",
      "color": "blue"
    }
    """
    Then I receive a 200 status code in response
