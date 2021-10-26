*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    functionalcodes.robot
*** Keywords ***
Select City filter
    functionalcodes.click    css=[data-test=city-title]
    functionalcodes.click    css=#__BVID__47___BV_modal_body_>:nth-child(2)>:nth-child(1)>div>div>div>:nth-child(2)
    functionalcodes.click    css=[data-test=close-icon]
Select town filter
    functionalcodes.click    css=[data-test=district-title]
    functionalcodes.click    css=#__BVID__219>div>div>:nth-child(2)>div>:nth-child(3)
    functionalcodes.click    css=#__BVID__219>div>div>:nth-child(1)>div>span[data-test=close-icon]
Select history filter
    functionalcodes.click    css=.custom-control-label[for=__BVID__237]
Click apply button
    functionalcodes.click    css=[data-test=apply-button]
Filtering result and convert
    ${Filterjobs} =    get element attribute    css=.t-6     textContent
    ${FilterjobsNew} =   replace string    ${Filterjobs}    İstanbul Bağcılar İş İlanları     ${EMPTY}
    convert to integer    ${FilterjobsNew}
    set global variable     ${FilterjobsNew}
Delete filters
    functionalcodes.click    css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(5)>i
    functionalcodes.check unavailable       css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(5)>i
    functionalcodes.click    css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(4)>i
    functionalcodes.check unavailable       css=#__layout>div>:nth-child(2)>div>div>:nth-child(2)>:nth-child(2)>div>:nth-child(2)>div>div>:nth-child(4)>i
After delete filters and convert
    ${Deletefilterjob} =    get element attribute    css=.t-6    textContent
    ${DeletefilterjobsNew} =    replace string    ${Deletefilterjob}    İstanbul İş İlanları    ${EMPTY}
    convert to integer    ${DeletefilterjobsNew}
    should be true    ${FilterjobsNew} < ${DeletefilterjobsNew}