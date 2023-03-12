!RESOURCE "3015.csv"

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
PUSH INT 3015
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
STATEMENT SWITCH case 16: #LABEL_13, default: #LABEL_14
CALL GetReplayMode
STATEMENT JMP_SWITCH
OPERATOR POP
STATEMENT CASE

#LABEL_13
OPERATOR POP
STATEMENT GOTO #LABEL_15
OPERATOR POP
STATEMENT BREAK
OPERATOR POP

#LABEL_14
ARRAY_S RES<0004>  ; 3014_2
PUSH INT 0
CALL SCall
OPERATOR POP

PUSH INT 0
PUSH INT 3015
CALL VI
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1908
PUSH INT 0
PUSH INT 0
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait

#LABEL_15
OPERATOR POP

PUSH INT 1
PUSH INT 0
CALL EroMode
OPERATOR POP

PUSH INT 1
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

PUSH INT 47
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL WN(RES<0005>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 0
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 0, 1)  ; 「雪菜…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0007>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 1
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 1, 1)  ; 「春希く…んぅぅっ…ん、んぷ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0009>, 2, 1)  ; ホテルのエレベーターに乗り、\n二人以外に誰も乗っていないのを確かめた瞬間、\n俺たちはもう我慢できずに唇を深く吸い合っていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0010>, 3, 1)  ; 俺の指は、階数ボタンを押すより先に\n雪菜のスーツの中に手を入れ胸をまさぐり、\n降りる時には既にシャツのボタンを外してしまっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0011>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 2
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0012>, 4, 1)  ; 「雪菜、雪菜…は、ぁぁ、んぅぅ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0013>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 3
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0014>, 5, 1)  ; 「は、あむ、むぅぅ…ちゅ、ん、んぷっ…\nちゅぅぅ…は、あ、あぁ…ん、くぅ、ぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 6, 1)  ; 部屋の扉に鍵を差し込む手が震えてて、\n何度も何度も、扉を開けるのに失敗した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 7, 1)  ; その間、雪菜はドアの前に立ち塞がり、\n俺の胸にしがみつき、唇に何度も自分を重ね、\n鍵穴を探す俺の視界を塞いでた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0017>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 4
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0018>, 8, 1)  ; 「んぅぅぅ…は、あんっ、ん、ちゅ、んぷぁ…\nは、はぁ、はぁぁ…あ、んむ、ん、ん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 9, 1)  ; やっと扉が開き、二人で部屋へなだれ込むと、\n俺たちはもう、何にも遠慮することなく、\n激しく重なり合った。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0020>, 10, 1)  ; 誰の目も、誰の心も、誰の存在も…\n何もかも、意識の外に追いやって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0021>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 5
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 11, 1)  ; 「はぁ、はぁ、あ…ぁぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0023>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 6
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 12, 1)  ; 「春希くん、春希く…んぅぅっ、\nはぁ、あ、あ、あ…あああんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1902
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 150
PUSH INT 60
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 100
OPERATOR NEGATE
PUSH INT 60
PUSH INT 3500
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0025>, 13, 1)  ; 右手で雪菜に激しい愛撫をしながら、\n左手で、やっとのことで電気のスイッチを探り当てる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0026>, 14, 1)  ; 薄暗いホテルのライトの下に、\nスーツのボタンもシャツのボタンも全部外された\nあられもない雪菜が浮かび上がる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0027>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 7
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0028>, 15, 1)  ; 「はぁ、はぁ、はぁっ…\nや、だ…春希くん…\n獣、みたいな目」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0029>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 8
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 16, 1)  ; 「雪菜…だって」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0031>, 17, 1)  ; ぽかんと開かれた口の周りは唾液が溢れ、\n人のことは言えない、とてもいやらしい表情をしてる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0032>, 18, 1)  ; 俺のことを、とてもいやらしくしてしまう表情を…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0033>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 9
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0034>, 19, 1)  ; 「んっ…ん、んぷ…くぅ…っ、\nあ、あ、あ…やぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 0
PUSH INT 23
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0035>, 20, 1)  ; その、まるで誘っているかのような潤んだ瞳と唇に、\n俺はもう、はちきれそうなほど欲情して…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0036>, 21, 1)  ; 雪菜の背中を抱きかかえ、\nそのまま、部屋のドアに押しつける。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0037>, 22, 1)  ; ベッドまでの、たった数メートルの距離すら\n今の俺にはもどかしかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20650
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0038>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 10
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0039>, 23, 1)  ; 「あ、あ、あっ…\nい、いぅっ、は、春希くん…ちょっと、待っ…ぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 24, 1)  ; そうして、強くドアに押しつけたまま、\n背中から抱きしめ強くのしかかり、\n二度と離れないよう全身を密着させる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0041>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 11
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0042>, 25, 1)  ; 「あ、んっ…ん、くぅ…\nああ、あぁぁ…わ、たし…ひぅっ、う、ん…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0043>, 26, 1)  ; 服どころか、靴を脱ぐ余裕すら与えずに…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0044>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 12
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0045>, 27, 1)  ; 「はぁ、は、あぁぁ…すぅぅ…んっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 28, 1)  ; 強く抱きしめ、胸を両手で鷲掴みにして、\n大きく息を吸い込みながら、髪の中に顔を埋める。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0047>, 29, 1)  ; …いつもなら一週間で手に入れることができていた、\n優しく、温かく、胸を満たす雪菜の髪の香り。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 30, 1)  ; 長いお預けの時間を取り戻そうとするかのように、\n胸一杯に吸い込んで荒い息を吐く。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0049>, 31, 1)  ; 激しく、冷たく、胸がすく香りの記憶を、\n全身から追い出すために。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0050>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 13
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 32, 1)  ; 「はぁ、あ、はぁぁぁぁ…\nはぁ、はぁ、はぁ…んっ、ん、ん～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0052>, 33, 1)  ; 髪に軽くキスを重ねると、\n俺はそのまま首筋まで下りて、\n雪菜のうなじに鼻をこすりつけ、唇で触れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0053>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 14
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0054>, 34, 1)  ; 「だ、駄目…そんな、わたし…\n今日、ずっと外走り回ってて、汗…\nやぁんっ、ん、く…はぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0055>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 15
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0056>, 35, 1)  ; 「そのまま…欲しい。\n雪菜の、今のまま…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0057>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 16
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0058>, 36, 1)  ; 「ん…ゃぁ…あ、あ、あ…あんっ。\nそんな、そん…ひぅぅっ、ん、ん～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0059>, 37, 1)  ; 強く音を立ててうなじを吸い、\n荒い息と共に、雪菜のそのままの匂いを吸う。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0060>, 38, 1)  ; 雪菜の身体から立ち上るほのかな体臭は、\n雪菜が戸惑うよりも遙かに俺の情欲を掻き立てる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0061>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 17
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0062>, 39, 1)  ; 「はぁ、はぁぁ…ん、ちゅ…んぷ…\nは、れろ…ちゅ、ちゅぅぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0063>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 18
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0064>, 40, 1)  ; 「はぁぁんっ、や、あ、あぁ…\nは、春希くん、そこ…ぉ、ふぁぁっ、あ、んぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0065>, 41, 1)  ; この寒い冬に汗なんて…\nきっと、走り回ったり、緊張したり、テンパったりと、\n一生懸命頑張っていたんだろう。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0066>, 42, 1)  ; だから、今のままの雪菜が尊い。\nそんな今のままの雪菜を奪うからこそ、興奮する。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0067>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 19
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0068>, 43, 1)  ; 「んっ、く、くぅぅっ…\nひゃぅぅ…ぅんっ、ん、く…ぁ…\nあ、あ…あああああっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0069>, 44, 1)  ; 雪菜の羞恥の声が、どんどん高まっていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0070>, 45, 1)  ; 恥ずかしそうな仕草で、恥ずかしそうな反応で…\nけれど、恥ずかしいほどに激しく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0071>, 46, 1)  ; ドアの外に声が漏れていてもおかしくないほどに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0072>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 20
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0073>, 47, 1)  ; 「ん…は、はぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0074>, 48, 1)  ; 俺は、そんな高まる雪菜に応えたくて、\n高まる自分の欲望に正直に、唇と指先で襲いかかる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0075>, 49, 1)  ; うなじを息が続く限り吸い上げると、\n唇をそのまま首筋まで滑らせて、\n激しいキスと舌の愛撫を繰り返す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0076>, 50, 1)  ; 雪菜の首がよじれ、こちらを向こうとしても、\nただそこに集中して、肌と匂いの両方を吸い込む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0077>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 21
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0078>, 51, 1)  ; 「あ、ああ、あああああっ…\nや、もう…そんな、もう、こんな…ああ、あぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0079>, 52, 1)  ; 心配も、逡巡も、慕情も、そして悔恨も。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0080>, 53, 1)  ; 俺が気の迷いで撒いてしまった種を、\n俺の心の中で芽吹かせる訳にはいかなかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0081>, 54, 1)  ; 間違った方向に伸ばしかけた手は、\n今ここで軌道修正し、強く雪菜を抱きしめる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0082>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 22
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0083>, 55, 1)  ; 「は、春希く…ぅぅんっ、んっ、ん、く…\nあ、熱…熱い…わたし、わたし…へん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0084>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 23
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0085>, 56, 1)  ; 「俺も…俺もだから、雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0086>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 24
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0087>, 57, 1)  ; 「大丈夫…\nもっと強くても、大丈夫…\nもっと激しくても、わたし…はぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0088>, 58, 1)  ; 鷲掴みにしていた雪菜の胸を、\n搾るように、さらに強く握りしめ、\n俺の手の中で柔らかく形を変える乳房の感触に浸る。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0089>, 59, 1)  ; シャツを肩まではだけさせ、\n剥き出しになったそこに唇と舌と、歯を当てる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0090>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 25
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0091>, 60, 1)  ; 「はぁ、はぁ、はぁぁ…\nあ、いぅ、う、あ、あああんっ、ん、くぅっ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0092>, 61, 1)  ; 欲望が高まりすぎて、雪菜を気遣えない。\n全ての場所に触れないと、我慢がならない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0093>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 26
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0094>, 62, 1)  ; 「はぁ、あ、あ…ん、んむ…\nふぅ、ぅぁ、ぁ…ん、ちゅぷ…\nせ、雪菜…あぁ、はぁぁ…ぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0095>, 63, 1)  ; 雪菜にまみれないと、忘れられない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0096>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 27
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0097>, 64, 1)  ; 「あ、ああ、あぁ…もっと、もっと…いいよ…\nたくさん、痕つけて…\n一月ぶん、いっぺんに…はぁぁぁっ、あ、んぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0098>, 65, 1)  ; 雪菜の匂いと、雪菜の吐息と、雪菜の喘ぎに誘われて、\n指先と唇と舌先と顎に、更に大きな力を込める。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0099>, 66, 1)  ; 乳房を強く握りしめながら、\n人差し指と中指の間からはみ出している乳首を、\n前後に挟み込むように潰して弄ぶ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0100>, 67, 1)  ; 最初は指の中に隠れていた乳首が、\n俺の愛撫につれて、徐々に固くしこり、\nその存在を強く膨らませていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0101>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 28
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0102>, 68, 1)  ; 「はぁぁっ、あっ、あっ…\nや、すご、だめ…わたし、しびれて…んぅっ、\nは、春希く…あぁぁ、やぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0103>, 69, 1)  ; うなじに口づけて、首筋に舌を這わせ、\n肩を八重歯で傷つけて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0104>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 29
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0105>, 70, 1)  ; 「ん、んぷ…は、ぁ…ん、れろ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0106>, 71, 1)  ; そして今度はそのすぐ近くにあった、\n真っ赤に染まった耳が、俺を誘ってくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0107>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 30
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0108>, 72, 1)  ; 「～～～っ！\nあ、あ、あああ…ふぁぁぁぁっ、\nい、いぃぃぃっ、う、あぁぁぁんっ、ん、ん～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0109>, 73, 1)  ; 小さな穴に、舌を小さく丸めて差し入れ、\n唾液を流し込みながら、かき回しながら奥を目指す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0110>, 74, 1)  ; すぐ近くにある雪菜の顔が、\n羞恥に目を閉じて、びく、びくと震えるのが、\n今度は俺を痺れさせる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0111>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 31
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0112>, 75, 1)  ; 「ぃぅっ、くすぐった…気持ち、い…\nはぁっ、あ、や、やぁぁん…ん、く…ぅ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0113>, 76, 1)  ; 耳だけでなく、全身が赤く染まり、軽く汗ばみ、\nうなじから、首筋から、肩口から、\n俺をますます狂わせる匂いが湧き出てくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0114>, 77, 1)  ; 雪菜の心までは読めないけれど、\n少なくともその身体は、全力で俺を誘ってる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0115>, 78, 1)  ; だから俺は、ますます雪菜の身体の全てに触れたくなる。\n何もかも、求めたくなる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0116>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 32
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0117>, 79, 1)  ; 「はっ、はぁ、はぁぁっ、あっ、あんっ…\nや、や、や…あぁぁぁっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0118>, 80, 1)  ; スカートの上から、雪菜の太股やお尻を撫で回す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0119>, 81, 1)  ; ただそれだけの愛撫で、雪菜の両脚はぴぃんと突っ張り、\nパンプスのかかとが今まで以上に持ち上がる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0120>, 82, 1)  ; そうやって、自分でわざわざバランスの悪い体勢を\n取ってしまったせいなのか、それとも別の理由なのか、\n今度は全身を小刻みに震わせていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0121>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 33
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0122>, 83, 1)  ; 「あ、あぁ…あぁぁ…は、春希、くん…\nお、お願い、お願い…呆れたり、しないで、ね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0123>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 34
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0124>, 84, 1)  ; 「どうして、そんな…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0125>, 85, 1)  ; 下に降ろしていった手のひらが、\nようやく雪菜の、ストッキングに包まれた足に触れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0126>, 86, 1)  ; 膝裏を指でくすぐるように撫で回すと、\n雪菜の揺れがますます大きくなり、息が荒くなる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0127>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 35
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0128>, 87, 1)  ; 「だ、だって、だって…\n春希くん、もうすぐ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0129>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 36
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0130>, 88, 1)  ; 「もうすぐ…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0131>, 89, 1)  ; そのまま、股の内側を撫で上げていくと、\n指先がスカートを巻き込み、\nゆっくりと雪菜の太股が露わになっていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0132>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 37
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0133>, 90, 1)  ; 「ふぁ、ぁ、ぁ…だ、だめ、だめぇ…\nそこから、そこから先は…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0134>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 38
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0135>, 91, 1)  ; 「あ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0136>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 39
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0137>, 92, 1)  ; 「～～～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0138>, 93, 1)  ; まだ、一番奥に触れてはいなかったはずだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0139>, 94, 1)  ; 内股を伝っていった俺の指先が、\nとろりとした温かい粘液に触れたときには…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0140>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 40
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0141>, 95, 1)  ; 「雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0142>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 41
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0143>, 96, 1)  ; 「ご、ごめんなさい…\nわたし、こんな…ごめんなさぁい…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0144>, 97, 1)  ; それは、雪菜を覆っていた下着を染み出し、\nその上から包み込んでいたパンストをも漏れ出して、\n脚を伝って、垂れ落ちてきたってことで。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0145>, 98, 1)  ; 一体、どれだけの量溢れ出したなら、\nこんなところまで垂れてくるんだろうって…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0146>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 42
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0147>, 99, 1)  ; 「く、首筋とか、耳とか…\nもう、気持ちよくて気持ちよくて…っ、\nが、我慢、できなくて…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0148>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 43
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0149>, 100, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0150>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 44
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0151>, 101, 1)  ; 「あっ、や、やぁぁぁぁっ！\nだ、だから、今そこに触られると…ああああんっ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0152>, 102, 1)  ; そんな、いやらしい事実と告白に頭を殴られ、\n雪菜の理性以上に、俺が飛んでいく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0153>, 103, 1)  ; 手のひら全体で雪菜のお尻を掴み、\n中指だけを立てると、雪菜の中心に当てる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0154>, 104, 1)  ; 指先がほんの少し触れただけで、\nじゅく、と音がするくらい、そこは溢れていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0155>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 45
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0156>, 105, 1)  ; 「あ、ああ、あぁぁ…駄目、駄目ぇ…\nい、今、今は…ああああああああっ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0157>, 106, 1)  ; そんな雪菜の懇願を無視して、立てた中指を\nストッキングと下着ごと、雪菜のなかに埋め込む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0158>, 107, 1)  ; 薄い布と厚い布の抵抗はあったけど、\nでも潤滑油は豊富にあったから、\n第二関節くらいはそのまま埋まっていった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0159>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 46
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0160>, 108, 1)  ; 「はぁっ、はぁっ、はぁぁんっ、ん、く…\nあぁ、あぁぁ…い、いやぁ…ら、あぁ…め…ぇ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0161>, 109, 1)  ; …たったそれだけの行為で、\n潤滑油は俺の中指を伝い、手の甲にまで垂れ落ちてきた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0162>, 110, 1)  ; 両脚の震えはますます激しくなり、\n雪菜はかかとを地に着けることもできず、\nただ、ドアによりかかって激しい感覚に耐えていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0163>, 111, 1)  ; …だから俺は、\nもっと、激しくしたくなる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0164>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 47
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0165>, 112, 1)  ; 「あ、あ？\nな…や、やめ…春希くん見ないで…っ、\nあ、ああ、やだ、やだ、やだぁぁぁ…あ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0166>, 113, 1)  ; 雪菜の背中から体を離し、\n一歩下がって膝をつく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0167>, 114, 1)  ; と、俺の顔の前に、\nスカートをまくり上げられた雪菜の丸いお尻が、\n豊かなボリュームをもって広がっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0168>, 115, 1)  ; 指で感じた通り、そこの中心部からは、\n下着やストッキングの色を変えてしまうくらい、\n雪菜の体液が流れ出てしまっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0169>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 48
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0170>, 116, 1)  ; 「見ないでってばぁ、あ、や、やだって…\nこんな、ああ、苛めちゃ…や、ぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0171>, 117, 1)  ; お尻を割るように両手で拡げると、\n雪菜の柔肉は俺の手のひらに吸いつくように開き、\n濡れそぼった部分を下着の染み越しに見せつける。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0172>, 118, 1)  ; ストッキングもショーツも、全部粘液で貼りつき、\nもう、雪菜のそこの色を隠すことはできていなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0173>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 49
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0174>, 119, 1)  ; 「あぁ、ぁぁぁ…ひっ、ぃ、ぃぅ…\nだ、だから嫌って…いやぁ…は、ぁぁ…ひぅぅ、う…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0175>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 50
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0176>, 120, 1)  ; 「苛めて、ない。\n恥ずかしがる必要なんか…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0177>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 51
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0178>, 121, 1)  ; 「だ、だって、だって…\nまだそこ、触られてもなかったのに…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0179>, 122, 1)  ; 雪菜の泣き声が頭に染み込んでくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0180>, 123, 1)  ; それは、雪菜から溢れてる液と同じくらい、\n俺の興奮を掻き立てるだけ掻き立てて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0181>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 52
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0182>, 124, 1)  ; 「なら…\nそんなこと、わからないようにすれば…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0183>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 53
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0184>, 125, 1)  ; 「あ、あっ！？\nあああああっ、あ、あ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0185>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 54
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0186>, 126, 1)  ; 「ん…ちゅぷ…ん、はぁ…はあぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0187>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 55
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0188>, 127, 1)  ; 「あぅぁぁぁぁんっ、い、いあぁぁっ、\nあ、あっ、やあああぁぁぁぁぁんっ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0189>, 128, 1)  ; 指が潜り込んだその穴に、\n今度は唾液をたっぷりとまぶした舌を差し入れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0190>, 129, 1)  ; これでもう…\n雪菜から出たのか、俺から出たのかわからない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0191>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 56
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0192>, 130, 1)  ; 「ああっ、ああっ、ああああっ…\nあ、あぅっ、ん…や、やめ…熱っ、う、あ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0193>, 131, 1)  ; 俺の舌の愛撫から逃れようと、\n雪菜が今まで以上に背伸びをして、\nお尻を引っ込めようとする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0194>, 132, 1)  ; けれどそこは、俺にがっちりと握られてるせいで、\nただ雪菜の逃げ場をなくしていくだけだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0195>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 57
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0196>, 133, 1)  ; 「ん、ちゅぷ…あ、あむ…じゅぷ…ん、んく」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0197>, 134, 1)  ; 舌先で愛撫するだけでは飽きたらず、\n唇をくっつけて、二枚の下着越しに垂れてくる液をすする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0198>, 135, 1)  ; 胸一杯に息を吸い込み、雪菜の女の匂いを堪能する。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0199>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 58
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0200>, 136, 1)  ; 「ああぁぁぁ…そんな、いや、ぁ…\nだから、恥ずかし…あ、あ、んっ…\nずっと歩き回ってて…きたない、のに…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0201>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 59
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0202>, 137, 1)  ; 「ん、ちゅぷ…んぷ…は、ぁぁ…\nすぅぅ…ん、んぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0203>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 60
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0204>, 138, 1)  ; 「だからぁ、まだ、そんなことしないで…\nせめて、お風呂に…あぁぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0205>, 139, 1)  ; 甘酸っぱくて、温もっていて、柔らかくて、\n震えてて、ぬめってて、蠢いてて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0206>, 140, 1)  ; そんな雪菜の蠱惑的な下半身を、\n下着越しに五感の全てで感じていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0207>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 61
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0208>, 141, 1)  ; 「はぁ、はぁ、はぁぁ…雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0209>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 62
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0210>, 142, 1)  ; 「や、やぁ…ぁ…ぁ？\nな、なぁ、に？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0211>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 63
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0212>, 143, 1)  ; 「ごめん、な。\n後で、弁償するから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8428
PUSH INT 0
PUSH INT 0
PUSH INT 40
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0213>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 64
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0214>, 144, 1)  ; 「～～～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0215>, 145, 1)  ; ナイロンが引き裂かれる高く小さな音が、\n雪菜の鼓膜を響かせ、羞恥に震えさせる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0216>, 146, 1)  ; けれど俺の方は、破れた先から覗く雪菜の白いお尻と、\nショーツ越しにますますくっきりと浮かび上がった\n雪菜の秘所を目の当たりにして、それどころじゃなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0217>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 65
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0218>, 147, 1)  ; 「はぁ、はぁぁ…あ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0219>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 66
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0220>, 148, 1)  ; 「あ、あ…あああ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0221>, 149, 1)  ; 雪菜の声が、羞恥と興奮で、\nどんどん高く、震えていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0222>, 150, 1)  ; 嫌がっているようにも、期待してるようにも、\nどっちとも取れる微妙なため息を漏らす。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0223>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 67
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0224>, 151, 1)  ; 「ん…んぅっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0225>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 68
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0226>, 152, 1)  ; 「あ、あ、あ、あ、あ…ああああっ！\nあ～っ、い、や、や～っ、\nはぁぁぁんっ、ん、ん～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0227>, 153, 1)  ; けれど俺の方は単純明快で。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0228>, 154, 1)  ; 雪菜の、もっと奥まで…\nもっと、なかまで感じたいって…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0229>, 155, 1)  ; もう、歯止めはまるで利いてくれない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0230>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 69
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0231>, 156, 1)  ; 「あぅぁぁぁぁ…ひぅっ、ん、くぅっ…\nい、あ、あ…だ、だめ、だめっ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0232>, 157, 1)  ; ストッキングの裂け目に指を入れ、\nショーツをずらして、雪菜の胎内に舌を差し入れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0233>, 158, 1)  ; 口の中に雪菜の粘液があっという間に広がり、\nさらに舌先を伝ってとめどなく溢れてくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0234>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 70
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0235>, 159, 1)  ; 「だめ、だったらぁ…\nわたし、今日は…\nそんなことされたら、すぐに…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0236>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 71
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0237>, 160, 1)  ; 「ん…んぅ…んく…ん、んぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0238>, 161, 1)  ; 雪菜のお尻に顔を埋めるようにして、\nそこからこぼれる液を、音を立ててすする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0239>, 162, 1)  ; 今までも、何度もやってきた行為なのに、\n今日は、雪菜の感じ方も、俺の快感も尋常じゃない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0240>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 72
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0241>, 163, 1)  ; 「あぁっ、ああっ、あんっ…\nい、いや、ぁ…あぅぁぁぁ…あぅっ、\nん、んぅ、ん～っ、っはぁぁっ、あぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0242>, 164, 1)  ; 雪菜は、もしかしたら、\n一月のお預けが効いているのかもしれない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0243>, 165, 1)  ; そして俺は、もちろん同じ理由もあるけれど、\nもしかしたら、もう一つの…\nあってはならない理由に後押しされているかもしれない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0244>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 73
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0245>, 166, 1)  ; 「っ…ん、く…くぅ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0246>, 167, 1)  ; そんな、今ここで考えてはいけないことを掻き消さんと、\n俺はさらに、雪菜の奥深くまで潜り込む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0247>, 168, 1)  ; わざと舌と口で大きな音を立てて、\nわざと息を荒々しく吸い込んで、\nますます雪菜の羞恥心を煽る。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0248>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 74
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0249>, 169, 1)  ; 「やめて、やめ…ん、ん、ん～っ！\nも、もう…後で…覚えててよぅ…？\nこんな、恥ずかし…うあぁぁぁっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0250>, 170, 1)  ; そして、雪菜が狙い通りの反応をすることで、\nますます俺の獣の欲望が目覚めていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0251>, 171, 1)  ; 雪菜の奥だけでなく、先端の突起を指先で転がし、\n太股の裏の痙攣をますます誘発する。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0252>, 172, 1)  ; 中の肉壁を、舌全体でまんべんなくねぶり、\n床にこぼれ落ちるほどに、奔流を搾り出す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0253>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 75
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0254>, 173, 1)  ; 「ああ、もう、もう…っ、\nは、あ、いぁ、ぁ、ぁぁ…\nだ、だめ、だめ…ちょっと、休ませ…ぃぃぃんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0255>, 174, 1)  ; そんな雪菜の懇願に耳を貸すわけもなく、\n動きをもう少し複雑にして雪菜を苛める。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0256>, 175, 1)  ; 先端の突起を、今度は爪で軽く弾き、\n中には舌と同時に息を吹き込み、\n空気も含ませて愛撫を続ける。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0257>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 76
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0258>, 176, 1)  ; 「あああぁぁ…ああっ、あああっ…\n駄目、なんだってばぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0259>, 177, 1)  ; そんな俺の責めに、\n雪菜の膝が、徐々に折れてきた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0260>, 178, 1)  ; ドアで支えていた身体が、\n全身を震わせたまま、\nずるずると滑るように下がってきた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0261>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 77
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0262>, 179, 1)  ; 「あ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
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

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0263>, 180, 1)  ; そして、突然支えを失ったように膝がかくんと折れ、\n下半身が、俺の口から強引に逃れていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0264>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 78
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0265>, 181, 1)  ; 「はぁっ、はぁっ、はぁっ…あ、はぁぁ…\nも、もう…立って、られないよぅ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0266>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 79
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0267>, 182, 1)  ; 「雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0268>, 183, 1)  ; 雪菜は、泣きそうな声を上げ、\nそのまましゃがみ込んでしまった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0269>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 80
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0270>, 184, 1)  ; 「はぁっ、はぁっ、あ、あぁ…\nお、お願い…少しだけ、ほんの少しだけ待って」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0271>, 185, 1)  ; パンプスのかかとに、\n破られたストッキングの隙間から覗く\n白いお尻が乗せられている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0272>, 186, 1)  ; そこからは、俺の口から差し込まれた唾液と、\n雪菜のなかから溢れ出た液とが混ざりあったものが、\n床にこぼれ、少しずつ染みを拡げていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0273>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 81
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0274>, 187, 1)  ; 「雪菜、でも、でも、俺…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0275>, 188, 1)  ; そんな光景を見せられて、\nしかもいつも以上に我慢を重ねた現状で。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0276>, 189, 1)  ; いつもとは違う感情にまで苛まれている俺は、\nいつもみたいに雪菜を気遣うことは…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0277>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 82
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0278>, 190, 1)  ; 「今度はわたし…\nわたしが、春希くんを求める番、だよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0279>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 83
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0280>, 191, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0281>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 84
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0282>, 192, 1)  ; 「立って、春希くん…\nお願い、わたしに………ください」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0283>, 193, 1)  ; そんな俺の内面を知ってか知らずか…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0284>, 194, 1)  ; 頭を下げ、荒い息を吐いたまま、\n雪菜は、俺の袖口を掴んだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0285>, 195, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20660
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0286>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 85
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0287>, 196, 1)  ; 「んっ、ちゅぷ…は、あむ…ん、んぅ…\nはぁ、はぁ、ぁぁぁ…あ、んむ…んむぅ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0288>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 86
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0289>, 197, 1)  ; 「～～～っ！\nあ、あ、あ、あああああっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0290>, 198, 1)  ; それは、雪菜の懇願によるものか、\n俺の欲望の吐露によるものか…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0291>, 199, 1)  ; 俺は、膝をつく雪菜の前に自分から立ったのか、\n促されるまま立たされたのかわからないまま、\nけれどいつの間にか、それは雪菜の口の中にあった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0292>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 87
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0293>, 200, 1)  ; 「んぷ、はむ…んむぅ…\nちゅぅぅぅ…は、あ、あむ…ん、んぷ、んく…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0294>, 201, 1)  ; ファスナーが下りる音も、\n雪菜に引きずり出された感触も、\nもう頭の中から抜けている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0295>, 202, 1)  ; 今、目の前で俺のものを夢中で頬張る雪菜の、\n何かに取り憑かれたようなうっとりした表情が、\n俺の頭の中の記憶を全て吹き飛ばしてしまったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0296>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 88
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0297>, 203, 1)  ; 「はぁ、あ、ああ…春希くん…はぁ、はぁぁ…\nすごく、春希くんの匂い、するよ…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0298>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 89
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0299>, 204, 1)  ; 「せ、雪菜、ぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0300>, 205, 1)  ; さっきの俺と同じように、\n胸一杯に大きく息を吸い込み、\n相手の匂いを嗅ぎ、ますます興奮していく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0301>, 206, 1)  ; 相手の感じるところにしつこく唇と舌を這わせて、\n自分のしているはしたない行為を思い、\n激しく興奮していく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0302>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 90
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0303>, 207, 1)  ; 「ん、んく…じゅぷ…あ、んぅ…れろ、は、ぁぁ…\nぁぁぁ…おいしい…よ、ぉぉ…んぉぉぅ…んぷ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0304>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 91
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0305>, 208, 1)  ; 「っ…あ、あ、あ…あぁぁぁぁっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0306>, 209, 1)  ; 俺が始めたこと。\n雪菜が、覚えたこと。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0307>, 210, 1)  ; 二人で積み上げた、恋人同士の行為。\n恋人だけに許される、とても人には言えない行為。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0308>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 92
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0309>, 211, 1)  ; 「ん、ちゅぷっ…は、ちゅぅぅ…んっ、\nはぁ、ぁ、ぁぁ…春希くんの、お○ん○ん…\nわたしの口の中より、熱い、よ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0310>, 212, 1)  ; 奥まで飲み込んだかと思うと、今度は口の中から抜き取り、\n先端にキスを繰り返し、舌先でちろちろと舐め上げる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0311>, 213, 1)  ; 視線は、もう俺の怒張から離れない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0312>, 214, 1)  ; 目は垂れ下がり、口の端から唾液を垂らし、\nまるで夢の中にいるかのような表情で、\nけれど見つめているのは、あんなグロテスクな…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0313>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 93
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0314>, 215, 1)  ; 「ん、んむ…んぷ…ぇろ、ちゅ、ちゅぷ…んぅぅぅ、\nんぅ、んっ、ちゅぅぅぅ…んっ、んく…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0315>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 94
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0316>, 216, 1)  ; 「う、あ、あ…はぁっ、あ、あぅ、ぅぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0317>, 217, 1)  ; 先端に舌を這わせたまま、唇が先っぽだけを含む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0318>, 218, 1)  ; 上唇と下唇で、柔らかく、けれど強く挟まれて、\n中に含まれた部分に、雪菜の舌が回るように絡みつく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0319>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 95
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0320>, 219, 1)  ; 「ちゅぅぅぅ…ん、んく、んっ…\nれろ、あ、あむ…んぅぅ…ちゅぷ…ん、んく…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0321>, 220, 1)  ; 雪菜の喉が大きな音を立てて、\n俺をねぶった後の液を飲み込み、\nけれどそこに溢れる唾液は乾くことなく俺を浸す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0322>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 96
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0323>, 221, 1)  ; 「あ、あぁ…雪菜…ぅ、ぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0324>, 222, 1)  ; そこにいるのは、いつもの…\n明るくて朗らかな、誰もが知っている雪菜ではなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0325>, 223, 1)  ; 想像以上に蠱惑的で、暗くて、湿ってて、\n信じられないくらい執拗で、淫猥で…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0326>, 224, 1)  ; そんな、俺と二人きりの時にしか見せない、\n俺しか知らない雪菜。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0327>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 97
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0328>, 225, 1)  ; 「んぶっ…ん、んぅ、ん～っ！\nあ、んっ…んんっ、んぅぅっ、ん…くぷ…んんんんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0329>, 226, 1)  ; そんな雪菜の責めにつられて、\nいつの間にか、彼女の頭を強く掴んでた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0330>, 227, 1)  ; そのまま俺が押しつけたのか、\nそれとも雪菜が飲み込んだのか…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0331>, 228, 1)  ; 雪菜の口唇は、俺の根本に口づけるくらい、\n喉の奥まで深く俺を飲み込んでいた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0332>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 98
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0333>, 229, 1)  ; 「ああっ、あああっ、ああぅっ…\nあ、雪菜、雪菜…ふぁ、あぁぁぁっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0334>, 230, 1)  ; 雪菜が俺に、秘所を指と舌で愛撫され、\nあっという間に耐えられなくなってしまったように、\n俺の方も、あっという間に限界を迎えそうだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0335>, 231, 1)  ; 一月も離れていたゆえの劣情。\nすれ違いを無理やり重ねたゆえの反作用。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0336>, 232, 1)  ; それに、きっとあるはずなんだ。\n…お互いが、和解したことによる安堵も。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0337>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 99
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0338>, 233, 1)  ; 「んむぅぅ、ん、ん～っ！\nはぶっ、んっ、んむっ、ん、むぁぁ…あんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0339>, 234, 1)  ; 奥まで飲み込んで、先っぽまで抜き出して…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0340>, 235, 1)  ; 雪菜の動きが、どんどん早く、リズミカルに…\n俺を導くような動きに変わっていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0341>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 100
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0342>, 236, 1)  ; 「あっ、はぁっ、はぁぁぁぁっ…ぅぅ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0343>, 237, 1)  ; 雪菜の頭を掴む俺の手がそうさせているのか、\nそれとも雪菜自らの意志でしているのか…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0344>, 238, 1)  ; そのぬめりは、俺の根本から先端まで激しく往復し、\n空気と水が混ざり合う大きな音を耳に届け、\n痺れるような、ひりつくような快感を全身に届ける。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0345>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 101
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0346>, 239, 1)  ; 「んぅっ、んぷっ、はむっ、ん、じゅぅぅぅ…んぶっ、\nはぁっ、はぁっ、んむぅぅぅ…んくっ、こくっ…ん…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0347>, 240, 1)  ; 雪菜の喉が大きく動き、\n雪菜の視線が、俺を上目遣いで捉え、\n雪菜の液が、口からだけでなく、床に垂れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0348>, 241, 1)  ; もう、雪菜を…\nそんな淫靡な光景を視界に収められるほど、\n俺の我慢は保たなくて、思わず天井を見上げる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0349>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 102
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0350>, 242, 1)  ; 「んくっ、んっ、ちゅぅぅ…んむ、ん、んぅっ…\nはぁ、は、あ、んむぅぁ…あぷっ、んっ、んっ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0351>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 103
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0352>, 243, 1)  ; 「うああぁぁぁ…ぁぁ、ぁ…っ、\nはぁっ、あっ、く、くぅぁぁ…ぃぅっ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0353>, 244, 1)  ; けれど、目を逸らしたところで大した効果はなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0354>, 245, 1)  ; 雪菜の舌と唇と喉の感触は、\nもう、俺の全身を侵して…いや、犯していたから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0355>, 246, 1)  ; 強く包み込み、ぬめりを与える唇。\n激しくねぶり、ざらりとした刺激を与える舌。\n先端を受け止め、更に奥へと誘う喉。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0356>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 104
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0357>, 247, 1)  ; 「んぅっ、んぅっ…んんんんっ？\nんっ、くぷ…んぅぅんっ、ん、ん～っ！\nはぁっ、は、春希くん…いいよぉ…あ、んん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0358>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 105
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0359>, 248, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0360>, 249, 1)  ; 気づかれた…\n俺が、もう十秒すら保たないって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0361>, 250, 1)  ; びくんと膨張した瞬間に、\n雪菜の口全部が、俺を受け入れる準備を始めた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0362>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 106
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0363>, 251, 1)  ; 「ん、んむ…ん～っ！\nんんっ、んんっ、あぶっ、ん、んく…んんんっ、\nあむっ、ちゅぷっ、あんっ、ん、んくぅっ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0364>, 252, 1)  ; そこからは、もう予定調和。\n数秒後の限界に向かって突き進むだけ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0365>, 253, 1)  ; 奥深く、何度も何度も突き入れて、\n雪菜のリズムと、俺のリズムを合わせて。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0366>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 107
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0367>, 254, 1)  ; 「んぅっ、んっ、んっ………けほっ、\nあ、あむぅぅっ、んっ、んく…ん～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0368>, 255, 1)  ; 途中、雪菜は苦しそうに咳き込み、\n目尻から少し涙をこぼしながらも、\nそれでもその激しい動きをやめようとしない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0369>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 108
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0370>, 256, 1)  ; 「はぁっ、はぁっ、はぁぁぁっ…\nせ、雪菜…あぁぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0371>, 257, 1)  ; 本当は、気づいてる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0372>, 258, 1)  ; それが、全部雪菜の動きじゃなかったって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0373>, 259, 1)  ; さっきから、雪菜の頭を掴んでた俺の両手は、\n少しずつ、雪菜の動きを凌駕してるって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0374>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 109
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0375>, 260, 1)  ; 「んんっ！　ん、ん～っ！？\nあ、あむ、んぷ…んんっ、ん、く…ぶほっ、\nは、あぁ、あああんっ…ん、く…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0376>, 261, 1)  ; 雪菜が飲み込むよりも奥深く喉を突かせ、\n雪菜の動きよりも速く往復させ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0377>, 262, 1)  ; 雪菜の欲望を上回り、\nその口中を、無理やり犯そうとする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0378>, 263, 1)  ; 雪菜の口の中に、俺の膨張を押し込みたい。\n雪菜の喉の奥に、俺の迸りを流し込みたい。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0379>, 264, 1)  ; 雪菜の舌を、俺の出したもので真っ白に粘りつかせたい…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0380>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 110
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0381>, 265, 1)  ; 「っっっ…！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0382>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 111
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0383>, 266, 1)  ; 「んんんんんっ！？\nん、ん～っ、あ、んむっ、けほっ、や、あぁ…ぁぁぁ…\nはぁぁぁっ、ん、ん…んむぅぅぅっ、ん、ん～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0384>, 267, 1)  ; だって雪菜は、俺のものだから。\n俺は、雪菜のものなんだから…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0385>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 112
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0386>, 268, 1)  ; 「あ、ああ、あああ…\nあああああああああ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 15
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 15
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL FB
OPERATOR POP

PUSH INT 1
PUSH INT 20660
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 0
PUSH INT 120
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0387>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 113
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0388>, 269, 1)  ; 「んんっ！？　んくっ、ん、んんんんん～っ！\nけほっ、お、おぶっ…ん、んぅぅぅぅ…ん～っ、ん…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0389>, 270, 1)  ; 激しく咳き込みながらも…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0390>, 271, 1)  ; 雪菜は、俺の一月分の欲望を、\n喉の奥で全部受け止めた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0391>, 272, 1)  ; …いや、喉だけで全部は受け止めきれずに、\n喉と口と、そして顔を使って受け止めた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0392>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 114
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0393>, 273, 1)  ; 「けほっ、こほぉっ…う、ん…んく…ぷぁぁっ、\nは、は…あああっ！？\nあ、あぁ…ぁぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0394>, 274, 1)  ; 喉がこくこくと動き、\n口の端からこぼし、\nさらに新しい奔流が、顔を白く汚す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0395>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 115
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0396>, 275, 1)  ; 「あっ、あっ…あぁぁ…\nはぁ、ぁぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0397>, 276, 1)  ; 次から次へと…\nとどまることを知らず、雪菜に、射精されていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0398>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 116
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0399>, 277, 1)  ; 「は、あ、あ…んく…ちゅぷ…あ、んむ…\nんぶっ…ぅぁ、あ、けほっ、ごほっ、ん、んぷっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0400>, 278, 1)  ; それを雪菜は、何度も必死に喉で受け止めようとして、\nそのたびに咳き込み、結局、顔をどろどろに染めていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0401>, 279, 1)  ; そうやって俺に、\n白く、ねっとりと汚されていく雪菜は…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0402>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 117
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0403>, 280, 1)  ; 「はぁ、ご、ごめんね…\n全部、受け止めきれなかった…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0404>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 118
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0405>, 281, 1)  ; 「雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0406>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 119
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0407>, 282, 1)  ; 「せめて、春希くんだけでも綺麗に…\nん、んちゅ…む、んぅ、ぁ、あむ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0408>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 120
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0409>, 283, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0410>, 284, 1)  ; そんなに酷い目に遭いながらも、\nとても、綺麗だった…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0411>, 285, 1)  ; 穢れても、汚されても、\nどれだけ辱められても…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0412>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 121
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0413>, 286, 1)  ; 「ん、んむ…ちゅぅぅ…んく、こく…\nは、あぁ…んむ…れろ…ちゅぷ…は、あぁ…む」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0414>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 122
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0415>, 287, 1)  ; 「雪菜…雪菜ぁ…あ、あ、あ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
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

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0416>, 288, 1)  ; その美しさをまるで損なうことなく\n俺の眼下に佇み、\n一心に、いやらしい行為を続けていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0417>, 289, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 60
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 200
OPERATOR NEGATE
PUSH INT 60
PUSH INT 3500
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0418>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 123
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0419>, 290, 1)  ; 「ね、ねぇ…\nベッド、行こう？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0420>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 124
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0421>, 291, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0422>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 125
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0423>, 292, 1)  ; 「春希、くん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0424>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 126
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0425>, 293, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0426>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 127
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0427>, 294, 1)  ; 「春希くん？\n春希くんってばぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0428>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 128
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0429>, 295, 1)  ; 「え…なに？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0430>, 296, 1)  ; 一月ぶりに、雪菜の口のなかに放出して、\n虚脱状態になっていた俺は、\nしばらく雪菜の言葉を聞き逃していた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0431>, 297, 1)  ; …ただ、それだけだった。\n視線の先にあったものは、なにも関係なかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0432>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 129
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0433>, 298, 1)  ; 「ベッド、行きたいの」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0434>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 130
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0435>, 299, 1)  ; 「あ、え…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0436>, 300, 1)  ; 雪菜が、ようやく足に力を込めて立ち上がると、\n俺の胸に取りすがる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0437>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 131
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0438>, 301, 1)  ; 「一緒に、服、脱いで…\n朝まで、ベッドで抱きあいたいの」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0439>, 302, 1)  ; スーツもシャツもスカートもしわが寄ってて、\nこのままだと、明日着ていけなくなりそうだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0440>, 303, 1)  ; 何より、もうストッキングとショーツは、\n今穿いていることすら、雪菜には…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0441>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 132
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0442>, 304, 1)  ; 「あ、その前に…シャワー、浴びさせて。\nわたし、今、ちょっと…\n春希くんと、キスできないから…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0443>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 133
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0444>, 305, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0445>, 306, 1)  ; そして雪菜の顔も、雪菜の口の中も、\n俺の射精をいっぱいに受け止めて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0446>, 307, 1)  ; だから雪菜の求めは当然で、\n二人とも綺麗になって、ゆっくり抱きあって、朝まで…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0447>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 134
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0448>, 308, 1)  ; 「ちょっとだけ…\nちょっとだけ、待ってて？\nすぐに綺麗にして、あなたの…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0449>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 135
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0450>, 309, 1)  ; 「嫌、だ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0451>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 136
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0452>, 310, 1)  ; 「え…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0453>, 311, 1)  ; なんて悠長なことは、\n今の俺にはとても言えなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0454>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 137
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0455>, 312, 1)  ; 「今日はもう、一瞬たりとも離れたくない。\nずっと、雪菜を感じてたい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0456>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 138
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0457>, 313, 1)  ; 「きゃっ？　あ、え？\nで、でも、でも…わたし、今…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0458>, 314, 1)  ; そんな、服も身体もそのままの雪菜を、\n俺はまた、思いっきり胸に抱く。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0459>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 139
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0460>, 315, 1)  ; 「そのままで、いい…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0461>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 140
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0462>, 316, 1)  ; 「春希、くん…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0463>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 141
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0464>, 317, 1)  ; 「雪菜は、何があっても綺麗だから…\nだから、そのままで…\nずっと、一緒にいてくれ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0465>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 142
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0466>, 318, 1)  ; 「………ぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0467>, 319, 1)  ; 雪菜を抱きしめながら、\nその視線はまた、さっきと同じ場所を向いてしまう。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0468>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 143
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0469>, 320, 1)  ; 「頼む、よ…俺、俺…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0470>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 144
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0471>, 321, 1)  ; 「………ぅん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0472>, 322, 1)  ; ベッドの側に設置されている時計の…\n午後８時過ぎの表示を。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0473>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 145
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0474>, 323, 1)  ; 「今は、好きにしていいよ…\n春希くんが思うまま、引き裂いていいから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0475>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 146
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0476>, 324, 1)  ; 「雪菜…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0477>, 325, 1)  ; かずさのコンサートは、\nもう、とっくに始まっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0478>, 326, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20670
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
PUSH INT 1
PUSH INT 9002
PUSH INT 128
PUSH INT 1
PUSH INT 1
CALL VX
OPERATOR POP

@VCALL WN(RES<0479>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 147
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0480>, 327, 1)  ; 「あああああ…あぁぁぁぁぁっ、\nあっ、あっ…あ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0481>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 148
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0482>, 328, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0483>, 329, 1)  ; 入れた瞬間…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0484>, 330, 1)  ; 雪菜のなかが、びくびくと収縮し、\n俺の腕に、ずしりと重い柔らかさが伝わった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0485>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 149
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0486>, 331, 1)  ; 「あっ、あっ、あっ…ご、ごめんなさい…\nわたし、こんな…はぁっ、あっ、あぁぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0487>, 332, 1)  ; 片足で自分を支えきることができずに、\n雪菜の全体重が俺の腕にかかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0488>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 150
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0489>, 333, 1)  ; 「はぁ、ぁ…大丈夫…\n大丈夫だから、雪菜」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0490>, 334, 1)  ; けど、それもこれも、\n雪菜にこんな無理な体位を強いている俺のせいで…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0491>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 151
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0492>, 335, 1)  ; 「だから、動く…な」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0493>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 152
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0494>, 336, 1)  ; 「はぁ、あ、え…も、もう少し…休ませ…っ！？\nあっ、あっ、あぁぁぁっ、は、春希くん？\nふぁぁぁっ、あ、や～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0495>, 337, 1)  ; 雪菜を、おもちゃみたいに滅茶苦茶に扱ってる、\nけだものと化した俺のせいで…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0496>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 153
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0497>, 338, 1)  ; 「はぁっ、はぁっ、はぁぁぁっ…\nせ、雪菜…うあ、い、いぃ…ぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0498>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 154
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0499>, 339, 1)  ; 「ああんっ、あああんっ、ふあぁぁんっ！\nだ、だめ、まだ、まだ、力が…あぁぁぁっ、\nはぁぁぁぁっ、あっ、ん～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0500>, 340, 1)  ; 雪菜をまたドアに強く押しつけ、\n片足を持ち上げ、はしたない格好をさせて、\n後ろから思い切り突き上げる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0501>, 341, 1)  ; 大きく開けられたストッキングの穴…\nそしてずらされたショーツの隙間に俺のものが潜り込み、\nぬめるような湿った音とともに、雪菜の肉がまとわりつく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0502>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 155
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0503>, 342, 1)  ; 「い、いぁっ、そんな…おく…ふぁぁぁっ、\nあっ、あっ、あ～っ！\nやめ…ぇ、はぁぁぁぁっ…あ…あぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0504>, 343, 1)  ; 何もかも俺にされるがまま…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0505>, 344, 1)  ; 雪菜は、片足を持ち上げられ、俺とドアに挟まれ、\n窮屈なまま激しく突き上げられ、息も絶え絶えに喘ぐ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0506>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 156
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0507>, 345, 1)  ; 「はぁっ、はぁっ、あんっ、んんっ…\nん、く…こんな、こんなぁ…や、うぅ…あぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0508>, 346, 1)  ; 視界の端で、雪菜の足を覆うパンプスが、\n俺の動きにつれて、ゆらゆらと揺れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0509>, 347, 1)  ; スーツも着たまま、靴も履いたまま…\nそんな、『よそ行きの雪菜』が、\n俺の腕の中で悶えてる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0510>, 348, 1)  ; 顔を、涙と唾液と…\nそして、俺の精液にまみれさせながら…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 1
CALL VS
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0511>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 157
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0512>, 349, 1)  ; 「あぁぁぁっ、ああっ、あ、んっ…\nは、春希…ぅむっ！？\nん、ん…ん～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0513>, 350, 1)  ; そんな、ぐちゃぐちゃに濡れた雪菜の顔に、\n俺の顔を強引に近づけて、唇を重ねた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0514>, 351, 1)  ; けど…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0515>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 158
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0516>, 352, 1)  ; 「んっ、んんんっ！\nぷぁぁっ、あ、あ…だめ、だよ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 1
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0517>, 353, 1)  ; 雪菜はかたく目を閉じ、唇を閉じ、\nいやいやをするように首を左右に振り、必死で拒む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0518>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 159
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0519>, 354, 1)  ; 「どうして…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0520>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 160
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0521>, 355, 1)  ; 「だって今、わたしの…その………んんんんっ！？\nんっ、んぅ、ん～っ！\nは、あむっ、ん、むぅぅぅっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0522>, 356, 1)  ; 多分…というか絶対、\n雪菜は、俺に汚された顔と口中のことを気にしてる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0523>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 161
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0524>, 357, 1)  ; 「んん…ん、んぷ…はぁ、あむ…ちゅ…んぅぅ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0525>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 162
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0526>, 358, 1)  ; 「んっ、んっ、んっ…ら、らめ…わらひ…ひんっ、\nん、ぷぁ…あぁ…はぁぁ…ぷぁぁぁぁっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 1
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0527>, 359, 1)  ; 俺にされてしまったことが、\n俺に嫌な思いをさせないかって、\n全然、自分のせいじゃない責任を感じてる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0528>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 163
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0529>, 360, 1)  ; 「もっと、大きく口開けて、舌出して…\n全部、開いて、雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0530>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 164
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0531>, 361, 1)  ; 「で、でも、でも………んんんんっ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0532>, 362, 1)  ; だから俺は、解きほぐす。\n雪菜の心を、雪菜の羞恥心を。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0533>, 363, 1)  ; 雪菜の、本来持っているいやらしさを…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0534>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 165
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0535>, 364, 1)  ; 「ん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0536>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 166
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0537>, 365, 1)  ; 「ん、んぅ…ちゅぷ…は、あ、んむ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0538>, 366, 1)  ; そして雪菜は、とうとう根負けしたのか、\n俺の舌と唇を受け入れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0539>, 367, 1)  ; 常識や、品性に囚われず、\nただ俺の求めを、愚直に受け入れる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0540>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 167
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0541>, 368, 1)  ; 「ん、んぅ…あむ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0542>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 168
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0543>, 369, 1)  ; 「んっ、んぅっ………んむぅぅっ！？\nは、あ、ん、ん～っ、んぅぅぅぅ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0544>, 370, 1)  ; だから俺も、雪菜のことを気遣う優しさを捨てて、\nすぐに激しく律動を再開する。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0545>, 371, 1)  ; 雪菜の口中に、ずぶりと舌を差し入れる。\n雪菜の胸を、爪痕を残すくらいぎゅっと握る。\n雪菜の膣奥に、ぐいぐい自分を押し込んでいく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0546>, 372, 1)  ; 雪菜に、自分の持てる限りの情欲を叩き込んでいく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0547>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 169
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0548>, 373, 1)  ; 「うあぁぁっ、ああっ、あ、ん～っ…ん、んぷ…\nちゅぷ、ぷぁ、はぁぁ…あ、あ…んんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0549>, 374, 1)  ; 唾液で、汗で、いやらしい液で…\n雪菜と繋がるところは、全部べとべとに濡れていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0550>, 375, 1)  ; またしても、ぽたりと床にしずくが落ちる。\nけれどそれが、どの液体なのかは、\nもう、重なり合いすぎた俺たちにはわからない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0551>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 170
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0552>, 376, 1)  ; 「んんんんっ、んんっ、ぷぁっ…あ、あ…\nは、春希く…んぅっ、あっ、やっ、やぁぁぁっ、\nも、もっと…ゆっくり…うあぁぁぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 1
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0553>, 377, 1)  ; もう、雪菜の懇願の声さえも聞こえない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0554>, 378, 1)  ; 目に届くのは、ゆらゆら揺れる雪菜の太股、ふくらはぎ、\n足先を覆うパンプス。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0555>, 379, 1)  ; 肩まで下ろされたスーツ、\nボタンを全部外されたワイシャツ。\nその中で、俺の手に握り潰されている乳房。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0556>, 380, 1)  ; 襲い来る快感と違和感で涙まみれの瞳、\n俺の白濁に汚されたままの顔、\n唾液の糸で俺と繋がっている唇。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0557>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 171
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0558>, 381, 1)  ; 「あぁぁぁぁっ、ああっ、あっ、んっ、んん…\n春希くん…ああ、わたしで、わたし…あぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0559>, 382, 1)  ; そして、俺たちの繋がっているところ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0560>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 172
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0561>, 383, 1)  ; 「わたしで、気持ちよく…\nわたしだけで、わたしのなかで…っ、\nあ………あむ…んむぅぅぅんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0562>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 173
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0563>, 384, 1)  ; 「ん、んむ、あ、あむ…ん、んん…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0564>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 174
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0565>, 385, 1)  ; 「はぁ、あむ…ちゅぅぅぅ…んぷっ、は、はぁ…\nああ、いい、気持ち…いい、よね…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 1
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0566>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 175
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0567>, 386, 1)  ; 「ああ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0568>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 176
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0569>, 387, 1)  ; 「わたしが、わたしだけが…\n春希くんと、こんな…\nこんな、いやらしいこと…はぁぁんっ、ん、んぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0570>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 177
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0571>, 388, 1)  ; 「うん…雪菜、\nう、あ、あ…あぁぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0572>, 389, 1)  ; 気持ちいい…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0573>, 390, 1)  ; 頭がおかしくなってしまうくらいの快感の奔流に、\n今、俺も雪菜も激しく流されている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0574>, 391, 1)  ; だって、こんなことができるのは、\n俺たちが、二人でいるとき、だけだから…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0575>, 392, 1)  ; 雪菜が、雪菜だけが…\n俺を、天国に…\n俺を、身も心も幸せにしてくれるんだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0576>, 393, 1)  ; だから…何を迷う必要があるんだよ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0577>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 178
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0578>, 394, 1)  ; 「ああっ、ああっ、ああああっ…！\nは、春希くん…愛して…愛してる、よね？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0579>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 179
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0580>, 395, 1)  ; 「愛してる…愛してる、雪菜…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0581>, 396, 1)  ; だから、こんな問いかけにだって、\nすぐに応えることができる。\n俺には、雪菜しかいない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0582>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 180
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0583>, 397, 1)  ; 「はぁっ、ああ、あ…う、嬉し…ぅぅんっ？\nん、ん～っ、ん、ん、ん…あむ…ちゅ、ぷぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0584>, 398, 1)  ; もう、あんな恐ろしい思いをするのはご免だ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0585>, 399, 1)  ; 自分の気持ちがどこに行ってしまったのか、\n完全に見失ってしまうような、\n夕暮れの景色の中にはいられない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0586>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 181
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0587>, 400, 1)  ; 「ん、んぷ…あ、あむ…んぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0588>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 182
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0589>, 401, 1)  ; 「は、あぁ…ちゅぅぅぅ…んぅ、んぷ…は、あむ…\nじゅぷ…ん、ちゅぷ…は、あ、あ…んんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0590>, 402, 1)  ; かずさが…怖い。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0591>, 403, 1)  ; 自分から挑発したくせに、\n俺が、追いかけていたはずなのに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0592>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 183
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0593>, 404, 1)  ; 「雪菜、雪菜…ん、んむ…はぁぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0594>, 405, 1)  ; あいつの、『今日限り』の言葉が飲み込めない。\n『一度だけ』の約束が信じられない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0595>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 184
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0596>, 406, 1)  ; 「はぁぁ、あむっ、ん、ぷぁ…はぁ、はぁ…\nは、春希くん…あぁぁ…い、いい…すごい、よ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0597>, 407, 1)  ; だって、あいつは『今日限り』と告げる時、\n今にも泣き出してしまいそうな辛そうな顔をする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0598>, 408, 1)  ; 『一度だけ』の約束とともにした行為の後、\n蕩けてしまうかのような嬉しそうな顔をする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0599>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 185
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0600>, 409, 1)  ; 「俺、俺…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0601>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 186
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0602>, 410, 1)  ; 「ん…いい、よ。\nどこでも、受け止める、から…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0603>, 411, 1)  ; あいつの言葉は、あいつが信じてるほど重くない。\nあいつの本質は、あいつの母親と何も変わらない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0604>, 412, 1)  ; 自分の気持ちを、自分で制御なんかできない。\n最後の最後には、何もかも巻き込む危うさを持ってる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0605>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 187
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0606>, 413, 1)  ; 「はぁっ、はぁっ、ああ、ああ…んっ、くぅ…っ、\nあっ、あっ、あっ、あっ、あっ…いいっ、い、く…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0607>, 414, 1)  ; そして俺は…\nかずさといる時の、俺が怖い。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0608>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 188
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0609>, 415, 1)  ; 「もう、俺…\nあ、ああ…あく…ぅ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0610>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 189
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0611>, 416, 1)  ; 「ああああっ、やぁっ、あ、あああんっ、\nもう、もう、春希くん…あ、あ、あ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0612>, 417, 1)  ; かずさを拒絶できない俺が怖い。\nかずさのことを、まだ本気で好きな俺が怖い。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0613>, 418, 1)  ; 俺がかずさに本気で向き合ってしまったら\n何が起こるのか、未来が見えなくて怖い…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0614>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 190
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0615>, 419, 1)  ; 「あ、あ、あ…ああ、あぁぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0616>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 191
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0617>, 420, 1)  ; 「んっ、んっ、んぅんっ…\nあああ、あっ、ああ…もう、もう、来て…\nあああああっ、あっ、あ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0618>, 421, 1)  ; だから俺は、かずさじゃなくて、雪菜に会いに来た。\nかずさのピアノじゃなくて、雪菜の声を聴きに来た。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0619>, 422, 1)  ; 今の幸せを…\n三年かかってやっと手に入れた幸せを、\n絶対に失いたくはなかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0620>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 192
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0621>, 423, 1)  ; 「雪菜…俺、俺…ああああっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 15
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 15
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL FB
OPERATOR POP

PUSH INT 1
PUSH INT 20680
PUSH INT 2
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 0
PUSH INT 120
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

@VCALL WN(RES<0622>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 193
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0623>, 424, 1)  ; 「ああああああっ！\nああぁぁぁぁぁぁ～っ！\nはぁぁっ、はぁっ、いっ、く…うあ、あぁぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0624>, 425, 1)  ; ギリギリのギリギリまで雪菜のなかに突き入れ、\n最後に、思い切り引き抜いた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0625>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 194
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0626>, 426, 1)  ; 「あ…あ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0627>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 195
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0628>, 427, 1)  ; 「あぁぁぁ…あっ、あぁぁ…んっ、んく…ぅ…\nはぁっ、ふぁぁぁっ、あっ…あ、ああ、あ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0629>, 428, 1)  ; 抜かれた後の雪菜の入り口は、\n俺のが入っていたことを示すように丸く開かれ、\nひくひくと蠢いていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0630>, 429, 1)  ; 俺の方も、雪菜のなかに入っていたことを示すように、\n辺り構わずまき散らし、ますます雪菜を汚していく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0631>, 430, 1)  ; 今度は、顔だけじゃなく、身体も、服も…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0632>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 196
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0633>, 431, 1)  ; 「あっ、あっ、あぁぁ…\nはるき、くぅん…や、ぁ、ん…んぅ…ぅぅぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0634>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 197
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0635>, 432, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0636>, 433, 1)  ; 雪菜だけでなく、\nとうとう俺までも力を失い、\n雪菜の太股を抱えたまま、地面に膝をつく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0637>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 198
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0638>, 434, 1)  ; 「はぁっ、はぁっ、はぁっ…あ、あぁ…\nすご…かった…ね…ぁ、ぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
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

PUSH INT 0
PUSH INT 23
PUSH INT 0
PUSH INT 0
PUSH INT 120
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0639>, 435, 1)  ; 雪菜は、ドアに手をつき、床にぺたんと座り込み、\n下を向き荒い息を吐き、肩を大きく上下させる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0640>, 436, 1)  ; そのお尻の下からは、\n未だにしずくがぽたぽたと垂れ、\n床に染みを作っている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0641>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 199
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0642>, 437, 1)  ; 「雪菜…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0643>, 438, 1)  ; 俺は、たまらなくなって、\n背中を向けたままの雪菜を抱きしめる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0644>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 200
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0645>, 439, 1)  ; 「う、ん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0646>, 440, 1)  ; 本当なら、服を汚してしまったことや、\n雪菜の身体をめちゃくちゃに扱ってしまったことを、\n何よりも早く謝るべきだったんだと思う。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0647>, 441, 1)  ; なのに俺は…\nその時の、あまりにもけだもの過ぎる俺は…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0648>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 201
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0649>, 442, 1)  ; 「もっと、もっと………欲しい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0650>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 202
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0651>, 443, 1)  ; 「春希、くん…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0652>, 444, 1)  ; まだこの夜を終わらせる気は、\nまるでなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0653>, 445, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 20690
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0654>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 203
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0655>, 446, 1)  ; 「ああっ、ああんっ、ひぅっ、あ、あ、あ…\nは、春希くん…わたし、わたし…もう…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0656>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 204
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0657>, 447, 1)  ; 「はぁっ、はぁっ…あ、あぁ…ぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0658>, 448, 1)  ; あの後…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0659>, 449, 1)  ; 雪菜を抱いて、ベッドに寝かせてからも、\n俺は少しも雪菜を休ませたりはしなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0660>, 450, 1)  ; 雪菜が息を整えるよりも早く回復し、\n雪菜のなかに突き入れてかき回し、\n激しく、絡みあった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 2
PUSH INT 1
PUSH INT 9002
PUSH INT 128
PUSH INT 1
PUSH INT 1
CALL VX
OPERATOR POP

@VCALL WN(RES<0661>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 205
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0662>, 451, 1)  ; 「あぁぁんっ、んんっ、やぁ、やぁぁぁ…\n駄目、だよ…もう、おかしくなっちゃう…よぉ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0663>, 452, 1)  ; 雪菜が絶頂を迎えたり、俺が果てたりと、\n何度か身体を離す機会はあったけれど、\n俺は絶対に許さなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0664>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 206
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0665>, 453, 1)  ; 「おかしくなって…\nもっと、もっと…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0666>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 207
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0667>, 454, 1)  ; 「ああ、ああ、あぁぁ…\nう、う～っ、はっ、はっ、はっ…\nもう、もう…ぃぅぅぅぅっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0668>, 455, 1)  ; 今も雪菜は俺に押さえ込まれ、\n脚を高く持ち上げられ、\nそのまま奥深くまで突き込まれて喘いでる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0669>, 456, 1)  ; もう、手も、脚も、身体も…\n疲れが限界まで溜まって動けなくて。\nけれど、そこに快感だけが襲ってきて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0670>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 208
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0671>, 457, 1)  ; 「雪菜…俺の、雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0672>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 209
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0673>, 458, 1)  ; 「んっ、く、あぁ…う、んっ…\nわ、わたしの…わたしだけの、春希くん。\n………で、いいんだよ、ね？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0674>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 210
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0675>, 459, 1)  ; 「………ああ、雪菜。\nあっ、あっ、あぁぁっ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0676>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 211
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0677>, 460, 1)  ; 「っ…ふぅぅんっ、んんっ、あ、ああ、あぅっ…\nわたし、わたし…嬉し…やぁぁぁんっ、\nあっ、あっ、あっ…まだ、こんなに…ぃぅっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0678>, 461, 1)  ; それでも俺は、持てる力を、考える心を、\n今ここで全て捨てようと、\n雪菜のなかに潜り込む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0679>, 462, 1)  ; 何もかも、隠したまま。\n俺のしたことも、今の俺の気持ちも全部…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0680>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 212
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0681>, 463, 1)  ; 「あぁぁんっ、んんっ、んんんっ…\nはぁ、あっ、あぁぁ、春希くん…\nもっと、もっと…奥…ああああっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0682>, 464, 1)  ; 本当は、正直に話しておくべきだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0683>, 465, 1)  ; 正直に話した上で、雪菜と仲直りして、\n強く抱きしめて、気持ちを確かめて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0684>, 466, 1)  ; 俺の心がおかしな方向に傾いてしまう前に、\n雪菜にすがりつくべきだった。\nもっと早く、連絡を取るべきだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0685>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 213
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0686>, 467, 1)  ; 「ああ、ああ…すご、う、あ、ああ…\nわたし、わたし…やんっ、い、こすれ…てっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0687>, 468, 1)  ; かずさが、俺の頬に触れ目を閉じる前。\nかずさが、隣に越してくる前。\nかずさが、日本にやってくる前。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0688>, 469, 1)  ; …ストラスブールで再会した夜に、\n全てを正直に話しておくべきだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0689>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 214
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0690>, 470, 1)  ; 「あ、あ、あ…雪菜…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0691>, 471, 1)  ; たとえそれでかずさが傷ついても。\n曜子さんを落胆させたとしても。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0692>, 472, 1)  ; それでも、こうしてコンサートをすっぽかすよりは\nよっぽど傷は浅く済んだはずだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0693>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 215
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0694>, 473, 1)  ; 「んんっ、んんっ、く…あ…？\nく、来るの？　ねぇ、春希くん、また…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0695>, 474, 1)  ; 結局、何度も何度も迷ってしまったせいで、\nもっとも効果的で、もっとも残酷なことをしてしまった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0696>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 216
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0697>, 475, 1)  ; 「ああ、ああ、ああっ…\nは、はぁ、ぁぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0698>, 476, 1)  ; かずさの日本で初めての晴れ舞台…\nあいつが用意してくれた招待席に、俺はいない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0699>, 477, 1)  ; それは、俺のあいつに対しての行為の中で、\n考えうる限り、もっともあいつを傷つける裏切りだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0700>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 217
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0701>, 478, 1)  ; 「んっ、んっ、んっ…あ、あああ、あんっ、\n気持ちいい、すごい、よ、ぉ…っ、\nああっ、ああっ、ああっ………深っ、く、あ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0702>, 479, 1)  ; 俺の選択は、常に後手後手に回り、\nそして得られる結果は最悪だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0703>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 218
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0704>, 480, 1)  ; 「ああ…もう…また…\nあ、あ、あ、あ、あ…う、く、あぁぁぁっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0705>, 481, 1)  ; だってもう…\nこれくらい深くあいつを傷つけなければ…\nあいつに愛想を尽かされる俺にならなければ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0706>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 219
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0707>, 482, 1)  ; 「～～～っ！？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 15
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 15
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL FB
OPERATOR POP

PUSH INT 1
PUSH INT 20690
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 0
PUSH INT 120
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1
CALL VS
OPERATOR POP

@VCALL WN(RES<0708>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 220
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0709>, 483, 1)  ; 「あっ、あっ、あ…っ！？\nああああああああああ～っ！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0710>, 484, 1)  ; 俺は、あいつを振り切る自信がない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0711>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 221
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0712>, 485, 1)  ; 「あ、あ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0713>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 222
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0714>, 486, 1)  ; 「い、いあぁぁぁ…ああ…あああああっ、\nはぁっ、あっ、あんっ…は、あ、ぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0715>, 487, 1)  ; 雪菜の顔も、肌も、服も…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0716>, 488, 1)  ; もう、俺が染みついていない部分はどこにもなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0717>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 223
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0718>, 489, 1)  ; 「ああ、あぁぁ…っ、\n雪菜、あ、ぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0719>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 224
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0720>, 490, 1)  ; 「はぁ、ぁ…ぁぁ…春希、くぅん…\nん、ふぅ…はぁぁ…あ、ぁぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0721>, 491, 1)  ; あの、清らかな雪菜が、朗らかな雪菜が…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0722>, 492, 1)  ; 俺の激しい獣の本能に引き裂かれ、\nあられもない声を上げ、はしたない格好をさせられ、\n今、俺の下でべとべとに汚されている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0723>, 493, 1)  ; …ただ、俺の迷いを断ち切るためだけに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0724>, 494, 1)  ; 俺の間違った劣情を昇華するためだけに、\n雪菜に、こんな歪んだ征服欲をぶつけたんだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0725>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 225
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0726>, 495, 1)  ; 「お、俺、俺…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0727>, 496, 1)  ; なのに、なのに…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 180
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0728>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 226
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0729>, 497, 1)  ; 「おかえり、春希くん。\n………これで、仲直り、だよね？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0730>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 227
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0731>, 498, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0732>, 499, 1)  ; たった今、俺に引き裂かれたばかりの雪菜は。\n俺の下に組み敷かれ、身体中汚されたばかりの雪菜は。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0733>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 228
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0734>, 500, 1)  ; 「ごめんね…\n今まで色々と、嫌な態度取っちゃって…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0735>, 501, 1)  ; 清らかで、朗らかな…\nいつもの、天使のような微笑みを浮かべる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0736>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 229
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0737>, 502, 1)  ; 「っ…ぅ、ぁ…ぅぁぁ…っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0738>, 503, 1)  ; …俺が、逃げ出したくなってしまうような、微笑みを。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 150
CALL MS
OPERATOR POP

PUSH INT 150
PUSH INT 0
CALL VS
OPERATOR POP

@VCALL SetMessageE(RES<0739>, 504, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 360
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL EroMode
OPERATOR POP

STATEMENT IF _ #LABEL_16
CALL GetReplayMode
STATEMENT JMP_IF
OPERATOR POP
CALL GoTitle
OPERATOR POP

#LABEL_16
PUSH INT 314
PUSH INT 1
CALL SetGameFlag
OPERATOR POP

ARRAY_S RES<0740>  ; 3014_3
PUSH INT 0
CALL SCall
OPERATOR POP

PUSH INT 230
PUSH INT 3015
CALL VI
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 90
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

PUSH INT 1
PUSH INT 20110
PUSH INT 2
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL V
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 9
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL WN(RES<0741>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 230
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0742>, 505, 1)  ; 「…ごめんな」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0743>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 231
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0744>, 506, 1)  ; 「何が？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0745>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 232
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0746>, 507, 1)  ; 「スーツ、汚しちゃって…\nいや、スーツだけじゃなかったけど」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0747>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 233
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0748>, 508, 1)  ; 「ああ、そっち…\nそんなの全然気にしてないよ。\nクリーニング、朝までに間に合うんでしょ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0749>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 234
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0750>, 509, 1)  ; 「それでも、さ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0751>, 510, 1)  ; …『そっち』？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0752>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 235
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0753>, 511, 1)  ; 「それに、罰ゲームならさっきしてもらった。\n…パンスト、買ってきてくれたもんね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0754>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 236
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0755>, 512, 1)  ; 「それも………俺のせいだし」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0756>, 513, 1)  ; 雪菜にその罰ゲームを言いつかったとき、\n最初は、破いてしまったことが罪なのだと思ってた。\nけど実は、微妙に違ってた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0757>, 514, 1)  ; 『持ってきたパンスト、全部肌色なの。\nこれじゃ隠せない、春希くんのキスマーク…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0758>, 515, 1)  ; …濃い色のストッキングを探すのに、\nコンビニを三軒ハシゴした。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0759>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 237
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0760>, 516, 1)  ; 「明日、何時に出る？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0761>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 238
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0762>, 517, 1)  ; 「１０時過ぎには会社に顔出したいから、\nここは早めに出るつもり…６時くらいかな」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0763>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 239
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0764>, 518, 1)  ; 「そっか…\nもう、４時間くらいしか眠れないね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0765>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 240
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0766>, 519, 1)  ; 「ああ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0767>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 241
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0768>, 520, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0769>, 521, 1)  ; 雪菜を抱いているときにも、\n何度か目を奪われたその時計は、\n今は、午前２時５分を表示してた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0770>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 242
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0771>, 522, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0772>, 523, 1)  ; もう、何もかも、終わってた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0773>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 243
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0774>, 524, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0775>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 244
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0776>, 525, 1)  ; 「…なに？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0777>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 245
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0778>, 526, 1)  ; 「え？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0779>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 246
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0780>, 527, 1)  ; 「ずっとこっち、見てたから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0781>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 247
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0782>, 528, 1)  ; 「それは…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0783>, 529, 1)  ; 俺の胸に顔を埋め、上目遣いで\n雪菜はじっと俺の顔を見つめてた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0784>, 530, 1)  ; その表情は、\nさっきまでの激しい行為の余韻に浸ってるふうでもなく、\n仲直り後の甘く蕩けた態度から来てるふうでもなく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0785>, 531, 1)  ; どちらかと言えば、悲しそうな…\n何かに耐えているような、\nこの場と状況にそぐわないものだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0786>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 248
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0787>, 532, 1)  ; 「明日、外回り辛いなぁって。\n脚、パンパンに張っちゃってるから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0788>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 249
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0789>, 533, 1)  ; 「…悪い、本当に。\n色々と無茶した」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0790>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 250
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0791>, 534, 1)  ; 「ううん、いい…\n恋人の勲章、だもんね。\n仲直りの、しるしだもんね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0792>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 251
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0793>, 535, 1)  ; 「雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0794>, 536, 1)  ; あれは多分、俺に見せるつもりのなかった\n表情なんだと思う。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0795>, 537, 1)  ; …まるで、今の俺が雪菜に隠れてするもののように。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0796>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 252
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0797>, 538, 1)  ; 「ね、春希くん…\nわたし、本気で嬉しかったんだよ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0798>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 253
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0799>, 539, 1)  ; 「…あんなに酷いことしたのに？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0800>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 254
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0801>, 540, 1)  ; 「そっちじゃないよぉ…\nあなたが、何もかも投げ打って、\nわたしのところに駆けつけて来てくれたこと」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0802>, 541, 1)  ; その証拠に、俺に見られてると意識したときの雪菜は、\nいつもの、花が咲いたような笑顔を見せてくれる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0803>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 255
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0804>, 542, 1)  ; 「休み、だったんだよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0805>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 256
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0806>, 543, 1)  ; 「それでも、大阪まで…\nわたしが会いたいと思ったそのときに…\nわたしの方から連絡する約束だったのに…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0807>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 257
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0808>, 544, 1)  ; 「ごめんな…約束破って」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0809>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 258
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0810>, 545, 1)  ; 「嬉しすぎる反則だから、いい。\nもういいの…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0811>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 259
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0812>, 546, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0813>, 547, 1)  ; そして、その満面の笑顔をたたえながら…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0814>, 548, 1)  ; やっぱり雪菜は、\nコンサートのことに触れようとしない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0815>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 260
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0816>, 549, 1)  ; 「寝よ？\n春希くん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0817>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 261
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0818>, 550, 1)  ; 「あ、ああ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0819>, 551, 1)  ; きゅっと、俺の身体を抱きしめて、\n胸に口づけて。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0820>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 262
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0821>, 552, 1)  ; 「おやすみ、なさい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1902
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 30
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL WN(RES<0822>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 263
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0823>, 553, 1)  ; 「おやすみ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0824>, 554, 1)  ; とうとう雪菜は、最後の最後まで\n俺が徹底的に避け続けていた今日という日の意味を、\n完全にスルーしてしまった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0825>, 555, 1)  ; …なかったことにしていいのか？\nこのまま、元の日常に戻っていいってことなのか？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0826>, 556, 1)  ; 俺が抱えてる一番大きな罪も、\nこのまま、事実を隠蔽してしまえば許してくれるのか？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0827>, 557, 1)  ; そのチャンスを、与えてくれてるのか？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0828>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 264
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0829>, 558, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0830>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 265
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0831>, 559, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0832>, 560, 1)  ; それとも、俺が自ら事実を語ることを、\n待ってるんだろうか？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0833>, 561, 1)  ; かずさと過ごしてたって、\nかずさに揺れたって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0834>, 562, 1)  ; 偶然ほんの少し会っただけで、\nそのことを話さなかっただけで、\n一月近くも引きずってしまうって証明されたのに？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0835>, 563, 1)  ; そんなこと、本当に望んでるんだろうか？\n今、明らかにお互い隠し事をしてる俺たちが？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0836>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 266
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0837>, 564, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

@VCALL WN(RES<0838>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 267
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0839>, 565, 1)  ; 「なぁ、雪菜…まだ起きてる？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0840>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 268
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0841>, 566, 1)  ; 「…なに？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0842>, 567, 1)  ; だったら、俺は…\nだから俺は…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1902
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 30
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 16
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL WN(RES<0843>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 269
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0844>, 568, 1)  ; 「受け取って…もらいたいものがあるんだ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0845>, 569, 1)  ; さっき、ベッドの下に隠しておいた、\n“それ”を取り出す。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0846>, 570, 1)  ; 一月前、パリで買ってきていた…\nストラスブールで渡せなかった…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0847>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 270
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0848>, 571, 1)  ; 「え…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0849>, 572, 1)  ; 俺の差し出した小箱を前に、雪菜が固まる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 150
OPERATOR NEGATE
PUSH INT 60
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 100
PUSH INT 60
PUSH INT 3500
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL WN(RES<0850>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 271
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0851>, 573, 1)  ; 「仲直りの、しるしに…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0852>, 574, 1)  ; それはきっと、あの時の…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0853>, 575, 1)  ; 二年前の俺のプレゼントと、\n外箱の造形がそっくりだったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0854>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 272
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0855>, 576, 1)  ; 「………開けてもいい？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0856>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 273
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0857>, 577, 1)  ; 「…うん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0858>, 578, 1)  ; あの時は、緊張しかなかった。\n額から噴き出した汗が、やけに冷たかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0859>, 579, 1)  ; そして今は…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8287
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0860>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 274
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0861>, 580, 1)  ; 「………ぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0862>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 275
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0863>, 581, 1)  ; 「ずっと、そんなオモチャじゃ\n雪菜に悪いなって…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0864>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 276
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0865>, 582, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0866>, 583, 1)  ; 多分、雪菜は中身にすぐ気づいたんだと思う。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0867>, 584, 1)  ; だからその表情に、驚きも戸惑いも少なく、\n厳かな、覚悟を決めたような色が浮かんでいたんだと思う。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0868>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 277
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0869>, 585, 1)  ; 「受け取って、欲しい。\nできれば『そういう意味』で」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0870>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 278
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0871>, 586, 1)  ; 「春希くん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0872>, 587, 1)  ; 雪菜が、チャンスを与えてくれるなら…\n俺は、全てを闇に葬り去る。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0873>, 588, 1)  ; かずさを、全部忘れるんだ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0874>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 279
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0875>, 589, 1)  ; 「別に、今すぐでなくてもいい。\n雪菜の仕事のこともあるし、\n俺の稼ぎのことだってあるから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0876>, 590, 1)  ; 俺には、元から雪菜しかいないんだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0877>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 280
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0878>, 591, 1)  ; 「ただ…\n俺がそれを望んでいるってことだけは、\n覚えておいて欲しいんだ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0879>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 281
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0880>, 592, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0881>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 282
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0882>, 593, 1)  ; 「………しい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0883>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 283
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0884>, 594, 1)  ; 「え…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0885>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 284
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0886>, 595, 1)  ; 「嬉しいよ、春希くん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0887>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 285
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0888>, 596, 1)  ; 「雪菜…それって…？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0889>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 286
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0890>, 597, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0891>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 287
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0892>, 598, 1)  ; 「それって…\nそういう意味だって、取っていいのかな？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0893>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 288
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0894>, 599, 1)  ; 「………うん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0895>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 289
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0896>, 600, 1)  ; 「っ…雪菜」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0897>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 290
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0898>, 601, 1)  ; 「春希、くん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 180
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0899>, 602, 1)  ; これで、いい。\nこれしかないんだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0900>, 603, 1)  ; 俺たち、一月ほど回り道してしまったけれど…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0901>, 604, 1)  ; これで、何もかも元通りだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0902>, 605, 1)  ; 俺はこの冬、かずさになんか会わなかった。\nフランスでも、日本でも。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0903>, 606, 1)  ; 来日も、独占取材も、今日のコンサートも、\n全ては遠い、違う世界での出来事だ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0904>, 607, 1)  ; あれは、俺の願望が…\nいや、呪縛が見させた幻なんだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0905>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 291
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0906>, 608, 1)  ; 「結婚しよう。\n結婚しよう、雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0907>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 292
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0908>, 609, 1)  ; 「………はい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0909>, 610, 1)  ; 思い出は、思い出のまま…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0910>, 611, 1)  ; 美しくて、儚くて…\nいつか、消えるものだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

CALL IfSkip
OPERATOR POP

@VCALL SetMessageE(RES<0911>, 612, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 330
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

STATEMENT IF _ #LABEL_17
PUSH INT 4
CALL GetGameFlag
PUSH INT 1
OPERATOR EQ
STATEMENT JMP_IF
OPERATOR POP
PUSH INT 0
PUSH INT 8429
PUSH INT 60
PUSH INT 1
PUSH INT 10
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2097
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL WN(RES<0912>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 293
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0913>, 613, 1)  ; 「ん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0914>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 294
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0915>, 614, 1)  ; 「んぅ…すぅ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 0
PUSH INT 70
PUSH INT 240
CALL SEV
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0916>, 615, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 12
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL WN(RES<0917>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 295
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0918>, 616, 1)  ; 「っ…あ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0919>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 296
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0920>, 617, 1)  ; 「…キタナイな、わたし」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0921>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 297
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0922>, 618, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 10
CALL SES
OPERATOR POP

PUSH INT 1
PUSH INT 8060
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0923>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 298
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0924>, 619, 1)  ; 「春希くん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0925>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 299
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0926>, 620, 1)  ; 「あなたは、卑怯だよ…\n本気すぎるよ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0927>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 300
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0928>, 621, 1)  ; 「また、わたしを騙そうとするんだね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0929>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 301
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0930>, 622, 1)  ; 「わたしが『騙して欲しい』って願ったから、\n一生懸命、わたしの望み通りに振舞おうとするんだね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0931>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 302
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0932>, 623, 1)  ; 「そうやって、わたしを堕落させるんだね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0933>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 303
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0934>, 624, 1)  ; 「だったら、お願い…\nもう、中途半端はやめて」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0935>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 304
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0936>, 625, 1)  ; 「絶対に、最後まで騙し通して。\nわたしにこれ以上、辛い思いをさせないで」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0937>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 305
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0938>, 626, 1)  ; 「ずっとずっと隠し通して、全部秘密にして…\n最後の最後にわたしを選んでくれたらそれでいい…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0939>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 306
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0940>, 627, 1)  ; 「………っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0941>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 307
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0942>, 628, 1)  ; 「ねぇ、かずさ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0943>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 308
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0944>, 629, 1)  ; 「今さら、返せないよ？\nだって…五年だよ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0945>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 309
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0946>, 630, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8060
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 8429
PUSH INT 30
PUSH INT 1
PUSH INT 70
PUSH INT 0
CALL SEP
OPERATOR POP

CALL IfSkip
OPERATOR POP

@VCALL WN(RES<0947>)  ; 雪菜
PUSH INT 2
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 310
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0948>, 631, 1)  ; 「キタナイな、わたし…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

PUSH INT 0
PUSH INT 180
CALL SES
OPERATOR POP

PUSH INT 360
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

#LABEL_17
ARRAY_S RES<0949>  ; CATCH3
PUSH INT 100
CALL SCall
OPERATOR POP

ARRAY_G 26
PUSH INT 0
OPERATOR MOV
OPERATOR POP
STATEMENT IF _ #LABEL_18
ARRAY_G 23
PUSH INT 2
OPERATOR EQ
STATEMENT JMP_IF
OPERATOR POP
STATEMENT IF _ #LABEL_18
ARRAY_G 24
PUSH INT 1
OPERATOR EQ
STATEMENT JMP_IF
OPERATOR POP
ARRAY_G 26
PUSH INT 1
OPERATOR MOV
OPERATOR POP

#LABEL_18
STATEMENT IF _ #LABEL_19
ARRAY_G 26
PUSH INT 1
OPERATOR EQ
STATEMENT JMP_IF
OPERATOR POP
PUSH INT 2013
PUSH INT 1
PUSH INT 28
PUSH INT -1
PUSH INT 1
CALL Calender
OPERATOR POP

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

PUSH INT 1
PUSH INT 3104
PUSH INT 60
PUSH INT 1
PUSH INT 70
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2076
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL WN(RES<0950>)  ; かずさ
PUSH INT 1
PUSH INT 9000
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0951>, 632, 1)  ; 『でも結局、\n誰もあたしを落とすことなんかできなかった…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 2902
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL WN(RES<0952>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 311
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0953>, 633, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0954>)  ; かずさ
PUSH INT 1
PUSH INT 9001
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0955>, 634, 1)  ; 『だってあたしは、母さんとは全然違ったから。\n男に媚びないどころか、いつも敵視してたから』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 2902
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0956>, 635, 1)  ; 月曜日、朝８時過ぎ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0957>, 636, 1)  ; どうしても駅まで送るという雪菜を諭して、\n軽いキスとともにホテルを出たのが二時間前。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0958>, 637, 1)  ; 東京へと向かう新幹線の中、\n俺は、昨夜の余韻を気合で切り替え、\n仕事モードに移行する。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0959>)  ; かずさ
PUSH INT 1
PUSH INT 9002
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0960>, 638, 1)  ; 『一度、思いっきり罵ってやると、\nすぐにプライド傷つけられて、\n二度と近寄っては来ないんだよ、あの手の連中は』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 2902
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL WN(RES<0961>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 312
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0962>, 639, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0963>, 640, 1)  ; 昨夜までは、どうしてもこの声が聴けなくて、\nずっと滞ってしまっていたインタビューのテキスト起こし。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0964>, 641, 1)  ; 今は、雪菜にもらった勇気を奮い起こし、\nあいつの、最後のメッセージをテキストへと変換する。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0965>)  ; かずさ
PUSH INT 1
PUSH INT 9003
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0966>, 642, 1)  ; 『あたしより金持ちだからあたしに興味のない奴、\n金がなくてもプライドだけは高くて、\nあたしの態度が許せなくなった奴…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 2902
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0967>, 643, 1)  ; 文字情報になってしまえば、\nこれはもう、あいつの声じゃなくなる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0968>, 644, 1)  ; あいつの、匂いが消えてくれるから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0969>)  ; かずさ
PUSH INT 1
PUSH INT 9004
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0970>, 645, 1)  ; 『ああ、そうだ…\n金の代わりに才能って置き換えても、\n当てはまる奴らばっかりだった』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 2902
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL WN(RES<0971>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 313
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0972>, 646, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0973>, 647, 1)  ; ほんの数日前…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0974>, 648, 1)  ; レコーダーを挟んで、\nあいつは俺につまらなそうな表情で色々と語り…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0975>, 649, 1)  ; 俺は、その態度が気にくわなくて、\n必死で挑発したり、罠を張ったりしたんだっけ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0976>, 650, 1)  ; あいつの、気を引こうとしたんだっけ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0977>)  ; かずさ
PUSH INT 1
PUSH INT 9005
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0978>, 651, 1)  ; 『そうだよ、あたしもそいつらと同じだ。\nプライドが高いだけの屑みたいな人間で、\n近づく価値も、口説く値打ちもない』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 2902
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL WN(RES<0979>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 314
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0980>, 652, 1)  ; 「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0981>, 653, 1)  ; この後だ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0982>, 654, 1)  ; そんな俺の態度に業を煮やしたかずさが、\nほんの一言だけ、ぽろりと漏らした本音。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0983>, 655, 1)  ; 今思えば、この夜から、\n俺たちの関係がずれてしまったのかもしれない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0984>, 656, 1)  ; 取材対象者と取材者から、\n単なる、因縁の二人へ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0985>, 657, 1)  ; 冬馬かずささんと北原記者から、\nかずさと、俺へ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

PUSH INT 0
PUSH INT 8411
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL WN(RES<0986>)  ; かずさ
PUSH INT 1
PUSH INT 9006
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0987>, 658, 1)  ; 『ええと…\nこれでいい、はずだよな？』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0988>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 315
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0989>, 659, 1)  ; 「………え？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0990>, 660, 1)  ; けれど…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 1
PUSH INT 2076
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 150
OPERATOR NEGATE
PUSH INT 20
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 150
PUSH INT 20
PUSH INT 9000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 26
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL WN(RES<0991>)  ; かずさ
PUSH INT 1
PUSH INT 9007
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0992>, 661, 1)  ; 『春希…聞こえてるか？\nええと…冬馬、かずさです。\nま、わかってるとは思うけどさ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0993>, 662, 1)  ; そこから流れてきたのは、\n俺が知っているはずのあの言葉じゃなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0994>)  ; かずさ
PUSH INT 1
PUSH INT 9008
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0995>, 663, 1)  ; 『現在、１月２５日、金曜の午後２時。\nお前と合流する少し前。\n…今から付属に向かうところだよ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0996>, 664, 1)  ; それどころか、\n俺には録音した覚えのないメッセージ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0997>)  ; かずさ
PUSH INT 1
PUSH INT 9009
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<0998>, 665, 1)  ; 『昨日お前、あたしの部屋にこれ忘れてったろ。\nなんて凡ミスだ。まったく呆れる。\n仕方ないから、こっそり返しといてやるよ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0999>, 666, 1)  ; インタビュアーではなく、インタビューイが仕掛けた、\nほんのちょっとした、イタズラ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1000>)  ; かずさ
PUSH INT 1
PUSH INT 9010
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1001>, 667, 1)  ; 『けどその前に、ちょっと時間差でメッセージ…\nお前の返事とか聞くつもりないから電話はしない。\n…そのくらいは、許してくれるよな』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1002>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 316
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<1003>, 668, 1)  ; 「かず、さ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL WN(RES<1004>)  ; かずさ
PUSH INT 1
PUSH INT 9011
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1005>, 669, 1)  ; 『ええと…これから先は推定の話になるんだけど…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1006>)  ; かずさ
PUSH INT 1
PUSH INT 9012
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1007>, 670, 1)  ; 『あたし、さ…\n今からお前に、告白する。\nそして、玉砕すると思う』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1008>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 317
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<1009>, 671, 1)  ; 「～～～っ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<1010>, 672, 1)  ; イタズラ、じゃなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<1011>, 673, 1)  ; そんな生易しいものじゃ、なかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1012>)  ; かずさ
PUSH INT 1
PUSH INT 9013
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1013>, 674, 1)  ; 『わかってるんだ、お前には雪菜がいるって。\nだから、あたしを受け入れられないって、\nそんなこと最初からわかってるんだ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1014>)  ; かずさ
PUSH INT 1
PUSH INT 9014
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1015>, 675, 1)  ; 『けどさ、けど…\nそれでも、もう一度だけ、あたしは雪菜を裏切る』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1016>)  ; かずさ
PUSH INT 1
PUSH INT 9015
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1017>, 676, 1)  ; 『春希に、今の本当の想いを伝えられたらって…\nあたしの五年間、わかってもらえたらって…\nそんな都合のいい夢が、まだ捨てられないんだ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1018>)  ; かずさ
PUSH INT 1
PUSH INT 9016
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1019>, 677, 1)  ; 『雪菜にとっては酷い話だけどな…\n後で謝っておいてくれよな？　春希』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1020>)  ; かずさ
PUSH INT 1
PUSH INT 9017
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1021>, 678, 1)  ; 『それでさ…\nもう、聞いたんだよな？\nあたしの告白、全部聞いちゃったんだよな？』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1022>)  ; かずさ
PUSH INT 1
PUSH INT 9018
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1023>, 679, 1)  ; 『笑っちゃうだろ？\n全然似合わないだろ？\n馬鹿かお前はって思うよなぁ？』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1024>)  ; かずさ
PUSH INT 1
PUSH INT 9019
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1025>, 680, 1)  ; 『だって、だってさ…\nあたしみたいなのが…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1026>)  ; かずさ
PUSH INT 1
PUSH INT 9020
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1027>, 681, 1)  ; 『あたしみたいな、ピアノしか能がない、\n他にはなにもできない欠陥品が、\nお前みたいな普通の男、好きになるなんてさ…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1028>)  ; かずさ
PUSH INT 1
PUSH INT 9021
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1029>, 682, 1)  ; 『五年前の、あの時から…\nずっとずっと、忘れられないなんてさ…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1030>)  ; かずさ
PUSH INT 1
PUSH INT 9022
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1031>, 683, 1)  ; 『………なんてな。\n今さら言ってもしょうがないことだ。\n忘れてくれ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1032>)  ; かずさ
PUSH INT 1
PUSH INT 9023
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1033>, 684, 1)  ; 『…じゃなかった、今のは嘘だよ。\nその時のあたしもそう言っただろ？\nお前を、からかっただけだよ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1034>)  ; かずさ
PUSH INT 1
PUSH INT 9024
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1035>, 685, 1)  ; 『だから、だからさ、春希…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1036>)  ; かずさ
PUSH INT 1
PUSH INT 9025
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1037>, 686, 1)  ; 『その時のあたしもそう言ったと思うけどさ…\nコンサート、絶対に来てくれよな？』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1038>)  ; かずさ
PUSH INT 1
PUSH INT 9026
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1039>, 687, 1)  ; 『雪菜と、一緒でもいい。\nいや、是非雪菜と一緒に来てくれよ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1040>)  ; かずさ
PUSH INT 1
PUSH INT 9027
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1041>, 688, 1)  ; 『そしたらあたしは、お前の…\nお前たちのためだけに、一生懸命弾いてみせるから。\n自分でも、最高の演奏ができるって自信があるから』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1042>)  ; かずさ
PUSH INT 1
PUSH INT 9028
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1043>, 689, 1)  ; 『だってあたしは、お前たちの結婚式には行けない。\n…距離も、心も、行くには辛すぎるから』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1044>)  ; かずさ
PUSH INT 1
PUSH INT 9029
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1045>, 690, 1)  ; 『だから明日のコンサートが、\nお前たちへの、最後のプレゼントになる』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1046>)  ; かずさ
PUSH INT 1
PUSH INT 9030
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1047>, 691, 1)  ; 『来てくれる、だけでいい。\nそしたらあたしはもう、お前のこと諦めるから。\nその日限りで、お前への想いを昇華するから』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1048>)  ; かずさ
PUSH INT 1
PUSH INT 9031
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1049>, 692, 1)  ; 『だから、その日だけは…\nコンサートの時だけは、あたしだけを見ててくれ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1050>)  ; かずさ
PUSH INT 1
PUSH INT 9032
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1051>, 693, 1)  ; 『お願い、します』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1052>)  ; かずさ
PUSH INT 1
PUSH INT 9033
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1053>, 694, 1)  ; 『………追伸』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1054>)  ; かずさ
PUSH INT 1
PUSH INT 9034
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1055>, 695, 1)  ; 『人の寝顔を勝手に撮るな。\nお前じゃなかったらぶん殴ってるところだ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<1056>)  ; かずさ
PUSH INT 1
PUSH INT 9035
PUSH INT -1
PUSH INT 256
PUSH INT 0
PUSH INT 0
CALL VX
OPERATOR POP

@VCALL SetMessageE(RES<1057>, 696, 1)  ; 『じゃあ、な』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 180
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL WN(RES<1058>)  ; 春希
PUSH INT 0
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 318
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<1059>, 697, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 80
OPERATOR NEGATE
PUSH INT 10
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 80
PUSH INT 10
PUSH INT 3000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 8427
PUSH INT 0
PUSH INT 0
PUSH INT 120
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 180
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<1060>, 698, 1)  ; いつの間にか、再生は止まってた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<1061>, 699, 1)  ; けれど俺は、ＩＣレコーダーも、ノートＰＣもそのままに、\nただ、俯いたまま微動だにしなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<1062>, 700, 1)  ; 上も、向けなかった。\nだって、いつ窓を見てしまうかわからなかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<1063>, 701, 1)  ; それほどまでに、\n自分の今の顔を見るのが嫌だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<1064>, 702, 1)  ; 自分の今の心を覗くのが、\nとてつもなく、恐ろしかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

#LABEL_19
ARRAY_S RES<1065>  ; 3016
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
