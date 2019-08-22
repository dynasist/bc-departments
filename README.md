# Departments Menu for Business Central

*Note: This app is intended mainly for internal training purposes, covering many aspects and technics of AL development.*

Departments menu was a feature of Windows Client (RTC) that is unavailable on the Web Client, now Modern Client. This app's aim is to replicate a similar functionality using AL and JavaScript components.

**Find more details in a related [LinkedIn article](in_progress).**

![](./media/li_old_dept.jpg)

## Features

* **Import MenuSuite Objects:** import MenuSuite object txt files into the database
* **Manual Menu Structure:** create/update menu entries
* **Department View:** display treeview menu hierarchy and load pages/reports upon selection

## Screenshots

### Department View: Search (ALT+Q) -> Departments

![](https://raw.githubusercontent.com/dynasist/bc-departments/master/media/li_cover.jpg)

### Department Suites

![](https://raw.githubusercontent.com/dynasist/bc-departments/master/media/li_deptsuites.JPG)

### Department Menu Items

![](https://raw.githubusercontent.com/dynasist/bc-departments/master/media/li_deptitems.JPG)

## Installation

Download and build the project by yourself or use company-signed, cloud-compatible packages in [SignedPackages](https://github.com/dynasist/bc-departments/tree/master/SignedPackages) folder.

## Usage

1. Get MenuSuite objects in txt format using C/Side or PowerShell
2. Open Department Suites page (Search (ALT+Q) -> Department Suites)
3. Choose "Import File" action to upload object txts
4. Upon completition Department Suite records should have been created
5. Open Departmens page (Search (ALT+Q) -> Departments)