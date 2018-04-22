/@package sample
/@packageDesc Group of sample function for document generation

/@function sampleFunctParamDict
/@functionDesc A sample function to generate a inline table for input parameter dictionary
/   @param paramDict  
/   @paramDesc Input Parameter Dictionary   
/   @header Key|Type|Required|Default|Desc
/   @row    startDate|date|0b|.z.d|Start Date  (if null of not provided, will be set as current date)
/   @row    endDate|date|0b|startDate|End Date (if null or not provided, will be set as start date)
/@returns  
sampleFunctParamDict:{[paramDict]
    show paramDict
 }