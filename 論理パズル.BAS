REM----論理パズル  (十進BASICを使っています。&から&までは行の継続,  !  以下は注釈文)  
REM 問題  
REM ここに4人兄弟がいます。兄に関しての発言は嘘です。弟に関する発言は真実の場合も
REM 嘘の場合もあり得ます。さて4人の兄弟の順序は?
REM まもる「ひろしは長男ではありません」
REM ひろし「あきらは長男ではありません」
REM あきら「けんは長男ではありません」
REM けん「あきらは四男ではありません」
REM------------------------------------------
REM 答え
REM まもる  二男
REM ひろし  三男
REM あきら  四男
REM けん    長男

REM----------------------------------
FOR   e=1  TO   4!まもるの序列:1--->長男,2--->二男,3--->三男,4--->四男    
   FOR    f=1  TO  4!ひろしの序列:1--->長男,2--->二男,3--->三男,4--->四男    
      FOR    g=1  TO  4!あきらの序列:1--->長男,2--->二男,3--->三男,4--->四男
         FOR   h=1  TO  4!けんの序列:1--->長男,2--->二男,3--->三男,4--->四男
          
            IF  (e<>f AND  e<>g  AND  e<>h  AND  f<>g AND  f<>h  AND  g<>h)  AND  &  !四人の序列はそれぞれ違うこと
&      ((e>f  AND  f=1)  OR ((e<f AND  f<>1)  OR (e<f  AND  f=1)))   AND  &  !まもるの発言
&      ((f>g  AND  g=1)  OR ((f<g AND  g<>1)  OR (f<g  AND  g=1)))  AND   &  !ひろしの発言  
&      ((g>h  AND  h=1)  OR ((g<h  AND  h<>1) OR (g<h  AND  h=1)))  AND   &  !あきらの発言  
&      ((h>g  AND  g=4)  OR ((h<g  AND  g<>4) OR (h<g  AND  g=4)))    &      !けんの発言
&     THEN  PRINT  e;f;g;h   !結果を出力
             
             
             
             
         NEXT H
      NEXT G
   NEXT F
NEXT E
END

 
