!RESOURCE "2004.csv"

#Z9999

#LABEL_3
OPERATOR POP
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
CALL GetTimer
OPERATOR MOV
OPERATOR POP
STATEMENT IF _ #LABEL_1
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
ARRAY_G 1
OPERATOR GT
CALL GetSkip
OPERATOR OR
CALL GetClick
OPERATOR OR
STATEMENT JMP_IF
OPERATOR POP
STATEMENT GOTO #LABEL_2
OPERATOR POP

#LABEL_1
CALL runEX
OPERATOR POP

STATEMENT GOTO #LABEL_3
OPERATOR POP

#LABEL_2
STATEMENT HALT
STATEMENT NOP

#Z9997
OPERATOR POP
PUSH INT 0
ARRAY_S RES<0001>  ; B990000.tga
PUSH INT 15
PUSH INT 2
ARRAY_S RES<0002>
PUSH INT 256
ARRAY_S RES<0003>  ; bak
PUSH INT 0
CALL LoadBmp
OPERATOR POP

PUSH INT 0
PUSH INT 1
PUSH INT 0
PUSH INT 0
CALL SetBmpParam
OPERATOR POP

STATEMENT HALT
STATEMENT NOP

#Z9996
OPERATOR POP
PUSH INT 0
CALL ReleaseBmp
OPERATOR POP

STATEMENT HALT
STATEMENT NOP

#Z9995
OPERATOR POP
CALL StartTimer
OPERATOR POP

#LABEL_7
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
CALL GetTimer
OPERATOR MOV
OPERATOR POP
STATEMENT IF _ #LABEL_4
CALL GetSkip
STATEMENT JMP_IF
OPERATOR POP
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
ARRAY_G 3
OPERATOR MOV
OPERATOR POP

#LABEL_4
STATEMENT IF _ #LABEL_5
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
ARRAY_G 3
OPERATOR GEQ
STATEMENT JMP_IF
OPERATOR POP
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SetBmpParam
OPERATOR POP

STATEMENT GOTO #LABEL_6
OPERATOR POP

#LABEL_5
ARRAY_L 9
PUSH INT 0
OPERATOR INDEX
PUSH INT 255
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
OPERATOR MUL
ARRAY_G 3
OPERATOR DIV
OPERATOR MOV
OPERATOR POP
PUSH INT 0
PUSH INT 1
ARRAY_L 9
PUSH INT 0
OPERATOR INDEX
PUSH INT 0
CALL SetBmpParam
OPERATOR POP

CALL runEX
OPERATOR POP

STATEMENT GOTO #LABEL_7
OPERATOR POP

#LABEL_6
STATEMENT HALT
STATEMENT NOP

#Z9994
OPERATOR POP
CALL StartTimer
OPERATOR POP

#LABEL_11
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
CALL GetTimer
OPERATOR MOV
OPERATOR POP
STATEMENT IF _ #LABEL_8
CALL GetSkip
STATEMENT JMP_IF
OPERATOR POP
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
ARRAY_G 2
OPERATOR MOV
OPERATOR POP

#LABEL_8
STATEMENT IF _ #LABEL_9
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
ARRAY_G 2
OPERATOR GEQ
STATEMENT JMP_IF
OPERATOR POP
PUSH INT 0
PUSH INT 1
PUSH INT 0
PUSH INT 0
CALL SetBmpParam
OPERATOR POP

STATEMENT GOTO #LABEL_10
OPERATOR POP

#LABEL_9
ARRAY_L 9
PUSH INT 0
OPERATOR INDEX
PUSH INT 255
PUSH INT 255
ARRAY_L 8
PUSH INT 0
OPERATOR INDEX
OPERATOR MUL
ARRAY_G 2
OPERATOR DIV
OPERATOR SUB
OPERATOR MOV
OPERATOR POP
PUSH INT 0
PUSH INT 1
ARRAY_L 9
PUSH INT 0
OPERATOR INDEX
PUSH INT 0
CALL SetBmpParam
OPERATOR POP

CALL runEX
OPERATOR POP

STATEMENT GOTO #LABEL_11
OPERATOR POP

#LABEL_10
STATEMENT HALT
STATEMENT NOP

#Z9993
OPERATOR POP
PUSH INT 9995
CALL call
OPERATOR POP

PUSH INT 9994
CALL call
OPERATOR POP

STATEMENT HALT
STATEMENT NOP

#Z00
OPERATOR POP
CALL run
OPERATOR POP

PUSH INT 0
PUSH INT 2004
CALL VI
OPERATOR POP

PUSH INT 0
CALL MS
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
PUSH INT 0
PUSH INT 0
PUSH INT 30
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

STATEMENT IF _ #LABEL_12
PUSH INT 0
STATEMENT JMP_IF
OPERATOR POP

#LABEL_12
PUSH INT 2010
PUSH INT 12
PUSH INT 3
PUSH INT -1
PUSH INT 1
CALL Calender
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

PUSH INT 0
PUSH INT 8260
PUSH INT 30
PUSH INT 1
PUSH INT 60
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2027
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL WN(RES<0004>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 0
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0005>, 0, 1)  ; 「え…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0006>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 1
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 1, 1)  ; 「だから今週発売の開桜グラフ。\n北原にも手伝ってもらったでしょ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 2, 1)  ; そして二日後。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0009>, 3, 1)  ; 俺たちだけの…\n本当に内輪だけの話題だったはずの、\n一つの小さな記事は。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0010>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 2
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0011>, 4, 1)  ; 「このぺージのコがかなり反響大きくてね。\n隔月刊の音楽誌の方で記事作ることになったのよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 6
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0012>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 3
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 5, 1)  ; 「あ～、こりゃ反響あるわ～。\n一発で目惹くもんな」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 7
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0014>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 4
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 6, 1)  ; 「綺麗～…\nツヤツヤの黒髪ロングに、黒いドレスのハマってること。\nこれで二十歳そこそこってやんなるなぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 30
PUSH INT 2
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0016>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 5
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0017>, 7, 1)  ; 「それだけじゃないぞ。話題性も抜群だ。\nこりゃ、クラシック界で久々に来たかなぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0018>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 6
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 8, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0020>, 9, 1)  ; いつの間にか、対象者の結構な話題性のせいで、\nその輪っかを微妙に外れつつあるようだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0021>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 7
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 10, 1)  ; 「『アンサンブル』の編集長がこのコの母親…\n冬馬曜子と親しいらしくて、\nあっさり取材許可も下りたみたい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0023>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 8
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 11, 1)  ; 「冬馬曜子って…\n俺、子供の頃テレビで見たことありますよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 32
PUSH INT 5
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0025>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 9
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0026>, 12, 1)  ; 「一時は日本を代表するピアニストだったからな。\nま、今はずっとヨーロッパで活動してるから、\n国内じゃ昔ほど有名じゃないけど」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 30
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0027>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 10
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0028>, 13, 1)  ; 「けど、国際的な評価は昔とは比べものにならないぞ。\n今や、どこの国でもチケットが売れる数少ない日本人だ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0029>, 14, 1)  ; 三年前、俺を家に上げ、砂糖水をご馳走してくれ、\n学園祭の話で盛り上がったあの結構気さくなご婦人は…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 15, 1)  ; やっぱりこうして一般的な話題の端に上ると、\nかなり普通じゃない評価をされるみたいだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 33
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0031>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 11
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0032>, 16, 1)  ; 「その娘が国際コンクールで入賞。\nしかもこのビジュアルとあっちゃ、\nそりゃ、周りが放っておきませんよね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0033>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 12
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0034>, 17, 1)  ; 「そう…なんですか？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0035>, 18, 1)  ; 何言ってんだろうこの人たち…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0036>, 19, 1)  ; どうして、この記事だけで、\nかずさのこと、そんなに持ち上げるんだ？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0037>, 20, 1)  ; ちょっと海外で結果を出した留学生なだけで、\nちょっと親が有名人なだけで…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0038>, 21, 1)  ; ちょっと………いい女なだけなのに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 7
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0039>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 13
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 22, 1)  ; 「あっちの雑誌、本来なら編プロにグロスで\n発注してるんだけど、今回のは急遽決まった企画だし、\n元ネタ拾ってきたのが私だし…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0041>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 14
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0042>, 23, 1)  ; 「要するに、\nまた他の編集部の仕事を引き受けてきた、と」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 2
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0043>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 15
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0044>, 24, 1)  ; 「ほんっと北原君のこと叱れないですよね～。\n上司が編集部またぎのプロなんだもん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0045>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 16
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 25, 1)  ; 「ちゃんと両編集長には許可もらってる。\nそれに隔月刊の締め切りなんて余裕だし」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 10
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0047>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 17
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 26, 1)  ; 「そう言って地獄を見…るけど、\nそれでもなんとかするのがコイツなんだよなぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0049>, 27, 1)  ; なんで、こんなことに…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0050>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 18
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 28, 1)  ; 「そんな訳で北原…\nあんたには引き続きこっちの記事を担当してもらう」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0052>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 19
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0053>, 29, 1)  ; 「え…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0054>, 30, 1)  ; そんな麻理さんの言葉は、\nまったく逆方向からの二つの衝撃を、\n俺にもたらした。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 7
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0055>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 20
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0056>, 31, 1)  ; 「た、担当してもらうって、だって…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 32
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0057>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 21
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0058>, 32, 1)  ; 「バイトだぞ、北原…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0059>, 33, 1)  ; 『記事を担当してもらう』ってことは、\n要するに取材も執筆も…ってことで、多分。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0060>, 34, 1)  ; それは今までの、コピー取ったり、買い出し行ってきたり、\n出前取ったり、原稿取りに行ったり、レイアウト組んだり、\n校正したり、印刷所に頭下げたりとは…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0061>, 35, 1)  ; …後半は既にバイトの範囲を逸脱してるかもしれないけど、\nそれでもそれらの仕事とはまるで一線を画す、\n本物の『本作り』の仕事。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0062>, 36, 1)  ; まさか学生バイト風情で、\nこんなチャンスが回ってくるなんて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0063>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 22
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0064>, 37, 1)  ; 「異論は？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0065>, 38, 1)  ; けど…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0066>, 39, 1)  ; この仕事を引き受けるってことは、\nつまり、取材対象に深入りするってこと。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 40, 1)  ; 経歴を調べ、関係者の話を聞き、\nあいつが生きてきた足跡を辿るっていうこと。
PUSH INT 1
CALL EndMessage
OPERATOR POP

CALL IfSkip
OPERATOR POP

@VCALL SetMessageE(RES<0068>, 41, 1)  ; 俺に、そんなことできるのか？\nもう一度、あいつの記憶を掘り起こすなんて。
PUSH INT 1
CALL EndMessage
OPERATOR POP

ARRAY_S RES<0069>  ; １．辞退する
PUSH INT 99
PUSH INT 0
PUSH INT 0
CALL SetSelectMess
OPERATOR POP

ARRAY_S RES<0070>  ; ２．引き受ける
PUSH INT 99
PUSH INT 0
PUSH INT 0
CALL SetSelectMess
OPERATOR POP

ARRAY_L 0
PUSH INT 0
OPERATOR INDEX
PUSH INT 0
CALL SetSelect
PUSH INT 1
OPERATOR ADD
OPERATOR MOV
OPERATOR POP
STATEMENT IF #LABEL_13 #LABEL_14
ARRAY_L 0
PUSH INT 0
OPERATOR INDEX
PUSH INT 1
OPERATOR EQ
STATEMENT JMP_IF
OPERATOR POP
@VCALL WN(RES<0071>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 23
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0072>, 42, 1)  ; 「…俺には荷が重いんじゃないかと思います。\nどなたか編集部の方に担当してもらった方が」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 11
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0073>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 24
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0074>, 43, 1)  ; 「え…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0075>, 44, 1)  ; 俺の意見を聞いておきながら、\n麻理さんは、俺の答えに少しだけうろたえたみたいだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0076>, 45, 1)  ; それは、人に仕事を振りまくっておきながら、\n人のことを働きすぎだと糾弾したりする、\nそんな矛盾を抱えたこの人らしい反応だったけど…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0077>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 25
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0078>, 46, 1)  ; 「もしかして、今の自分にその能力がないと思ってる？\nそれはちょっと過小評価だと思うけどな」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0079>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 26
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0080>, 47, 1)  ; 「…そんなの、買いかぶりすぎですよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0081>, 48, 1)  ; 今の俺には、その肩入れが心苦しい。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0082>, 49, 1)  ; それも、麻理さんの思惑とはまったく関係ない部分で\nそう感じてしまうのが、さらに辛い。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0083>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 27
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0084>, 50, 1)  ; 「だって、あんた書きたかったんじゃないの？\n出版狙ってるから経験積みたいって言ってたわよね？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0085>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 28
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0086>, 51, 1)  ; 「それは…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0087>, 52, 1)  ; 確かに言った。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0088>, 53, 1)  ; 言っただけでなく、言葉以外でもアピールしてきた。\n『俺にもっと大きな仕事をよこせ』って。\n『何もかも忘れられるくらい働かせろ』って。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0089>, 54, 1)  ; けど、何もかも忘れるためのに選んだ仕事で、\n皮肉にも、自分がもっとも忘れたかったことを\n思い出さなくちゃならないとしたら…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 7
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0090>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 29
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0091>, 55, 1)  ; 「これじゃ私、なんのために無理やり外注から仕事奪って\n………あ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0092>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 30
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0093>, 56, 1)  ; 「麻理さん…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0094>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 31
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0095>, 57, 1)  ; 「あんた、何してきたんすか…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 3
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0096>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 32
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0097>, 58, 1)  ; 「どれだけ北原君のこと買ってんですか麻理さん…\n社員にだってそんなに目かけたことないのに。\n松っちゃんがいい例」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 10
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0098>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 33
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0099>, 59, 1)  ; 「なんで俺に振るんだよ！？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0100>, 60, 1)  ; 人には余計な仕事を請けるなと忠告しておきながら、\n自分は俺のために新しい仕事を発掘しまくってくる…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 16
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0101>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 34
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0102>, 61, 1)  ; 「そっか…\n私の先走りだったか。\nなんだか逆に悪いことしたね、北原」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0103>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 35
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0104>, 62, 1)  ; 「麻理さん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0105>, 63, 1)  ; それもやっぱり、なんというか、\n微笑ましい矛盾を抱えた、この人らしい動き方だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 7
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0106>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 36
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0107>, 64, 1)  ; 「さてと、どうするかな…\n北原以外、想定してなかったんだけど…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 6
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0108>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 37
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0109>, 65, 1)  ; 「お、俺やります麻理さん！\n鈴木にそこまで言われて黙ってられますか！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 10
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0110>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 38
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0111>, 66, 1)  ; 「松岡は浜田の下じゃない。\n上司が貸してくれるってんならいいけど…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 30
PUSH INT 7
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0112>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 39
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0113>, 67, 1)  ; 「ふざけるな。寝言こいてる暇があったら\nさっさと俺が振ったテープ起こし終わらせろ。\n北原に頼んだ分はもう上がったぞ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 5
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0114>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 40
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0115>, 68, 1)  ; 「北原に頼んだ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 3
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0116>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 41
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0117>, 69, 1)  ; 「あ、いや…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 8
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0118>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 42
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0119>, 70, 1)  ; 「嘘ぉ！？\nあれ昨日回ってきたばっかじゃ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0120>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 43
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0121>, 71, 1)  ; 「北原君、今朝わたしが出社してきたとき、\n今から大学行くって退社してったんだよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0122>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 44
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0123>, 72, 1)  ; 「今朝…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 32
PUSH INT 6
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0124>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 45
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0125>, 73, 1)  ; 「お前、完全にバイトに追い抜かれてるな…\n勤務態度も、成果も、信頼も」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 10
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0126>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 46
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0127>, 74, 1)  ; 「いや、北原と比較して欲しくないですよ。\nこいつは大学三年生でしょ？\n俺まだ二年生ですから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 30
PUSH INT 9
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0128>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 47
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0129>, 75, 1)  ; 「大卒二年目を二年生って言うんならな…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 11
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0130>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 48
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0131>, 76, 1)  ; 「なんてプライドのない社会人…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 5
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0132>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 49
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0133>, 77, 1)  ; 「ちょっと北原…\n朝帰りって何よ？\n私聞いてないわよ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0134>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 50
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0135>, 78, 1)  ; 「すいません麻理さん。\nさっきの発言、撤回します」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 4
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0136>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 51
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0137>, 79, 1)  ; 「そんな話はあと！\nあんた昨日一体何時まで残って…え？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0138>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 52
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0139>, 80, 1)  ; 「俺にやらせてください。\n…冬馬かずさの特集記事」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0140>, 81, 1)  ; だったら俺は…\nここで退く訳にはいかない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

CALL IfSkip
OPERATOR POP

@VCALL SetMessageE(RES<0141>, 82, 1)  ; まだ、俺に信頼を寄せてくれる人がいるなら、\nもう、裏切りたくはないから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

#LABEL_13
STATEMENT ELSE
ARRAY_G 10
PUSH INT 1
OPERATOR ADD8
OPERATOR POP
@VCALL WN(RES<0142>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 53
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0143>, 83, 1)  ; 「やります。\n是非やらせてください」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0144>, 84, 1)  ; それでも俺は、やっぱり前に進む道を選ぶしかない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0145>, 85, 1)  ; たとえ、目的を達成するための手段が、\n逆に目的を阻害することになったとしても、\n今の俺にとって、この手段は将来へと繋がる道標だから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0146>, 86, 1)  ; …きっと。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0147>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 54
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0148>, 87, 1)  ; 「それじゃ、早速向こうの編集長のところに行くわよ。\nついてきなさい、北原」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 10
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0149>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 55
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0150>, 88, 1)  ; 「って、ちょっと待ってくださいよ麻理さん！\n俺だってそういう仕事やりたいですよ。\nここにいると浜田さんのパシリばっかなんだもん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 30
PUSH INT 10
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0151>)  ; 浜田
PUSH INT 30
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 56
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0152>, 89, 1)  ; 「そりゃ、パシリの腕の差だろ。\n北原は買い出し行って一時間帰ってこないなんてこと\n一度もなかったぞ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 8
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0153>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 57
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0154>, 90, 1)  ; 「え？　あ、いや…\n頼まれたコーヒーが実は千葉と埼玉限定で…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 32
PUSH INT 6
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0155>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 58
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0156>, 91, 1)  ; 「そっか、じゃあ俺が何度も見かけた\nコンビニで立ち読み中のお前は幻覚だったんだ。\n何しろ千葉まで遠征してるんじゃなぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 5
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0157>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 59
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0158>, 92, 1)  ; 「あ～！\n木崎さん裏切り者っ！？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 11
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0159>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 60
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0160>, 93, 1)  ; 「そういう地道な積み重ねが\n肝心なところで効いてくるんだよねぇ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 6
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0161>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 61
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0162>, 94, 1)  ; 「ま、それもあるけど…\n実は北原に任せる理由はもう一つあるの」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 32
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0163>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 62
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0164>, 95, 1)  ; 「もう一つって？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 32
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 31
PUSH INT 5
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0165>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 63
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0166>, 96, 1)  ; 「それもあるんだ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0167>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 64
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0168>, 97, 1)  ; 「北原は薄々気づいてるんじゃないかと思うけど…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0169>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 65
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0170>, 98, 1)  ; 「ええ、ま…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0171>, 99, 1)  ; もちろん、気づいてた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0172>, 100, 1)  ; 麻理さんは、その程度のアドバンテージで、\n俺にこんな美味しい仕事を回すはずがない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0173>, 101, 1)  ; 俺に回す旨みがあるってわかってるから…\nつまり、そこまでちゃんと下調べが済んでいるからこそ、\n俺を指名したんだって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 5
PUSH INT 1
PUSH INT 2000
OPERATOR ADD
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0174>)  ; 麻理
PUSH INT 5
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 66
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0175>, 102, 1)  ; 「というわけで、\nまずは彼女が日本にいたときに通ってた学校から…\nって、後はわかってるわよね？　北原」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0176>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 67
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0177>, 103, 1)  ; 「ええ、わかってます。\n先生方には一応信用あった方なんで、\n多分、許可は下りると思います」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0178>, 104, 1)  ; 取材対象…冬馬かずさ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0179>, 105, 1)  ; トラスティ国際コンクールピアノ部門２位。\n母親は世界的ピアニストの冬馬曜子。\n三年前より母子でウィーン在住。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0180>, 106, 1)  ; そして、留学前の学歴は…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0181>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 68
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0182>, 107, 1)  ; 「俺の同級生だったんですよ、彼女」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 33
PUSH INT 9
PUSH INT 2000
OPERATOR ADD
PUSH INT 4
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0183>)  ; 鈴木
PUSH INT 33
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 69
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0184>, 108, 1)  ; 「あ～…そういうこと」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 3
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0185>)  ; 松岡
PUSH INT 31
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 70
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0186>, 109, 1)  ; 「…どういうこと？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 31
PUSH INT 0
PUSH INT 15
CALL CR
OPERATOR POP

PUSH INT 32
PUSH INT 6
PUSH INT 2000
OPERATOR ADD
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 15
PUSH INT 256
PUSH INT 128
CALL C
OPERATOR POP

@VCALL WN(RES<0187>)  ; 木崎
PUSH INT 32
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 71
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0188>, 110, 1)  ; 「やっぱお前に任せるわけにはいかないって、\n今の反応でわかったってことだよ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0189>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 72
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0190>, 111, 1)  ; 「ま…在学中はほとんど話したことないですけどね。\n彼女、音楽科の主席だったんで」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0191>, 112, 1)  ; 最後の最後についた小さな嘘は…\n俺の、たった一つだけまとった、心の鎧だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

#LABEL_14
PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

ARRAY_S RES<0192>  ; CATCH2
PUSH INT 100
CALL SCall
OPERATOR POP

ARRAY_S RES<0193>  ; 2005
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
