Feature: Verify daily tasks that I do.
Background:
  Given I wake up to 09:00
  And I take a cold shower
  And I have breakfast
  And I got to the office

Scenario: Review the task in the office.
  Given I review the Jenkin Reports for API
  When I planned the day according to pending task:
  | task	   | status		    | time	|
  | TC-601   | in progress	| 4		  |
  | TC-602	 | pending		  | 5		  |
  And I finished the TC-601 task
  And I started the TC-602 task
  Then My board was changed to:
  | task	   | status		    | time	|
  | TC-601   | done			    | 4		  |
  | TC-602	 | in progress	| 6		  |
