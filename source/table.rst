Table Details
=============
trade
+++++
Stores the Trade details

===========  ======  ===============
Column Name  Type    Desc           
===========  ======  ===============
date         date    Trade Date     
time         time    Trade Time     
sym          symbol  Instrument Id  
price        float   Trade Price    
size         float   Trade Size     
side         symbol  Trade Direction
===========  ======  ===============
tob
+++
Stores the Top of Book prices and sizes

===========  ======  =============
Column Name  Type    Desc         
===========  ======  =============
date         date    Trade Date   
time         time    Trade Time   
sym          symbol  Instrument Id
bid          float   Bid Price    
bid_size     float   Bid Size     
ask          float   Ask Price    
ask_size     float   Ask Size     
===========  ======  =============
