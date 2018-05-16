/## @name Sample Group of sample function for document generation

/## @package example

/## @function sampleFunctParamDict A sample function to generate 
/##. an inline table for input parameter dictionary
/##    @param paramDict  Input Parameter Dictionary   
/##    @return

/##    @header Key|Type|Required|Default|Desc
/##    @row    startDate|date|0b|.z.d|Start Date  (if null or not provided, will be set as current date)
/##    @row    endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)


sampleFunctParamDict:{[paramDict]
    show paramDict  /## show input
 }

/## @function sampleFunct2 A sample function to generate an inline table for input parameter dictionary
/##    @param paramDict  Input Parameter Dictionary   
/##    @return

/##    @header Key|Type|Required|Default|Desc
/##    @row    startDate|date|0b|.z.d|Start Date  (if null or not provided, will be set as current date)
/##    @row    endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)


sampleFunct2 :{[paramDict]
    show paramDict  /# show input
 }