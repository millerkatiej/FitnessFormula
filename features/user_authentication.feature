Feature: User authentication
  As a user
  I want to be able to sign up/sign in/sign out

  - Standard email/password signup without email confirmation
  - Standard password reset via. email
  - Standard login/logout

  Scenario: User signs up with email and password
    When I go to the homepage
    And I follow "Sign Up"
    And I fill in "test@test.com" for "Email"
    And I fill in "testtest" for "Password"
    And I fill in "testtest" for "Password confirmation"
    And I press "Sign up"
    Then I should see "Welcome! You have signed up successfully."
    And I should see "Sign Out"
    And I should not see "Sign In"
    And I should not see "Sign Up"
    When I follow "Sign Out"
    Then I should not see "Sign Out"
    And I should see "Sign In"
    And I follow "Sign In"
    And I fill in "test@test.com" for "user_email"
    And I fill in "testtest" for "user_password"
    And I press "Sign in"
    Then I should see "Signed in successfully."
    And I should see "Sign Out"
    And I should not see "Sign In"
    When I follow "Sign Out"
    And I should not see "Sign Out"
    And I should see "Sign In"


  
