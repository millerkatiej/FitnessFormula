Feature: Create an exercise
  As a user
  I want to be able to add an exercise to the "My Exercises" table


Scenario: The user adds an exercise to an empty table
  Given the following user:
    | email | joe@example.com |
  When I go to the homepage
  And I follow "Sign In"
  And I fill in "joe@example.com" for "Email"
  And I fill in "password" for "Password"
  And I press "Sign in"
  And I press "Add Exercise" 
  Then I should go to the new_exercise page
  Then I should see "Exercise"
  And I fill in "Running" for "Exercise"
  And I fill in "60" for "Time in minutes"
  And I fill in "4" for "Reps or miles"
  And I fill in "8" for "Exhaustion level"
  And I fill in "02/24/14" for "Date"
  And I press "Save Exercise"
