Feature: Website Login
  As a user
  I want to be able to log in
  So I can get some work done

  Scenario: User logs in successfully
    Given user has a "autotest" account
     When he logs in
     Then he sees "Logged in successfully"
