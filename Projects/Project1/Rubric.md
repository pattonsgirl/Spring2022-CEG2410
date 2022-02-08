# Project 1 Rubric

## Total score: ( / 20)

## Files in repo ( / 3)

- README.md
- script(s)

## README.md contains ( / 4)

- What script does
- Screenshot demos of your script working
- How to run script
- Expected file contents (for add-bulk & remove-bulk)

## Functions implemented ( / 13)

- add-single ( / 5)
  - Prompt user to enter a username
  - Create the user an account on the system with a password
  - Add the user to a group `org`, for example
  - Give the group permissions to the user's home directory
  - Place account details (username and password) in an output file
- remove-single ( / 3)
  - Prompt user to enter a username
  - Delete the user account & home directory
  - Remove the user from group
- add-bulk ( / 3)
  - Prompt the user to enter a filename containing user names
  - For each user in file, creates per guidelines in add-single
  - Place account details (username and password) in an output file
- remove-bulk ( / 2)
  - Prompt the user to enter a filename containing user names
  - For each user in file, removes per guidelines in remove-single
