Feature: Link contents of a directory to files in your home directory

In order to use files that were cloned from a dotfiles repository
I want to have a copy of files in a source directory in my home directory
So I don't have to have a complicated setup process for a new dev environment

Background: A directory exists
  Given a file named "foo/.foofiles/file1.txt" with:
    """
    Lorem ipsum dolor
    """

Scenario: Link contents of a directory
  When I link the "foo" directory with "comfify"
  Then the exit status should be 0
  And the output should contain "Linking file .foofiles"

Scenario: Prevents accidental overwrite of existing folder
  When I link the "foo" directory with "comfify"
  When I link the "foo" directory with "comfify"
  Then the exit status should be 0
  And the output should contain "destination already exists, skipping"

Scenario: Linked directory exists
  When I link the "foo" directory with "comfify"
  Then a symlink exists for ".foofiles" in my home directory
