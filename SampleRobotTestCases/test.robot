*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Test Case 1 - Create text file with greeting
    create file  d:\\temp\\test1.txt  Hello, World!

Test Case 2 - Check if file exists
    file should exist  d:\\temp\\test1.txt  msg=File exists

Test Case 3 - Check if file is empty
    file should be empty  d:\\temp\\test1.txt

Test Case 4 - Get contents of a file
    get file  d:\\temp\\test1.txt

Test Case 5 - Check if the file contains the word "HelloW"
    grep file  d:\\temp\\test1.txt  [Hello]

Test Case 6 - Copy file - FAILED! Requires login

    copy file  d:\\temp\\test1.txt  \\\\192.168.246.69\\D$\\content\\

*** Variables ***


*** Keywords ***

