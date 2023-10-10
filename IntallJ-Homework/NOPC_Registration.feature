Feature: Nopcommerce Registration

  As a User I want to check the Register Functionality of Nopcommerce

  Background: I am on Nopcommerce Registration Page
    Given I open the Googlr crome browser
    When I open the URL "https://demo.nopcommerce.com/register"
    Then I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<First Name>"
    And I enter last name "<Last Name>"
    And I enter Email address "<Email>"
    And I enter Password "<Password>"
    And I enter confirm password "<confirm password>"
    And click on register button
    Then    I can see an error message "<error message>"
    And    I am not able to register

    Examples:

      | First Name | Last Name | Email             | Password | confirm password | error message                              |
      | ""         | Rami      | drami15@gmail.com | 12032    | 20222            | please enter First Name                    |
      | Devansh    | ""        | drami15@gmail.com | 12032    | 20222            | please last Name                           |
      | Devansh    | Rami      | ""                | 12032    | 20222            | please enter valid email                   |
      | Devansh    | Rami      | drami15@gmail.com | ""       | 20222            | password is require                        |
      | Devansh    | Rami      | drami15@gmail.com | 12032    | ""               | confirm password is require                |
      | ""         | ""        | ""                | ""       | ""               | Mandatory field is require                 |
      | Devansh    | Rami      | drami15@gmail.com | 12032    | ""               | minimum 6 character password is required   |
      | Devansh    | Rami      | drami15@gmail.com | 12032    | 120234           | password and confirm password do not match |

  Scenario: I should be able to select any one radio button from Gender label of your personal details section
    Given  I am on Gender label of your presonal detail section
    When i select "Male" radio button
    And I select "Femail" radio button
    Then I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birt field
    Given I am on Date of birth field of your persional detail section
    When I select day "<Day>"
    And I select month "<Month>"
    And I select year "<Year>"
    Then I am able to select date, ,onth And Year from drop down list

    Examples:

      | Day | Month    | Year |
      | 15  | October | 1997 |

  Scenario: I should able to check and uncheck the Newsletter box on options section
    Given I am on Newsletter label on options section
    When I click on Newsletter checkbox
    And I again click on Newsletter Checkbox
    Then I was able to check an uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
    When I enetr First name "Devansh"
    And I enter Last name "Rami"
    And I enetr Email "drami15@gmail.com"
    And I enter paswword " 1365452 "
    And I enter Confirm password " 1365452 "
    Then I was able to register successfully

