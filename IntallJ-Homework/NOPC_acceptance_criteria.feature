Feature: Demo Nopcommerce's topmenu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce topmenu

  Background: User is on gien URL
    When User type URL "https://demo.nopcommerce.com"
    And User click on enter button
    Then User is on URL

  Scenario: Verify that user can navigate to books category
    When User is on given URL
    And Click on Books tab on topmenu
    Then User is Navigate book category page

  Scenario:  Verify that user can see books category page with filters and list of products
    When is on given URL
    And Click on Books tab on topmenu
    And Check Filters and list tab
    Then Book category page is display with filters and list tabs

  Scenario: Verify that user can See 'sort by' filter on book category page
    Given User is on book category page
    When  User is on books Category page
    And Check 'sort by' filter is present
    Then 'sort by' filter is available on book category page

  Scenario: Verify that user can see 'Display' filter on book category
    Given User is on book category page
    When  user is book categoty page
    And Check Display filter is present
    Then 'Display' filter is available is on book category page

  Scenario: Verify that user can see 'Gride' menu tab pn book category page
    Given User is book category page
    When User is Book category page
    And User can check 'Grid' tab is present
    Then Grid tab is availble on book category page

  Scenario: Verify that user can see Lits tab on book category page
    Given User is on Book category page
    When User is on book category page
    And Chevk List tab is  present
    Then List tab is present on book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is book category page
    When User is on book category page
    And Click on 'sort by' filter
    And Check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in  'Sort by' filter
    Given User is on Books Category page
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Check that 'Name: A to Z' is first in order
    Then  'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is  functioning as expected(Note: Products are filtered in alphabetical order )
    Given User is on Books Category page
    When  User is on Books Category page
    And   Click on 'Sort by' Filter
    And   Select 'Name: A to Z' filter
    Then  All products are displayed in alphabetical order