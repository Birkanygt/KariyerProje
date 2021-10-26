*** Settings ***
Library    SeleniumLibrary
Resource    functionalcodes.robot
*** Keywords ***
Delete all filters
    functionalcodes.click    css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>h3>a
Verify delete all fiters
    functionalcodes.check unavailable     css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(5)>i
    functionalcodes.check unavailable     css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(4)>i
    functionalcodes.check unavailable     css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(3)>i
    functionalcodes.check unavailable     css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(2)>i
    functionalcodes.check unavailable     css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(1)>i
After delete filters and convert
    ${AllDeletefilterjob} =    get element attribute    css=.t-6    textContent
    ${AllDeletefilterjobsNew} =    replace string    ${AllDeletefilterjob}    İş İlanları    ${EMPTY}
    convert to integer    ${AllDeletefilterjobsNew}
    should be true    ${FilterjobsNew} < ${AllDeletefilterjobsNew}