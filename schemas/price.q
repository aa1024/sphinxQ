trade:([]           /@table trade @desc  Stores the Trade details @header Column Name|Type|Desc
 date:`date$();     /@row date|date|Trade Date
 time:`time$();     /@row time|time|Trade Time
 sym:`g#`$();       /@row sym|symbol|Instrument Id
 price:`float$();   /@row price|float|Trade Price
 size:`float$();    /@row size|float|Trade Size
 side:`$()          /@row side|symbol|Trade Direction
 )
 
tob:([]                 /@table tob @desc  Stores the Top of Book prices and sizes @header Column Name|Type|Desc
 date:`date$();         /@row date|date|Trade Date
 time:`time$();         /@row time|time|Trade Time
 sym:`g#`$();           /@row sym|symbol|Instrument Id
 bid:`float$();         /@row bid|float|Bid Price
 bid_size:`float$();    /@row bid_size|float|Bid Size
 ask:`float$();         /@row ask|float|Ask Price
 ask_size:`float$();    /@row ask_size|float|Ask Size
 )
 