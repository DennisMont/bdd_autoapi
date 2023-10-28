@comments @acceptance

Feature: Comments

  Scenario:  Verify GET all projects is returning all data correctly
      As a user I want to GET the projects from TODOIST API

    Given I set the base url and headers
    When I call to sections endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response

  @task_id
  Scenario:  Verify POST a comment is returning all data correctly
      As a user I want to POST a comment in TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "task data" as parameter
    """
    {
      "content": "comment created from bdd",
      "task_id": "task_id"
    }
    """
    Then I receive a 200 status code in response

  @comment_id
  Scenario:  Verify DELETE comment delete the section correctly
      As a user I want to delete a comment from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "GET" method using the "comment_id" as parameter
    Then I receive a 200 status code in response

  @comment_id
  Scenario: Verify POST comment endpoint updates a comment with the name provided

    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "update comment data" as parameter
    """
    {
      "content": "Este comment ha sido actualizado"
    }
    """
    Then I receive a 200 status code in response

  @comment_id
  Scenario:  Verify DELETE comment delete the section correctly
      As a user I want to delete a comment from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "DELETE" method using the "comment_id" as parameter
    Then I receive a 204 status code in response
