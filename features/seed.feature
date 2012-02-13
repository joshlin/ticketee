Feature: Seed Data
  In order to fill the database with the basics
  As the system
  I want to run the seed task

  Scenario: The basics
    Given I have run the seed task
    And I am signed in as "admin@ticketee.com"
    When I follow "Ticketee Beta"
    And I follow "New Ticket"