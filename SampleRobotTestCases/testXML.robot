*** Settings ***
Library  OperatingSystem
Library  XML


*** Variables ***
${xmlSource}


*** Test Cases ***
Test Case 1 - Check if XML file exists
    file should exist  d:\\temp\\test.xml  msg=File exists

Test Case 2 - Check if XML can be parsed
    ${xmlSource} =  parse xml  d:\\temp\\test.xml

Test Case 3 - Check if SubscriberKey tag exists
    ${xmlSource} =  parse xml  d:\\temp\\test.xml
    ${element} =  get element  ${xmlSource}  xpath=body/AddSubscriber/SubscriberKey

Test Case 4 - Get SubscriberKey and compare SubscriberKey to 8035710000028365
   ${xmlSource} =  parse xml  d:\\temp\\test.xml
    ${elementValue} =  get element text  ${xmlSource}  xpath=body/AddSubscriber/SubscriberKey
    should be equal  ${elementValue}  8035710000028365

Test Case 5 - Set SubscriberKey to 8035710000054321
    ${xmlSource} =  parse xml  d:\\temp\\test.xml
    ${xmlNew} =  set element text  ${xmlSource}  8035710000054321  xpath=body/AddSubscriber/SubscriberKey
    save xml  ${xmlNew}  d:\\temp\\out1.xml

Test Case 6 - Write SiteIdent element to another file
    ${xmlSource} =  parse xml  d:\\temp\\test.xml
    ${element} =  get element  ${xmlSource}  xpath=body/HostIdentifier/SiteIdent
    save xml  ${element}  d:\\temp\\out2.xml

*** Keywords ***

