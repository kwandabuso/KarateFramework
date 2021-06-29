@Debug
Feature: get call
Background: set url 
      * url 'https://reqres.in/api/'

Scenario: get user 2
      Given path 'users/2'
      And  param page="2"
      When  method GET
      Then status 200
      Then response.page = "2"
@ignore
Scenario: create a person
      Given path 'users'
      And request
      """
      {
      "name": "morpheus",
      "job": "leader"
      }
      """
      When method POST
      Then status 201
      #Then response == "#object"
      Then response.name= "morpheus"


