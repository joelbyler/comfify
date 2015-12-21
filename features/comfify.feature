Feature: My bootstrapped app kinda works
  In order to get going on coding my awesome app
  I want to have aruba and cucumber setup
  So I don't have to do it myself

  Scenario: App just runs
    When I get help for "comfify"
    Then the exit status should be 0

  Scenario: Link a directory
    Given a file named "foo/.foofiles/file1.txt" with:
      """
      Lorem ipsum dolor
      """
    When I link the "foo" directory with "comfify"
    Then the exit status should be 0
    And the output should contain:
       """
       Linking file .foofiles
       """
