trade:([]           /@schema trade @desc  Stores the Trade details @header Column Name|Type|Desc
 date:`date$();     /@row date|date|Trade Date
 time:`time$();     /@row time|time|Trade Time
 sym:`g#`$();       /@row sym|symbol|Instrument Id
 price:`float$();   /@row price|float|Trade Price
 size:`float$();    /@row size|float|Trade Size
 side:`$()          /@row side|symbol|Trade Direction
 )
 
