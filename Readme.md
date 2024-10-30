Project By SHS: Kenenth Iwuchukwu & Kunal Jeshang (2021) & Gia Phu "Edward" Tran (2024)

Disclaimer:
All the names and phone numbers used here are random ones. None of the names and phone numbers reflect real employees and their phone numbers.


# Website demo:
## Shift table
This is the shift table where only a few specific "field Tech" people in the department announce their working place and time
![shift table](demo%20pics/1.png)

## Contact table
Contact table where Manager contact and General contact information is available. User can add or delete the general contact as needed.
![contact table](demo%20pics/2.png)

![contact table](demo%20pics/3.png)
![adding a contact in contact table](demo%20pics/4.png)
![contact added in contact table](demo%20pics/5.png)
![deleting a contact in contact table](demo%20pics/6.png)

## Person table
This is the person table where all the employees' information is stored. User can add, delete or update the status of each employee. They can change the number of employees displayed in the table, and search for specific employees in the search bar.
![person table](demo%20pics/7.png)
![searching a person in the person table](demo%20pics/9.png)
![adding new employee in the person table](demo%20pics/11.1.png)
![a new "field Tech" added and can now be assigned in the shift table](demo%20pics/13.png)
![new employee assigned and comment synced](demo%20pics/14.png)	
![deleting an employee in the person table](demo%20pics/15.png)
![employee deleted](demo%20pics/16.png)
10/09/2021 (v1)
- used source designed by James Dai-Dung Nguyen
- added missing features
- miscellaneous bug fixes 

13/09/2021 (v2-2.4)
- new codebase rewrite, design and implementation
- fixed styling for rewrite
- miscellaneous bugfixes

15/09/2021 (v2.5)
- fixed dynamic linking
- updated bootstrap and datatables dependcies to latest
- added correct options for teams dropdown select box
- added spacing between "add employee" button and employee table
- added page titles for easier recognition for "add employee" & "edit employee" pages
- added styling for "add employee" & "edit employee" page forms

19/09/2021 (v2.6)
- moved delete button from main table to edit employee record
- added confirm dialog for delete action
- hid ID table header and records from table

22 - 25/09/2021 (v2.7 - 2.9)
- added ajax for update comments/status
- changed db structure (added new table to hold service contact details),
 (removed category column)
- added new table to hold Field Tech shifts
- added general and manager contact tables
- added field tech table
- added ajax for field tech and general tables
- miscellaneous bugfixes

29/09/2021 (v3)
- merge sources from 2.6 - 2.9
- miscellaneous bugfixes
- added javascript for time and date in header
- testing

01/10/2021 (v3.1)(Rebase to v1 in future updates)
- created new folder called form to hold pop-up HTML code
- imported pop-ups into "index.php" using include functionality of PHP for to create a more easily readable HTML code
- adjusted "db-action_person.php" to display but NOT change the name on update 
- adjusted "interact.js" to intuitively disable name (from person table) and shiftName (from shift table) on update
=> Potential Future changes
    - change icon for Edit column to "fa fa-address"
    - change icon for Update column to "fa fa-edit"
    - change the color of "Show Contacts" button to a color other than blue and green to differentiate it from other buttons on the page

-TODO
	- add documentation that instructs on set up and use
	- minimize codebase

07/10/2021 (v3.2)
- Bugfixes

10/10/2021 (3.3)
- added default shift name place holders
- updated sql default data import
- hid add shift button
- hid delete shift option
- added blank entry for field tech as per Service Desk's Suggestion
- fixed logo placement
- set fixed width for all cells with wrap option on comment field
- make all table contents responsive with focus on cell number
- added fix to make cell number show on one line as chromium based browsers are ignoring some css rules
- changed comment box type to textarea
- fixed main table responsiveness (note), due to amount of content table width
  stops resizing after 50% but content maintains display
- added WFH as a status option
- merged interact_contact.js with interact.js
- added dialog close functions to close dialogs if another is opened


11/10/2021 (3.3)
- bugfixes
- add no wrap to table elements on all tables
- add format requirement/validation to add/edit pages
- change the default amount of entries on the employee table to 100

-TODO 
	- optimize for mobile devices(redesign for mobile?)
	- switch table dependency to mobile friendly dependency?
===================(loaded by default via sql import)
Field Tech Positions:

	NW Primary Field Tech
	NW Backup Field Tech
	NW Night Field Tech

	COQ Primary Field Tech
	COQ Backup Field Tech
	COQ Night Field Tech

9/11/2021 (3.3.1)
- Added new option to choice of teams
- Tables save the sorting state

14/11/2021 (3.3.4)
- Merge pervious sources
- bugfixes
- add return to top button
- disable unused code
- tweaked table interaction with db to account for multi team select

19/11/2021 (3.3.5)
- Merge pervious sources
- bugfixes
- increased character limit on team column to fix multiteam select issue
- fixed iframe.html, now shows content as intended
08/26/2024 (4.0.0)
- Added comment and cell section on shift table, sync with person table
- Cleaned up some possible confusion in logic 
- Changed tag <nobr> to <span style="white-space: no-wrap;"> since <nobr> is deprecated and soon to be no longer supported 

09/26/2024 (4.0.1)
- Added the row "TTG Technicians" and "Anvil Primary Field Tech" in the shift table, changes are made in db-fetch_shift.php
10/03/2024 (4.0.2)
- Sorted the shifts by shiftID,now the order is NW-->COQ-->Anvil--->TTG

Known Bugs:

- X icon not being displayed on pop up dialogs, this is due to a CSS specificity issue, that exists in Jquery 3.6.0

-TODO 
	- fix styling issues when loaded on chrome web browsers
	- add media query to account for mobile device users
	- make manager names clickable, that scrolls to the their data on the main table
