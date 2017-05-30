*** Settings ***
Library         SSHLibrary
Suite Setup     Open Connection and Log In
Suite Teardown  CLose All Connections

*** Test Cases ***
Test Case 1 - Drop a file
    put file  D:\\temp\\test.xml  /mnt/seachange/VodUsage/test/
*** Variables ***


*** Keywords ***
Open Connection and Log In
    Open Connection  192.168.240.35
    Login            seachange  SeaChange
