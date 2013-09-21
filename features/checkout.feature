Feature: Testing adopter persona

Scenario:  Fills in checkout info
  Given Steve wants to adopt a puppy
  When Steve fills in checkout information
  Then his email is "steve@example.com"

Scenario:  Fills in checkout info for Alicia
  Given Alicia wants to adopt a puppy
  When Alicia fills in checkout information
  Then her email is "alicia@example.com"
