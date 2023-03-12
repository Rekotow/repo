!RESOURCE "1011_020.csv"

#Z00
OPERATOR POP
CALL run
OPERATOR POP

PUSH INT 196
PUSH INT 1011
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

STATEMENT IF _ #LABEL_1
PUSH INT 0
STATEMENT JMP_IF
OPERATOR POP

#LABEL_1
STATEMENT IF #LABEL_2 #LABEL_3
PUSH INT 0
CALL GetGameFlag
PUSH INT 0
OPERATOR EQ
STATEMENT JMP_IF
OPERATOR POP

#LABEL_2
STATEMENT ELSE
PUSH INT 10
PUSH INT 120
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL WN(RES<0001>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 196
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0002>, 0, 1)  ; 「『１０で神童、１５で秀才、\nハタチ過ぎればただの人』って、よく言うけど…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0003>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 197
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0004>, 1, 1)  ; 「今のあなたは、昔よりよっぽど荒削りで、\n原石にまで戻ってしまってるわね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0005>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 198
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 2, 1)  ; 「それって…下手になったってこと？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0007>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 199
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 3, 1)  ; 「ありていに言えばそうなんだけどね…\nでも相変わらず、私の若い頃よりは上。\nそこが我が子ながら許し難いところ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0009>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 200
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0010>, 4, 1)  ; 「なんだよそれ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0011>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 201
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0012>, 5, 1)  ; 「上手くはなってないけど、\n伸びしろが劇的に増えたって言ってるの」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0013>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 202
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0014>, 6, 1)  ; 「要するに、どういうこと？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0015>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 203
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 7, 1)  ; 「マーティン・フリューゲルって爺さん知ってる？\n一応、この世界じゃ古株なんだけど」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0017>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 204
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0018>, 8, 1)  ; 「それ母さんの恩師じゃ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0019>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 205
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0020>, 9, 1)  ; 「最近じゃ年に２人までしか弟子取らないとか、\nふざけたこと言ってるのよ。もう長くないわね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0021>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 206
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 10, 1)  ; 「だってもう７０過ぎてるんじゃ？\nまだ現役でいる方が凄いって」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0023>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 207
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 11, 1)  ; 「来週から彼の選考が始まるわ。受ける？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0025>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 208
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0026>, 12, 1)  ; 「受けるって…まさか…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0027>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 209
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0028>, 13, 1)  ; 「もちろんウィーン。\nあの人、もう飛行機乗ったらポックリ逝くから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0029>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 210
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 14, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0031>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 211
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0032>, 15, 1)  ; 「あなた、最近向こう行ってないから、\n最初だけは私も付き添うけど、どうする？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0033>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 212
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0034>, 16, 1)  ; 「どうするって…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0035>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 213
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0036>, 17, 1)  ; 「やっぱり行くのやめる？\nもう一年くらい日本で遊んでても構わないけど？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0037>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 214
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0038>, 18, 1)  ; 「それは…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0039>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 215
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 19, 1)  ; 「ま、いいわ。少し考えてみなさい。\nただ、明後日には発つから猶予は一日だけね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0041>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 216
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0042>, 20, 1)  ; 「え…それだけ？\nそんな、ちょっと待ってよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0043>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 217
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0044>, 21, 1)  ; 「決めかねてるなら\n今回はやめておいた方がいいかもね。\n生活、全然変わっちゃうし」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0045>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 218
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 22, 1)  ; 「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0047>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 219
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 23, 1)  ; 「とにかく今日はそっちに帰るから。\nその時にまた話し合いましょう。\nそれじゃ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0049>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 220
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0050>, 24, 1)  ; 「待って、母さん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0051>)  ; 曜子
PUSH INT 16
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 221
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0052>, 25, 1)  ; 「ん？　なに？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL WN(RES<0053>)  ; かずさ
PUSH INT 1
PUSH INT 256
PUSH INT 0
PUSH INT 0
PUSH INT 222
CALL VV
OPERATOR POP

@VCALL SetMessageE(RES<0054>, 26, 1)  ; 「………わかった、行く」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

PUSH INT 1
OPERATOR NEGATE
CALL WN
OPERATOR POP

@VCALL SetMessageE(RES<0055>, 27, 1)  ; ………
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0056>, 28, 1)  ; ……
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0057>, 29, 1)  ; …
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

ARRAY_S RES<0058>  ; CATCH
PUSH INT 100
CALL SCall
OPERATOR POP

#LABEL_3
ARRAY_S RES<0059>  ; 1011_030
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
