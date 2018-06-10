/# @package lib
/# @name str
/# @desc String helper functions - fc,sfl,zfl,tu,tl,cc,ucc,us (snakecase, startcase, traincase )


\d .str

/# @function stc startcase "an example string" -> "An Example String"
/#   @param string 
stc:{@[x;distinct 0,1+ss[trim x; " "];upper]}
/# @code stc"startcase test"

/# @function sc @desc Snakecase : underscore separated text , but the case is preserverd 
/#   @param string 
/#  @return underscore separated text without any case changes.
sc:{ ssr[x;" ";"_"] }

/# @function tc @desc Traincase : hyphen separated text , but the case is preserverd 
/#   @param string 
/#   @return hyphen separated text without any case changes.
tc:{ ssr[x;" ";"-"] }

/# @function us @desc Camel case to lower case underscore separated 
/#   @param x string in camel case form
/# @return underscore separated text
us:{lower sc ucc sv["";vs[" ";x] except enlist ""]}

/# @function cc @desc To camel case
/#   @param String containing underscores, hyphens or spaces
/# @return Camel case string
cc:{ 
    x:trim ssr[;;" "]/[x;("-";"_")]; //replace hyphens and underscore
    x:?[-1=deltas s:" "=x; upper x;lower x ];  
    x where not[s]
 }

/# @function ucc @desc Uncamelcase - Camel case to space separated text , case is preserved
/#   @param String Camel case string
/# @return Space separated string
ucc:{ trim raze cut[0,where[x=upper[x]] ; x],\:" " }

/# @function fc @desc Swap case
/#    @param String
/# @return String with case swapped
fc:{?[x=lower x;upper x;lower x]}

/# @function sfl @desc Space fill
/#    @param int
/#    @param String
/# @return String left padded with space
sfl:{neg[x]$string y}

/# @function sfr @desc Space fill from right 
/#    @param int
/#    @param String
/# @return String right padded with space
sfr:{x$string y}

/# @function sflb @desc Space fill from left for list of strings 
/#    @param int
/#    @param String
/# @return String left padded with space
sflb:{sfl[max count each string x] each x}

/# @function sfrb @desc Space fill from right for list of strings 
/#    @param int
/#    @param String
/# @return String right padded with space
sfrb:{sfr[max count each string x] each x}


/# @function zfl @desc zero fill
/#    @param int
/#    @param String
/# @return String left padded with zero
zfl:{"0"^neg[x]$string y}

/# @function zfr @desc zero fill from right
/#    @param int
/#    @param String
/# @return String right padded with zero
zfr:{"0"^x$string y}


/# @function strif handle the simple case otherwise flaten it to string
strif:{$[10h=t:type x;x; t=11h;string x;t<0;string x;.Q.s1 x]}
/# @code strif[`test]
/# @code strif[2#`test]
/# @code strif[string `test]
/# @code strif[string 2#`test]