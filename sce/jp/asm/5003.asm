!RESOURCE "5003.csv"

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
PUSH INT 5003
CALL VI
OPERATOR POP

ARRAY_G 4
PUSH INT 3
OPERATOR MOV
OPERATOR POP
PUSH INT 1
CALL NevelMode
OPERATOR POP

PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0004>, 0, 1)  ; 第三章　秋\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 1
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0005>, 1, 0)  ; 「よ、おはよ冬…」\k\n「おい委員長？　北原！」\k\n「あ、は～い！」\k\n「配布物あるから今すぐ職員室まで来てくれ。実は回収期限が明後日なんだ…」\k\n「…それ、いつから机の上に詰まれてたんです？」\k\n「…まぁ細かいことはいいじゃないか。とにかく至急頼むな」\k\n「そりゃまぁ、何とかしますけど」\k\n「いつも悪いな、じゃあとにかく持ってってくれ。結構重いんだこれが」\k\n　―………\k\n　夏休みが明けて二週間。\k\n　九月も中旬になり、生徒側にも教師側にも、そろそろ夏休みを引きずっている者がいなくなった頃。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 2, 1)  ; 「あ、北原君、お昼休みに悪いんだけどさ、ちょっと時間もらえる？」\k\n「なに？　なんか困りごと？」\k\n「うん、結構深刻なことでね…ほら、今日って図書委員の定期会の日じゃない？」\k\n「ああ、そういえば…あれ？　今日原田さんって…」\k\n「そうなのよ…宏美、風邪でダウンしちゃって、代役立てないといけないんだけど」\k\n「あ…」\k\n「代役立てないといけないのよ」\k\n「俺、基本的には関係ないよね？」\k\n「うん、そうだね」\k\n「…なのにその笑顔はなに？」\k\n「今日、結構重要な話らしいんだよね。宏美から絶対に誰か出てって頼まれてて…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 3, 1)  ; 「………」\k\n「………」\k\n「…今から図書室？」\k\n「さぁすが委員長！　いざと言うときもそうでない時も頼りになるぅ！」\k\n「そういうのはいいから。それより五時間目遅れたら先生に言い訳しといて」\k\n「任せて！　代返だってなんだってやっちゃうから」\k\n「やめて。その声でそれだけはやめて…」\k\n　―………っ。\k\n　三年Ｅ組委員長北原春希は相変わらず、というには今まで以上に周囲にこき使われていた。\k\n　今まで通りの委員長の仕事はもちろん、三年来ずっと信頼され続けてきた教師たちからの言いつけ。新たに信頼を勝ち得たクラスメイトからの野暮用。それに…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 4, 1)  ; 「よ～春希、それじゃ今日も行こうか～」\k\n「親志…」\k\n「ホームページ、とりあえずだけど立ち上げてみたんだ。それで今日は色々と意見を聞かせてもらって…」\k\n「いや、あのさ、そういうの委員会メンバーでなんとかならないか？」\k\n「駄目駄目！　あいつらなんかスキルも主張もねえんだもん。口を揃えて『春希がいいって言ったらいい』の一点張りなんだぜ？」\k\n「…いや、俺今年は実行委員じゃないんだけど」\k\n　それに、二学期が始まると同時に動き出した学園祭の実行委員のヘルプまで割り込み、もはや休憩時間も放課後もない状況に陥っていた。\k\n「上級生を差し置いて仕切りまくった去年と一昨年の自分を恨むんだな」\k\n「いや、それは先輩たちにも悪いことしたとは思うよ？　けど今年はさぁ…」\k\n「バンド練習か？　けどどうせステージ上がんないんだろお前は？　だったら別に毎回参加しなくてもいいじゃん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0009>, 5, 1)  ; 「そりゃそうかもしれないけど…もしもってことがあるかもしれないし」\k\n「武也が病気で倒れたりするかよ。女に刺されるならまだしも」\k\n「…そっちの可能性がそんなに低いと思うか？」\k\n「ほら、いいからいいから。お前がいないとこっちが進まないんだよ！」\k\n「あ、こら、離せ！　わかった、わかったからちょっとだけ待ってくれ！」\k\n　―～っ！\k\n「じゃあな！　冬馬」\k\n「………」\k\n「………気をつけて帰れよ～」\k\n「………………」\k\n「ほら行くぞ春希！」\k\n「あ、ああ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 0
PUSH INT 1011
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 40
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0010>, 6, 1)  ; 　隣の席で窓の外に目をやり、こちらのやり取りにまるで興味なさそうなかずさから返事をもらえないまま、学園祭実行委員『じゃないけどメインスタッフ』の北原は、もはや親友と言ってもいいくらいに親しくなった早坂に連れられて教室を出て行った。\k\n　そして、それから数秒間、誰かさんが呼吸を整える程度の時間が過ぎて…\k\n「………………………～～～っ！」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 6
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 9900
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 10
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 45
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 2
PUSH INT 407
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 8090
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 10
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 8167
PUSH INT 0
PUSH INT 0
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
PUSH INT 90
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0011>, 7, 0)  ; 　直後の、窓際の列の机が全部将棋倒し式に転がっていった瞬間の大音響は、幸いなことに廊下の先を行く北原の耳には届かなかった。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
CALL MS
OPERATOR POP

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
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

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1005
PUSH INT 0
PUSH INT 90
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

PUSH INT 150
PUSH INT 60
PUSH INT 6000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 9715
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0012>, 8, 0)  ; 　その日の第二音楽室は、久々に“ある意味”気合の入った激しいリサイタルが繰り広げられた。\k\n　階下の教室で練習していた吹奏楽部の音をたった一台でかき消していしまうほどのピアノに、当の吹奏楽部員たちは『音楽科の嫌味』を感じ、モチベーションをだだ落ちにしていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 9, 1)  ; 　けれど今日は、そのピアノの大音響にギターソロは混じってこなかった。\k\n\n　だから、かずさの演奏はボルテージが上がる一方だった。\k\n　もちろん、ヘタクソな騒音に悩まされないために伸び伸びと弾けているとか、そういう前向きな理由ではなく…\k\n「このイエスマン！　風見鶏！　玉虫野郎！」\k\n　この罵詈雑言を他人に聞かれないためのフォルティッシシモだった。\k\n\n　夏休みが明けてから、かずさと北原はほとんど言葉を交わしていない。\k\n　それこそ、あの日の劇的な邂逅はなんだったんだと言うくらいに。\k\n　『いくら委員長が親身になって声を掛けても不良娘がことごとく無視するから』と、多分世間にはそう認識されているはずだった。\k\n「どうして練習に来ないんだ！　お前に残された時間なんか全然ないって本当にわかってるのか！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0014>, 10, 1)  ; 　けれど事実は、というか、かずさの中だけの真実はまるで正反対で、そういう事態に陥った原因は全て北原の方にあるらしかった。\k\n　確かにここ数日、かずさは北原からの呼びかけをことごとく無視していた。\k\n　けれどそれは、『何を言われても反応しない』という訳ではない。\k\n　かずさにしてみれば、彼が正解を引き当てないのが何もかも悪い。\k\n　『おはよう』なんかどうでもいい。\k\n　『さよなら』なんて知ったこっちゃない。\k\n　『宿題やってきたか？』話にならない。\k\n\n　『またギター教えて欲しいんだけど』\k\n　そのたった一言がどうして言えないのか…\k\n\n「だからちっとも上手くならないんだ！　全然わかってない！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 11, 1)  ; 　第二音楽室から遠隔操作で彼を指導し始めて二十日ほどで、かずさは早速壁にぶち当たっていた。\k\n　ピアノで、ベースで、ドラムで、おおよそ自分の素質とセンスと天才の全てをつぎ込んで支援しているのに、努力型の秀才君は、こと楽器に関しては相変わらずその才覚の片鱗をなかなか見せてくれない。\k\n　相手の能力の限界や伸びしろや成長速度が掴めない。\k\n　子供の頃、友達がどんどんピアノ教室から脱落していき、徐々に交流がなくなってしまうのを歯痒く思っていたあの頃を思い出してしまう。\k\n　だから、かずさはますます苛つきを重ねていく。\k\n　今から考えれてみれば、最初から何もかも無理があったのかもしれない。\k\n　あまり…というか全然忍耐力のない指導者。\k\n　指導経験の…というかコミュニケーション能力の未熟さが招く意思疎通の不徹底。\k\n　…そもそも、約束もなく指導者の正体すら知らない、それどころか指導であると相手に認識されているかもわからない練習方法。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 12, 1)  ; 　…思い返せば返すほど、『いやそりゃ無茶だろ』と委員長に説教されそうな出たとこ勝負という気もしてくる。\k\n「本当ど素人は…もうちょっと危機感持てよ…っ」\k\n　そして焦りのあまり心にもないことを呟き、その言葉が実は心の中の真実なのではないかと恐れ、それがまた新たな焦りを生むという悪循環に陥っていく。\k\n　もちろん、かずさは気づいていない。\k\n　自分の中に、大きな兆しが芽生えていることなんか。\k\n　今、自分が焦り、苛つき、怒りをおぼえているものが、ここ数年見向きもしなかった、『他人事』であることなんか。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
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

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
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

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 7
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0017>, 13, 1)  ; 「おはよう。今日はいつもより余計に五分遅いな」\k\n「………」\k\n「しかも目が赤いぞ。冬馬が夜更かしなんて珍しいな。昼寝しすぎて夜眠れないのか？」\k\n「………」\k\n「あ、それとも来週の実力試験対策…いや、俺が悪かった。今のはナシな」\k\n「…はぁぁぁぁ」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0018>, 14, 0)  ; 「とりあえず今日も頑張って…って、早速寝るな。何しに学校来てるんだよ」\k\n　担任の嫌味がやっと終わった後にこの色々と空気を読まない発言を聞かされて、かずさはもうどうにでもしろとばかりに大仰に机に突っ伏した。\k\n「…本当に眠そうだな。何やってたんだ昨夜？」\k\n「………」\k\n　―誰のせいだと思ってる。\k\n　そんな愚痴めいた呟きは、さすがに口の中に飲み込んだけれど。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 15, 1)  ; 　北原の指摘通り、昨夜はまた慣れない物思いに耽っていたせいでほとんど眠れなかった。\k\n　忙しくてなかなか練習できない、練習しても上達しない、しかもそのことを気にしているそぶりもないという三重苦を抱える<R哀れ|のんき>な<R委員長|きたはら>のことで。\k\n「一時間目諏訪だから。とりあえず起きてるふりだけしといた方がいいぞ」\k\n「………」\k\n\n　―本当にわかってるのか？\k\n　　お前、このままじゃ学園祭に間に合う訳がないんだぞ？\k\n　　お前の『思い出作り』とか言うささやかな目標すら風前の灯火なんだぞ？\k\n\n　隣の視線をあからさまに無視しておきながら、そんなふうにかずさの頭の中は当の隣人のことばかりだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 2
PUSH INT 60
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

@VCALL SetMessageE(RES<0020>, 16, 1)  ; 　―やっぱり、直接言ってやらないと。\k\n　　夏休みの時みたいに、また現実を突きつけてやらないと…\k\n\n　昨夜から。いや、昨日の午後から。いやいや、今週に入ってからずっと、当人よりも焦り、怒り、結局堂々巡りして何も前進していない。\k\n\n　―けれどそれって、とんでもないお節介じゃないのか？\k\n　　まるで、いつも北原がしてることみたいな。\k\n　　だいたい、なんであたしがそんなことしなくちゃならないんだ？\k\n　　こんな馬鹿のために、そこまでする理由なんかあるわけが…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0021>, 17, 1)  ; 「………いや、ある」\k\n「？　何が？」\k\n「お前には関係ない、黙ってろ」\k\n「…はいはい」\k\n\n　―今までどれだけこの馬鹿に干渉され、嫌な思いをさせられたと思ってるんだ？\k\n　　だったら少しくらい仕返ししたって罰は当たらないんじゃないか？\k\n\n　かずさは、ものすごく眠かった。\k\n　ちょっとした本末転倒な倒錯に入り込んでいたのは、きっとそのせいに違いない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 18, 1)  ; 　―そうだ、説教してやろう。\k\n　　こいつの間違いを一つ一つ、こと細かに指摘してやろう。\k\n　　自分がどれだけ厚顔無恥で慇懃無礼なことをしてきたか教えてやろう。\k\n　　音楽なら、あたしにはそれができる。\k\n　　勉強じゃなければ、こんな馬鹿に遅れなど取るものか。\k\n　　うん、それはいい。\k\n　　恥ずかしくてギターなんか二度と弾けなくなるくらいに追い込んでやろう。\k\n\n　<R馬鹿|かれ>の目的がライブだったことが、かずさにとって運の尽きだった。\k\n　何しろ発表会で失敗するなんて、彼女にとってはあってはならないことだったから。\k\n　一月以上前から寝る間も惜しんで特訓し、たとえどれだけガチガチに緊張したとしても、いや、たとえ意識を失っていたとしても身体が勝手に練習してきたことを再現してしまうまで弾き込む。\k\n　二年前まではそれが普通だった。辛いとも苦しいとも思わなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0023>, 19, 1)  ; 　こと音楽に関してだけは、かずさは彼なんか及びもつかないくらい勤勉で、そして妥協を許さない。\k\n\n　―恨むなよ、北原…\k\n　　お互い運が悪かったんだ。\k\n\n　そう、かずさは自分に言い聞かせる。\k\n　音楽のことでなければ、ここまで深入りすることもなかったと。\k\n　その矜持は二年前に捨てたはず…というのはこの際考えないことにして。\k\n\n　―そうと決まれば話は早い。\k\n　　決行は、今日の放課後だ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
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

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 5
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 20, 1)  ; 「なぁ冬馬、ちょっと帰らないで残っててくれないかな？」\k\n「………ぇ？」\k\n　そして放課後…\k\n　かずさは、いきなり先手を取られた。\k\n「話があるんだけど…皆がいなくなった後で」\k\n「ふ、二人………きり？」\k\n「まぁ、そうなるかな？　冬馬もその方がいいだろ？」\k\n「な…っ？」\k\n　どうやって皆に気づかれないように声を掛けようかとか、怪しまれずに二人きりになるにはどうすればいいかとか、授業時間を全部注ぎ込んで考えた作戦をまるっきり無駄にしてくれた北原の衆人環視の中での堂々たる誘いに、かずさは必要以上にうろたえた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0025>, 21, 1)  ; 「き、き、き…」\k\n「じゃな春希、明日の物理、ノートよろしくな」\k\n「じゃあな…てかたまには俺に写させろ」\k\n「ばいば～い、北原くん」\k\n「ああ、また明日な～」\k\n「………たはら？」\k\n　けれどそんなかずさの激しい動揺にもかかわらず、周囲のクラスメイトは二人の前を遠慮なく横切り、北原にしつけられたと思われる帰りの挨拶を次々と交わしていく。\k\n　彼らには、二人を冷やかしたりするような様子はなく、ただいつものように委員長の無駄なお節介が不良娘に無視されている光景を微笑ましく遠巻きに眺めているような表情がありありと見て取れた。\k\n「じゃあ委員長、施錠頼むね？　あと任せたよ？」\k\n「ああ、ちゃんと職員室に返しておくから。お疲れ」\k\n　つまり、なんの誤解もしてくれてなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 1011
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 1012
PUSH INT 0
PUSH INT 0
PUSH INT 120
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0026>, 22, 1)  ; 「………」\k\n　そうやって周りに必要以上に詮索されないというのは、かずさにとっては望ましいことのはずだったけれど、それにしても何か釈然としないというか、ちょっぴり屈辱的なものを感じずにはいられない難しい年頃だった。\k\n　委員長の人格が信用されているのか、不良娘の人嫌いが浸透しているのか…\k\n「それでさ、話なんだけど…」\k\n「え！？」\k\n　と、そんな釈然としない思いに囚われているうちに、いつの間にか教室には二人以外誰もいなくなっていた。\k\n　つまりかずさはいつの間にか、言われた通り『帰らないで残って』いたことに…\k\n「ごめん、本当は休み明けにすぐ話したかったんだけど。なんか最近忙しくて」\k\n「っ…帰る！」\k\n「え？　なんで？」\k\n「お前が忙しかろうが暇だろうが、こっちには話すことなんかない！」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0027>, 23, 1)  ; 　さっきまで、こっちにこそ話すことがあったはずだったのに。\k\n「そりゃそうだけど、ほんの少しだから」\k\n「うるさい。帰ると言ったら帰るんだ、邪魔するな」\k\n　帰りのホームルームの最中からずっと声を掛けるタイミングを伺っていたかずさにとって、向こうから話し掛けてきたというのは渡りに船のはずだったのに。\k\n「俺の話を聞くために今まで帰らないでいてくれたんじゃ…？」\k\n「何思い上がった妄想垂れてんだ馬鹿。あたしがお前の頼みなんか大人しく聞くとでも思っているのか馬鹿。もひとつおまけに馬鹿」\k\n「そんな…だって冬馬、夏休みの時は…」\k\n「何のことだかよくわからないなぁ？」\k\n「…おい」\k\n　今は、自分の目的からどんどん遠ざかる会話に、かずさ自身が一番焦っていた。\k\n「とにかくあたしは忙しいんだ。お前のくだらない戯言にいちいち付き合っていられるか。いいからそこどけよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0028>, 24, 1)  ; 　夕方の教室に二人きりというシチュエーションに、他の誰よりも、というか多分目の前の男の数千倍舞い上がっている自分があまりにもあんまりで…\k\n「いや、だからそんなに時間は取らせないって…」\k\n「どけと言ったら…っ」\k\n
PUSH INT 0
PUSH INT 1011
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0029>, 25, 0)  ; 「お、いたいた、春希～」\k\n「っ！？」\k\n　と、そんな二人きりの静寂の教室に突然、必要以上の音と声が響きかずさの心臓をますます跳ね上げる。\k\n「親志？　帰ったんじゃなかったのか？」\k\n「あ…」\k\n　ほんの少し落ち着いていたなら、それが教室の扉を無遠慮に開く音と、北原のニワカ親友である早坂の妙に馴れ馴れしい声であることはすぐにわかったはずなのに。\k\n「まだ帰れる訳ないじゃん。お前を連れて行くまではさぁ」\k\n「………ぇ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 26, 1)  ; 　ついでに、その馴れ馴れしい親友の目的もすぐにわかったはずなのに。\k\n「お前、まさか、また…」\k\n「いや昨日の案でいいと思うんだよ俺は？　けど他の実行委員がさぁ、何もやんないくせにああだこうだと口出してきやがって…」\k\n「俺がいいって言ったらいいの一点張りじゃなかったのかよ…」\k\n「頼むよ春希！　あの自分勝手な役立たずどもを言葉責めでねじ伏せられるのはお前しかいないんだよ！」\k\n「いやだから俺は実行委員じゃ…」\k\n「そんなこと言ってる場合じゃないだろ！　学園祭の危機なんだぞ？」\k\n「お前そんな危機感本当は全然ないだろそうなんだろ」\k\n「………」\k\n　そして、さすがにもうかずさにもわかってしまった。\k\n　こういう展開になってしまった以上、次に予想される北原の台詞が…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0031>, 27, 1)  ; 「悪い冬馬…ちょっと待っててくれる？」\k\n「誰が待つか」\k\n　だから、今の素っ気ない台詞は我ながら自然に言えたと思う。\k\n「いや、すぐ済むから。十分で戻ってくるから！」\k\n「そうそう、五分もかかんないって。ささ行こう春希」\k\n「ほ、ほら…親志もこう言って…」\k\n「五分もかからずに家に辿り着いてやる」\k\n「と、冬馬…」\k\n　そう、素っ気なく。あくまでも乾いた口調で。\k\n　歯ぎしりの音なんか絶対に漏らさずに。\k\n「ちゃっと行ってちゃっと戻ってくるぞ！　ほらほら！」\k\n「お前それどこの言葉…あ、こら引っ張るな！　あのさ、すぐ戻るから、だから…」\k\n「………」\k\n「は、はは…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0032>, 28, 1)  ; 「………………」\k\n「早く来いって、春希！」\k\n「あ、ああ…」\k\n　完全に背中を向けて帰り支度を始めたかずさに最後の方は完全無視を決め込まれ、学園祭実行委員『じゃないけど実行委員長』の北原は、二日連続で早坂に連れられて教室を出て行った。\k\n　そして、それから数秒間、やっぱり誰かさんが呼吸を整える程度の時間が過ぎて…\k\n「………帰ろ」\k\n　けれど、さすがに今日は疲れたように肩を落とすだけだった。\k\n\n　―――\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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

PUSH INT 0
PUSH INT 4200
PUSH INT 90
PUSH INT 1
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
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

PUSH INT 9
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0033>, 29, 0)  ; 　午後五時。\k\n　傾いた陽が赤く染まりつつ、教室の窓に鋭角に差し込んでくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 60
CALL SES
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 0
PUSH INT 60
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

@VCALL SetMessageE(RES<0034>, 30, 1)  ; 「………」\k\n　そんな静寂に支配された空間で、一時間半前『帰ろ』と呟いた当の本人は、未だ机に突っ伏してそんな夕焼け空をぼうっと眺めていた。\k\n　『十分』から九倍の、『五分』に至っては十八倍の時間を無為に過ごし、白く明るい部屋が赤く薄暗く染まっていくのをリアルタイムで目に焼きつけていた。\k\n「………………」\k\n　何度も教室を出ようとした。\k\n　実際に幾度か教室を出た。\k\n　一度なんか下駄箱まで行って靴を履き替えもした。\k\n　それでも、何故かそこから先に進む時は動かず、踵を返せば急に駆け足になる自分の足を何度も呪った。\k\n「………………………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0035>, 31, 1)  ; 　睡眠不足のはずの脳は、ちっとも休もうとしてくれなかった。\k\n　ずっと、彼の『話』についての推測を繰り返すだけだった。\k\n　やっと自分の練習不足を認め、教えを請いに来たのかとか。\k\n　そこまで危機感があるなら実行委員に連れていかれたりしないだろうとか。\k\n　もしかして『第二音楽室の主』の正体に気づいたのかとか。\k\n　でも気づいたからどうだって言うんだろうとか。\k\n　それを聞かれたら自分は何と答えるべきなのだろうかとか。\k\n　正体を知ったら彼は自分にどんな感情を抱くのかとか。\k\n　その結果、自分にどんな言葉をかけるんだろうかとか…\k\n「………そんなの知るか」\k\n　誰にも聞かれることのない強がりを呟きながら、かずさは、夕暮れの教室で同級生の男子を待ち続けるという、ありえないシチュエーションに嵌められた自分のみじめさに泣きそうだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0036>, 32, 1)  ; 　―――\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0037>, 33, 0)  ; 　午後…七時。\k\n　少しずつ早くなってきた日没がとうとう過ぎ、陽がとっぷりと暮れた空に一番星が輝く。\k\n「………っ」\k\n　そんな、そろそろ静寂だけでなく暗闇にまで支配されようとする空間で、三時間半前\n『帰ろ』と呟いた当の本人は、自分の愚かさ加減に呆然となりながらもそのもうすぐ星空になるはずの空を見上げていた。\k\n「………………～っ」\k\n　いい加減、動くのも億劫になってきた。\k\n　とうとう守衛に注意された。\k\n　それでも、学園祭実行委員の関係で居残りしているという本人の中でだけ真実認定されている大嘘と、『冬馬さんの娘さん』の威光を借りて、なんとか居座り続けることに成功した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0038>, 34, 1)  ; 「………………………は、はは」\k\n　そこまでして待ち続ける自分の忠犬ぶりが笑えた。\k\n　『話があるんだけど…』\k\n　教室の椅子に座り続けているのは、『おすわり』と言われたから。\k\n　『ちょっと待っててくれる？』\k\n　校舎からいつまでも出られないのは、『待て』と言われたから。\k\n　困った時だけ甘えておきながら、こっちがちょっとでも下手に出れば人のことを飼い犬扱いする馬鹿委員長に…\k\n　一番馬鹿馬鹿しいのは、それでも自分以外誰も帰ることのない家で過ごすより、ほんの少し居心地がいい今の状況だったりするけれど。\k\n「………帰る、もう絶対に帰る」\k\n　それでも今度こそと、かずさは心の中で強く誓う。\k\n　『十分で戻ってくるから！』\k\n　あと十分待っても来なかったら、と。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0039>, 35, 1)  ; 　―――\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 10
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 80
PUSH INT 10
PUSH INT 2000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 36, 0)  ; 　午後、八時………三十分。\k\n　中秋の名月…の当日かどうかは知らないけれど、ほぼまん丸に近い月が空に浮かんでいる。\k\n　これこそ、この時間まで教室に残っていなければ見ることのできない絶景だった。\k\n　だからかずさは、そんな偶然から生まれた自らの眼福を噛み締め…\k\n「何やってんだあの馬鹿は～～～～っ！」\k\n　…るはずもなく。\k\n　そんな絶叫の後の、教室中の机が次々と蹴倒されていく大音響は、もはや誰もいない廊下にむなしく轟いた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
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

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1020
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

PUSH INT 1
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0041>, 37, 1)  ; 「ごめん昨日は！」\k\n「………帰る」\k\n「ああっ！　待って待って！」\k\n　翌日の始業前。\k\n　校門のところに人待ち顔で佇む委員長の姿をかずさは遠目からすぐに見つけていたが、わざわざ目の前まで行って謝らせてから、露骨に嫌な顔をして踵を返した。\k\n「いや、本当に悪かった。親志の用事が想定よりほんのちょっと時間かかってさ」\k\n「知るか。あたしはすぐに帰ったんだ」\k\n「そ、そうか…」\k\n　言い訳がましい彼の戯言を聞き流しつつ、かずさの足はどんどん学園から遠ざかっていく。\k\n　つまり、そのかずさと会話できるということは、当然彼も遅刻の危機を犯しているということで…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
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
PUSH INT 4000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0042>, 38, 1)  ; 「で？」\k\n「ん？」\k\n「…参考までに聞くけど、何時までかかったって？」\k\n「あ、いや…だからほんのちょっと」\k\n「………やっぱり帰る」\k\n「ああっ！　だから待ってって！」\k\n　その『ほんのちょっと』は真っ赤な嘘だと知っている。\k\n　けれどすぐ帰った“はず”のかずさにはその嘘を指摘できるはずもなく、自分の抱えているストレスの分だけ学園との距離を広げて腹いせをするしかなかった。\k\n「ごめん、ほんのちょっとってのも少しだけ嘘で…」\k\n「前置きはいい」\k\n「その、九時ちょい前くらい」\k\n「ふ………ふぅぅぅ～ん」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0043>, 39, 1)  ; 　かずさが失意のうちに教室を出たのは八時五十分…\k\n　今度こそあと十分待てば良かったという事実に、苛つきが二次関数的に増大していく。\k\n「で、机とか椅子とか片づけて校舎を出たのが九時半くらいで…」\k\n「それは…地震だな」\k\n「ウチの教室だけ？」\k\n「ま、どっちにしてもあたしには関係ないけど」\k\n　だから、そのことは絶対に謝らないと心に固く決めた。\k\n「あ、それで悪いんだけどさ、改めて今日の放課後…」\k\n「ない。ありえない。時間の無駄」\k\n　そして、もう二度とこの口だけ男からの申し出など受けないと…\k\n「…って言うと思って、今からほんの少し時間取れない？」\k\n「………」\k\n　決意しようとしたところで、ちょっと断りにくい頼み事をされてしまい、またしても言葉を失う。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0044>, 40, 1)  ; 「道端でもいいし、そこの公園でもいい。話聞いてくれないかな？」\k\n　この狡猾さと如才なさが彼の持ち味であり、そして許しがたいところで。\k\n「そんな道草食ってたら遅刻するだろ」\k\n「…じゃあまず進む方向を学校側に戻さないか？」\k\n「………」\k\n　この意固地さと理不尽さがかずさの持ち味であり、そしてみっともないところだったりする。\k\n「話が終わってからでも走れば間に合う。そのくらい短い用件なんだって」\k\n「………」\k\n「そもそも冬馬、今日は思ったよりも早く登校して…」\k\n「用があるなら早く話せ。いちいち勿体つけるな馬鹿」\k\n　結局、怒りのあまり二晩連続で徹夜してしまったなんて言えるはずもなく、仕方なしに折れるしかなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 0
PUSH INT 4301
PUSH INT 90
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
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
PUSH INT 8000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0045>, 41, 1)  ; 「実はさ、遅くなっちゃったけど、夏休みの時のお礼がしたくて」\k\n「…そんなどうでもいいことのために、あんなしつこく追い掛け回したってのか？」\k\n「冬馬にとってはどうでもいいことでも、俺はそうじゃなかったんだよ」\k\n「っ…」\k\n　道路脇の小さな公園のベンチに場所を移して二人並んで座ったとき、まるでデートみたいな構図になってしまったなとちょっと意識したかずさにとって、北原の、そのデートみたいな台詞は結構インパクトがあった。\k\n「凄く嬉しかったんだよ。俺のギターなんて誰も興味持ってくれる奴なんかいないって思ってたからさ」\k\n「あたしだって興味なんかない。ただ騒音が耳障りだっただけだ」\k\n「この前も言ったかもしれないけど、俺さ、ギター始めたの今年に入ってからなんだ。しかもちゃんと教えてもらわずに自己流でさ。冬馬に言われた通り、変なクセまでついちゃってて…」\k\n「あれはクセじゃなくて才能の限界だと思うけどな」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 42, 1)  ; 「何と言われようと、とにかく嬉しかったし本当に役に立ったんだよ…ありがとう」\k\n「………知るか」\k\n　顔が熱い。\k\n　『嬉しかった』だの『ありがとう』だの、ここ数年、自分の周りでは聞いたことも言ったこともない言葉の羅列は、かずさに全身が痒くなるほどの恥ずかしさと、もう一つ別の感覚をもたらし始めていた。\k\n「正直、ちょっと折れかけてたんだよな。夏休み前まではどれだけ練習しても、ちっとも上手くなった気がしなかったし」\k\n　―大丈夫だ。それは全然気のせいじゃないぞ。\k\n「けど、あの日から段々手応えを感じてる。そりゃまぁ、まだほんの少しずつだけど」\k\n　―それも気のせいじゃない。本当に少しずつしか上手くならないなお前。\k\n「もう少しで何か掴めそうなんだ…ちょっと弾くのが面白くなってきたって言うか」\k\n　―そう思うなら、もっと弾け。練習しろ。人の世話ばかり焼いてんじゃない。\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0047>, 43, 1)  ; 　そう、いちいち突っ込みどころ満載の痛い一人語りなのに。\k\n　なぜか今は、彼の言葉を遮る気が起こらなかった。\k\n　自分の声で消したくなかった。ずっと聞いていたかった。\k\n　彼が、自分を褒める言葉を。\k\n　自分が彼の役に立ったという事実の羅列を。\k\n「だから、感謝してる。恩に着てる。しつこいけど、ありがとう」\k\n「………」\k\n　聞きようによっては告白と取れなくもない、彼のちょっと甘めの言葉を。\k\n\n　だって冬馬かずさは、なめらかプリンに限らず甘いものは何もかも…\k\n\n「それで、これ」\k\n
PUSH INT 0
PUSH INT 8174
PUSH INT 0
PUSH INT 0
PUSH INT 120
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 44, 0)  ; 「え…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0049>, 45, 1)  ; 　と、まっすぐでぶっきらぼうな態度のまま、北原春希が鞄の中から取りだした紙包みを差し出す。\k\n「気に入ってくれれば、いいんだけど…」\k\n　彼らしく、簡素な包装の、けれど力と緊張と真心のこもったプレゼント。\k\n　…どう天の邪鬼に解釈しても、そうとしか取れない態度だった。\k\n「北原…」\k\n「………っ」\k\n　今度は、彼の顔が熱そうだった。\k\n　額の汗は、残暑によるものだけとはとても思えない量だった。\k\n「その、これ、どういうつもりで…」\k\n「開けてもらえればわかる」\k\n　その容姿やスタイルからは信じてもらえそうになかったけれど…\k\n　かずさは今まで、こんな直球をしかも真正面から受けたことはなかった。\k\n　何しろ、こういうふうに想いを伝えられていた頃は、ピアノ以外眼中になかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0050>, 46, 1)  ; 　ピアノに目を向けるのをやめてから、こういうふうに想われる人間をやめてしまった。\k\n　だから…\k\n「………」\k\n　罵倒することも、拒否することも、冷笑することだってできたのに、かずさは無言のまま、彼の手から包みをひったくり、思い切り真剣な表情で開封した。\k\n
PUSH INT 0
PUSH INT 8241
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 47, 0)  ; 　そこに本物の真心が入っていたら、自分も何かしらの答えを用意しなければならないということも忘れて…\k\n\n「…で、なんだこれは？」\k\n「葉緑出版の芽生えシリーズ十六。基礎英文法」\k\n「………ほぅ」\k\n　包み紙…に見えた書店の紙袋が、くしゃりと潰れた。\k\n「探したんだぞ。マイナーなシリーズだから小さな本屋じゃ扱ってなくてさ」\k\n　参考書だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0052>, 48, 1)  ; 「でも内容は保証する。俺が中学の時使ってたんだよ。受験でも随分役に立ったし」\k\n　しかも中学生向けだった。\k\n「気に入ってくれれば、いいんだけど…」\k\n「………」\k\n「それじゃ、そろそろ学校行くか。今ならまだ…」\k\n「いや、その前に一つ質問していいか？」\k\n「ん？　なんだ？」\k\n「なぜこれを…？」\k\n　確かに、直球だった。\k\n　ただ、全力投球の敬遠だった。\k\n「いや、だって冬馬さ、一昨日竹村先生に言われてたじゃん。英文法、基礎からなってないって…」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0053>, 49, 1)  ; 　そりゃ、なってる訳がない。\k\n　何しろ当てられてもシカトし続けているから。\k\n　…どの授業も。\k\n「だからあの日さ、授業終わった後に御宿の北国屋まで足伸ばしてさ」\k\n「一昨日…」\k\n　かずさが、第二音楽室で待ちぼうけを食らわされたあの日…\k\n　いつまで経っても練習に来なかったのは、学園祭実行委員に捕まっていたのではなく、こんな…\k\n　こんな訳のわからないものを探しに…\k\n「あ、中学生向けだからって馬鹿にしてるとか思うなよ？　こういうのって、中途半端に高度なものを買っても駄目なんだよ」\k\n「………………」\k\n「今の冬馬はさ、『どこがわからないかわからない』って感じだと思うんだよ。そんな時は原点に返って基礎の基礎。一度掴んじゃえば驚くくらいに上達するから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0054>, 50, 1)  ; 「………………………」\k\n「なんてな。実はさ、これを思い出させてくれたのは…」\k\n「………か」\k\n
PUSH INT 60
CALL MS
OPERATOR POP

@VCALL SetMessage(RES<0055>, 51, 0)  ; 「え？」\k\n「馬鹿か…お前は」\k\n　目眩がした。\k\n「…前から言おうと思ってたんだけどさ冬馬。人のことをあまり馬鹿馬鹿言うのは」\k\n
PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0056>, 52, 0)  ; 「ギターの練習ほっぽらかして、参考書探しか？」\k\n「え？」\k\n　本人の危機感のなさを嘆いてはいたけれど、ある程度仕方のないことだと思っていた。\k\n　人に頼られたら嫌とは言えないその性格を改めない限りはと。\k\n　なのに…\k\n「弾けって言ったよな？　毎日弾けって。十時間なんて言わないけど、十分でもいいから絶対サボるなって」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0057>, 53, 1)  ; 　あの夏の日、ヘタクソなギターの音が響く音楽室。\k\n「お前が上達しないのは努力が足りないからだって。短い期間でも本気で練習すれば弾けるようになるって」\k\n「冬馬…」\k\n「何も変わってないじゃないかよ北原…お前、そんなんで学園祭うまく行くとでも思ってるのか…？」\k\n　口下手なりに、けれど本気で伝えた言葉まで、軽く聞き流されていたなんて…\k\n「いや、けどさ」\k\n「けどじゃないだろ、お前、あたしの言ったこと、なんにも…」\k\n「来週から実力試験だぞ？」\k\n「………」\k\n「だからさ、今はギターよりもやることあるだろ？　冬馬だって俺なんかの心配してる場合じゃ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0058>, 54, 1)  ; 　それは、彼が今まで何度も口を酸っぱくして彼女に言ってきたこと。\k\n　体育祭であろうが夏休みであろうが学園祭であろうが、その前や後ろに必ずある授業や試験を見据えての、本気の助言。\k\n「お前…もしかして試験期間中、ずっと練習せずに勉強か？」\k\n「学生の本分は勉強だろ？」\k\n　どんなことがあっても、絶対にブレない信念。\k\n　決して間違っていない、いや、それどころか、かずさよりも圧倒的に正しい主張。\k\n「わかったよ」\k\n　だから、かずさは理解した。\k\n「そっか、それじゃそろそろ…」\k\n「帰る」\k\n「え…？」\k\n　この馬鹿とは…\k\n　いや、この秀才とは、一生わかりあえることなんかないって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0059>, 55, 1)  ; 「とりあえず、こいつはありがたくいただいとく。ちゃんと使わせてもらうよ」\k\n「そ、そっか。よかっ…」\k\n「だから…もう大丈夫だから、二度とあたしに勉強を教えようなんて考えるなよ？」\k\n「お、おい、冬馬…？」\k\n　ベンチから立ち上がり、もう用も興味もないとばかりに歩き去ろうとするかずさを、北原が呆然と見送る。\k\n「ちょっと待てよ…お前、どこ行くんだよ？」\k\n「そうだな、担任にはこう伝えておいてくれ」\k\n　その表情には、さっきまでかずさの抱えていたのと同じ感情が浮かび上がっていた。\k\n「実力試験に備えて猛勉強するので、今日は休ませてください、ってね」\k\n　相手のことを理解したいのにできない辛さ、もどかしさが…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0060>, 56, 1)  ; 　もちろん、すぐに帰ったりなんかしなかった。\k\n　夜の闇の中でもないのに、あの寂しい場所に身を置くことなんか今のかずさにはできる訳がなかった。\k\n　だから、平日の昼間に制服姿のまま南末次の繁華街をあてもなく歩いた。\k\n　少しでも目についた服やアクセサリなんかを値札も見ずにカードで買い漁った。\k\n　適当に十万ほど現金を下ろし、何時間もかけてゲームセンターで半分以上散財した。\k\n　シューティングや格闘ゲームは、最初のうちは初心者のかずさをカモにして数秒で百円を巻き上げてくれたけれど、すぐに上手くなってしまう勘のよさのせいで途中からなかなかコインが減らなくなってしまい、仕方なくクレーンゲームに移ってみても、今度は気がついたら両手いっぱいのプライズ品を抱えて身動きが取れなくなってしまった。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 80
PUSH INT 10
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 80
OPERATOR NEGATE
PUSH INT 10
PUSH INT 4000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0061>, 57, 0)  ; 　ゲームセンターを出た頃はもうとっぷりと日も暮れていたけれど、それでもまだ家に帰る気が起きなかった。\k\n　荷物をコインロッカーに詰めて、再び街をあてもなく歩く。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 3002
PUSH INT 30
PUSH INT 1
PUSH INT 60
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 1036
PUSH INT 0
PUSH INT 90
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

@VCALL SetMessage(RES<0062>, 58, 1)  ; 　夜の学生街は昼間よりもさらに人が溢れ、そのせいもあってかずさの美貌に声をかけてくる男たちの数も増える一方だった。\k\n　駅前で二人、繁華街のアーケードで二人、路地裏で一人…\k\n　三人を蹴り飛ばして追い払い、一人に罵詈雑言を浴びせ掛けて退け、もう一人は向こうもキレて言い争いになり野次馬に囲まれて恥をかいた。\k\n
PUSH INT 0
PUSH INT 90
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0063>, 59, 0)  ; 　いつもならことごとく無視して面倒を避けるのに、今日のかずさはいつもよりほんの少し機嫌が悪かったから。\k\n　要するに、ものすごく機嫌が悪かったから…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1000
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0064>, 60, 0)  ; 「はぁっ…」\k\n　結局、家に帰り着いた頃には午後十時を過ぎていた。\k\n　制服のままベッドに横たわると、あっという間に頭がぼうっと霞んでくる。\k\n　二日間徹夜していたことをやっと身体が思い出したのか、ついさっき夕食代わりに食べたグッディーズのなめらかプリン五個が満腹中枢を満足させたのか…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0065>, 61, 1)  ; 　―今日こそ、絶対に寝てやる。\k\n　　朝になっても。明日になっても。何日も過ぎても。\k\n　　ずっと眠り続けて、実力試験とやらが終わってたって構わない。\k\n　　だってもう、何かに煩わされることはない。\k\n　　何かを心配する必要もない。\k\n　　あいつのことを、気にかける必要なんか…\k\n\n「ん…」\k\n　身体を横たえたまま、目と脳を半分閉じたまま、ベッドの脇に手を伸ばし、さっき放り投げた自分の通学用のカバンを拾い上げる。\k\n　弁当箱もない。買った物は別の袋に入ってる。もちろん宿題なんかするつもりもない。\k\n　なのに、どういう目的でそうしたのか自分でもよくわからないまま、かずさは無意識でカバンを開き…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 80
PUSH INT 10
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 80
OPERATOR NEGATE
PUSH INT 10
PUSH INT 4000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 13
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0066>, 62, 1)  ; 「…れ？」\k\n　その中身がいつもと何も変わっていないことに、逆に違和感を覚える。\k\n　ほとんど何も入っていない。\k\n　ハンカチ、財布、飴玉、それだけ。\k\n　他の学生なら誰もが持っているはずの筆記用具も教科書もない。\k\n　もとから何も入っていないから、何も問題なんか…\k\n「………あれ？」\k\n　なのに湧き上がる不安。\k\n　働かない頭を必死に回して、その理由を考える。\k\n　まずは、どうして自分がこれを開けようと思い立ったのかを…\k\n
PUSH INT 180
CALL MS
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 63, 0)  ; 「………あぁ」\k\n　そこまでに一分近くかけて、ようやく違和感の正体に辿り着いた。\k\n　もとから何も入っていないこの中に、今朝、入れたはずのものがない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0068>, 64, 1)  ; 　『葉緑出版の芽生えシリーズ十六。基礎英文法』\k\n　書店の、紙袋…\k\n「…なぁんだ」\k\n　辿り着いた結論に、かずさは落胆と安堵のため息を漏らす。\k\n　世紀の大発見でも、痛恨の大損害でもなかったから。\k\n　それどころか、とっくに記憶から除外したものだったから。\k\n「はは…」\k\n　そんなどうでもいいものを無意識で気にかけていたことに、また自虐の笑みが漏れる。\k\n　どうせ使うはずのない、けれど燃えるゴミにするには世間体の悪い、古本屋でもきっと買い取ってくれない、処分するのが厄介な、無駄な資源。\k\n　外に落としたのなら、色々と手間が省けて幸運だった。\k\n　どうせ地球環境にすら興味なんかないのだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0069>, 65, 1)  ; 「………」\k\n　だからかずさは、遠慮なく目を閉じた。\k\n　いつも通り、部屋の明かりを煌々と灯したまま。\k\n　明日こそは少しはマシな一日になることを適当に祈りつつ。\k\n　…明日のうちに目を覚ますつもりもないけれど。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0070>, 66, 1)  ; 「あのぅ…もう閉店なんすけど…」\k\n「うるさい、今は話しかけるな。こっちは忙しいんだ」\k\n「そんなぁ…」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2031
PUSH INT 3
PUSH INT 90
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

PUSH INT 16
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0071>, 67, 0)  ; 　グッディーズ南末次店。\k\n　数時間前プリンを食べるためだけに赴いたこの場所に、再びかずさの姿があった。\k\n　けれど今彼女がしている行為は、普通の客がファミレスに来る目的である食事でも休憩でも暇潰しでもなく…\k\n「帰って欲しかったら見つけてみせろ。このくらいの大きさの紙袋だ。北国屋書店のロゴが入ってて…」\k\n「ですから店内にそんなものは落ちていませんでしたって何度も…」\k\n「本当に？　席の下も？　厨房も？　床を這いつくばってまで調べたのか？」\k\n「それは今お客様がやってるじゃないっすか…」\k\n「そっちが真面目に探さないからだ。店員のくせに」\k\n「はぁ、すいません…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0072>, 68, 1)  ; 　ネームプレートに『佐藤』と書かれた若いバイト店員は、もはや先ほどから接客口調を諦めて、フランクな情けなさでかずさに接している。\k\n　店長候補とかおだてられて、ちっとも帰ろうとしない最後の一人の客の面倒を押しつけられてしまった理不尽さを噛み締めるように。\k\n「やっぱり、ここじゃないのかも…」\k\n「あの、その忘れものってそんなに大事なものなんすか？」\k\n「そんなことあるわけないだろ。何を言ってるんだお前は」\k\n「………お客様こそ」\k\n　遠慮なく目を閉じた、はずだった。\k\n　何の憂いも、何の後悔もなく、逆にせいせいしたと思えるくらいに、その存在を忘れて、彼のことも忘れて…\k\n「ちょっと、寝覚めが悪かっただけだ」\k\n「こっちは寝つきが良くなりそうですけどね、今夜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0073>, 69, 1)  ; 　だからこれは、本当に、ただ何となく。\k\n　ちょっとだけ、彼のあの時の戸惑った表情が。\k\n　『ちゃんと使わせてもらうよ』という、自分の嘘ばっかりな約束が。\k\n　夢に、ほんの少しだけ悪いものを混ぜないかというのが心配だったから。\k\n\n　―とりあえず、これで義理は果たした。\k\n　　探してやっただけでもありがたく思うんだな。\k\n\n
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

@VCALL SetMessage(RES<0074>, 70, 0)  ; 　―――\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1039
PUSH INT 0
PUSH INT 60
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

@VCALL SetMessageE(RES<0075>, 71, 0)  ; 「やっぱり届いてないね」\k\n「…そう、ですか」\k\n　ファミレスでの捜索を切り上げての帰り道に通りがかった南末次駅前の交番。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0076>, 72, 1)  ; 　―ただ、偶然そこにあったからだ。\k\n　　別に、聞いてみるくらい大した時間取られないし。\k\n\n　そうやって自分にいちいちめんどくさい言い訳をすると、かずさはそこに立っていた、規則の象徴のような制服を着た大人の男性に恐る恐る声を掛けた。\k\n　…将来、この職業に就いても全然おかしくない知り合いの顔を思い浮かべつつ。\k\n「見つかったら連絡しますんで、こちらに住所と電話番号書いてもらえる？」\k\n「はぁ…」\k\n　警官は、彼女が想像していたよりもよほど親身になって応対してくれた。\k\n　わざわざ周辺の交番にも連絡を取り、そちらに届いていないかの確認もしてくれた。\k\n「けど、普通に本屋で売ってる参考書だよね？　しかも他の荷物と一緒に落とした訳じゃなくて、本だけで。だとしたら届け出る人は滅多にいないと思いますけどね」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0077>, 73, 1)  ; 　ただ、シビアな現実を告げるのも忘れなかった。\k\n　けれどそれはあまりにももっともな意見であることも間違いなかった。\k\n　何しろ、もし見つけたのが自分だったとしたら、本だとわかった時点で拾い上げることすらしないだろう。\k\n　つまり、今かずさがしていることは、ほとんど無駄足で…\k\n「そんなに高いものじゃないし、急ぎだったら買い直した方が…」\k\n「それじゃ意味がないんだ」\k\n「意味って？」\k\n「………そこまで必要じゃないって、そういう意味、です」\k\n　その時かずさが遮ったのは警官の言葉だったのか、それとも自分の思考だったのか…\k\n　なんて、本人にもわからないものが、他の誰かにわかるはずもなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

@VCALL SetMessage(RES<0078>, 74, 1)  ; 　―――\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
CALL FB
OPERATOR POP

PUSH INT 0
PUSH INT 4005
PUSH INT 60
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 1039
PUSH INT 3
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 0
PUSH INT 10
PUSH INT 10
PUSH INT 128
PUSH INT 2
PUSH INT 0
CALL SetWeather
OPERATOR POP

PUSH INT 60
PUSH INT 128
PUSH INT 128
PUSH INT 128
CALL FB
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT 1
CALL ChangeWeather
OPERATOR POP

PUSH INT 9
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0079>, 75, 0)  ; 「あ…」\k\n　とうとう、降ってきた。\k\n　二時間ほど前、南末次に着いたときからいつ泣き出すかもしれなかった空は、ついに我慢の限界を超え、ゆっくりと涙を零し始めた。\k\n　夜も更け、そろそろ日付も変わろうかという、真夜中と言ってもいい頃。\k\n　そんな終電もなくなろうかという時間にもかかわらず、かずさはその雨を、未だに南末次のアーケード街の軒先から見上げていた。\k\n　交番を出た後、駅へ、そして家へ向かうと決めたはずの足は、今朝の校門のときと同じように、いつの間にか正反対を向いていた。\k\n　昼間使ったコインロッカーを一つ一つ開けては中を確かめ、散在したゲームセンターの店内を足元だけ見ながら彷徨い、買い物をした商店街を何度も往復した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0080>, 76, 1)  ; 　それでも、砂漠で一粒の種を探すようなあてのない彷徨は、かずさに何の成果ももたらさないまま今に至る。\k\n「さすがに、もう…」\k\n　かずさのそんな呟きは、先ほどまでの、ため息混じりの愚痴っぽい調子では全然なくなっていた。\k\n　ひとつ諦めのニュアンスを含んだ言葉を放つたびに、その口調は徐々に切羽詰まっていく。\k\n　あの、世界に捨てられた日の自分の声と表情を、身体が思い出していってしまう。\k\n　わざわざ他人に話し掛けてまで探したのに。\k\n　それどころか、警察にまで届けたのに。\k\n　たった一冊の、使いもしない本のために。\k\n　明日、ちょっと御宿にまで足を伸ばせばすぐに手に入る市販品のために。\k\n「帰る、か」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT 0
CALL ChangeWeather
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

@VCALL SetMessageE(RES<0081>, 77, 1)  ; 　そんな、自分には似合わない馬鹿げた酔狂につきあうのも、そろそろ限界だった。\k\n　昼間から何時間も歩き、走り回った身体が悲鳴を上げ始めている。\k\n　痛い。だるい。眠い。暑い。そして冷たい。\k\n　雨は、徐々にその雨脚のピッチを上げ始めている。\k\n　今は、ほんの少しの残暑の、そして走り回った身体の熱を冷ましてくれる恵みの雨。\k\n　けれど長い間当たっていれば、徐々に体温を奪っていく忌みの雨になる。\k\n　だから、かずさは今度こそ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessage(RES<0082>, 78, 1)  ; 　―随分と無駄な時間、かけちゃったな。\k\n　　でも、もういい…\k\n　　今度こそ帰って、風呂入って、何もかも忘れて眠ろう。\k\n　　そうだよ、忘れていいよ。\k\n　　だって、あたしは頑張ったんだ。\k\n　　一生懸命やったんだ。\k\n　　だからもう、いいよ。\k\n　　あいつのことなんか、もういいよ…\k\n\n「………………………っ！」\k\n
PUSH INT 1
PUSH INT 624
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0083>, 79, 0)  ; 　今度こそ、アーケードから抜けて雨の中を走り出す。\k\n　…やっぱり、駅とは反対方向。\k\n　峰城大学の…付属学園の方へと向かって。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 30
CALL SES
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 4005
PUSH INT 60
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 621
PUSH INT 60
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0084>, 80, 1)  ; 　―どうせ明日も学校に行くつもりなんかないんだ。\k\n　　だったら、もう少しくらい夜更かししたって問題ないよな？\k\n\n　自分への言い訳は、段々苦しくなってきていた。\k\n\n　―――\k\n\n「なんでだよ…」\k\n　時間は、夜中の三時を回っていた。\k\n　雨は、もう土砂降りと言っても差し支えなかった。\k\n「どうして、見つからないんだよ…っ」\k\n　だから、かずさのその怨嗟の叫びも、道を叩く水の音にかき消され誰にも届くことはなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
CALL FB
OPERATOR POP

PUSH INT 1
PUSH INT 1036
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 0
PUSH INT 10
PUSH INT 10
PUSH INT 128
PUSH INT 2
PUSH INT 1
CALL SetWeather
OPERATOR POP

PUSH INT 60
PUSH INT 128
PUSH INT 128
PUSH INT 128
CALL FB
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 158
PUSH INT 1028
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

PUSH INT 158
PUSH INT 1020
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

@VCALL SetMessage(RES<0085>, 81, 1)  ; 　何度も、何時間も探した…\k\n　アーケード街から、彼と別れた公園まで。\k\n　公園から、念には念を入れて付属の校門まで。\k\n
PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 158
PUSH INT 1039
PUSH INT 1
PUSH INT 30
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

@VCALL SetMessageE(RES<0086>, 82, 0)  ; 　校門から、もう一度見落としたところがないかを思い出しながら駅まで。\k\n　買い物をした店。ゲームセンター。ファミレス。\k\n　…そんなローテーションを何度も繰り返したのに。\k\n「馬鹿、野郎…」\k\n　もとから、見つかる確率なんて極端に少ない。\k\n　そんなことはわかっている。\k\n　けれど、理解はしていても、納得なんかできるわけがない。\k\n　だからその怒りは、半日前の自分へと向けられる。\k\n　いつも学園と家の往復だったくせに、今日に限ってやたらと行動的だった自分に。\k\n　彼からの初めてのプレゼントを粗末に扱った数時間前の自分に。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT 0
CALL ChangeWeather
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

@VCALL SetMessageE(RES<0087>, 83, 1)  ; 　ほんの少しの不注意が、後で自分にどれだけ跳ね返ってくるのか知らない自分に…\k\n　そんな愚かで嘘つきな過去の自分に、今の自分の気持ちを伝えてやりたい。\k\n\n　―馬鹿みたいだ、あたし。\k\n　　どうしてこんなに空回りしちゃうんだ。\k\n　　あいつが関わると、なんでいつも通りにいかないんだよ…\k\n\n　雨が、降っている。\k\n　いつもなら静けさに包まれている夜中の通学路に、水滴の槍が激しい水音とともに降り注ぎ、容赦なくかずさに突き刺さる。\k\n　なのに彼女は、いつものように反抗的な態度で空の雲を睨み上げ、その痛く重い圧力を真正面から受け止める。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0088>, 84, 1)  ; 　向こうはそんな視線に怯むこともなく、彼女の頭に、髪に、顔に、そして目に自らの分身を突き刺す。\k\n　その刺激が、痛みが…赤く染まっていくかずさの瞳に言い訳をもたらしてくれる。\k\n「…まだだ」\k\n
PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0089>, 85, 0)  ; 　もう走れなくなった足を引きずって、それでもかずさは元来た道を引き返す。\k\n　絶対に、諦めない。\k\n　だって諦めたら、切れてしまうから。\k\n\n　二人を繋ぐ、絆が。\k\n\n　半日前、もう繋がっていないと自分で決め付けたはずの絆だけど。\k\n　向こうが意識しているかどうかもわからない、しかも自分がずっと否定し続けてきた絆だけど。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0090>, 86, 1)  ; 　それでも、まだ心のどこかに大きな未練があったことを、もう認めざるを得なかった。\k\n\n
PUSH INT 90
CALL MS
OPERATOR POP

PUSH INT 0
PUSH INT 90
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0091>, 87, 0)  ; 　―――\k\n\n「はは…っ」\k\n　それは、まったくの偶然だった。\k\n　彼と最後に別れた、通学路の途中の小さな公園。\k\n　その入り口の、たった五段しかない階段。\k\n　さらにその脇の、繁みの中…\k\n　植え込みの真下で、まるで雨宿りをしているかのように、微かに印刷の滲んだ北国屋書店の紙袋が佇んでいた。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 0
CALL FB
OPERATOR POP

PUSH INT 0
PUSH INT 4005
PUSH INT 90
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 20
OPERATOR NEGATE
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 0
PUSH INT 0
PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 0
PUSH INT 10
PUSH INT 10
PUSH INT 128
PUSH INT 2
PUSH INT 1
CALL SetWeather
OPERATOR POP

PUSH INT 90
PUSH INT 128
PUSH INT 128
PUSH INT 128
CALL FB
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0092>, 88, 0)  ; 「あはは、はは………っ、い、たた」\k\n　さっきまで何度も通ったのにずっと見落としていたそこに目を向けたのは、階段に足を滑らせて転んだせいだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0093>, 89, 1)  ; 　しかも咄嗟に、一般人とは逆に両手を庇い、全身ごと倒れ込んだせいだった。\k\n　膝を打った。太股をすりむいた。背中も、胸も、手のひら以外の全身に傷を負った。\k\n　あまりの痛みにしばらく起き上がれずにいたとき、地面と同じ高さにまで落ちた目線が、その紙袋を捕らえた。\k\n　久々に、自分がピアニストであったことを、その習性を未だに身体に刻んでいたことを天に感謝した。\k\n　しばらく動けず寝転がっていたかずさは、やっとのことで半身だけ起き上がり階段に座り込むと、その泥のついた紙袋を手に取りぎゅっと胸に抱え込む。\k\n　それは、雨から本を守っているつもりだったのかもしれないけれど、もはや全身ずぶ濡れの彼女が抱えたところで効果があるとは思えなかった。\k\n　そのことを十分自覚しながらも、その無機物をいとおしく思う心をやめられない。\k\n　何しろ彼女は、この無機物に今夜の自分を全て捧げたのだから。\k\n「ざまぁ見ろ…見つけてやったぞ北原」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
PUSH INT 8241
PUSH INT 0
PUSH INT 0
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0094>, 90, 1)  ; 　しばらくの間、胸に抱えたその紙袋を恐る恐る開く。\k\n　中身は、植え込みに守られていたとはいえ、さすがに五体満足には程遠く、表紙は黒っぽく湿り、本全体もやや波打っていた。\k\n　けれどかずさはそんなことは気にしない。\k\n　何しろ、この本が綺麗であることなんて、自分にとっては全然意味のないことだから。\k\n　ただ、『あればいい』のだから…\k\n「………あ、れ？」\k\n　状態を確認するためにページをめくっていた手がふと止まる。\k\n　そこに見つけた本以外の紙片に。活字以外の文字に。\k\n「は、は…」\k\n　それは、こんな参考書なんか使うはずのない相手に向けられた、あまりにも目に届く確率の低い隠しメッセージ。\k\n「ははは…あはははは」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0095>, 91, 1)  ; 　思慮深いくせに、考慮が足りない。\k\n　カッコつけたいと思っていても、結局それを上回る照れくささが邪魔をして何も伝えられない。\k\n　そんな馬鹿委員長の相も変わらずの間抜けさに、かずさは力の抜けた笑いを漏らすことしかできなかった。\k\n　今までの怒りは、焦りは、苛つきはなんだったんだというほどに、それは自然に心から湧き出てきた。\k\n「馬鹿だ…本当に馬鹿だ、お前は…っ」\k\n　それでも、今日くらいはそんな笑顔のままでいたかった。\k\n　だって、やり遂げた。\k\n　砂漠で一粒の種を見つけ出した。\k\n　それは、言うなれば奇跡と言ってもいいほどの…\k\n　いや、かずさにとっては、運命と信じてやってもいいほどの出来事だったのだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

PUSH INT 0
PUSH INT 180
CALL SES
OPERATOR POP

PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT -1000
PUSH INT 0
CALL ChangeWeather
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

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
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

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 0
PUSH INT 60
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
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0096>, 92, 1)  ; 「冬馬…」\k\n「………」\k\n　翌日。\k\n　かずさは、教室に着くなり机に突っ伏して、微塵も動かなくなった。\k\n「あ、あのさ…冬馬。その、昨日のことだけど」\k\n「今のあたしに話しかけるな」\k\n「う…」\k\n　教室で顔を合わせた瞬間から会話のきっかけを探しているふうだった委員長は、その電光石火の早業に完全に後手に回らざるを得なくなってしまった。\k\n　昨日のこと。\k\n　自分に心当たりのない、相手の怒りの理由について。\k\n　たとえこちらに非があったとしても、サボりはいけないという常識論。\k\n　そして、なんとか関係修復を模索したいという、弱気ながらも強い意志。\k\n「ちょっとだけ…一分だけでいい、聞いてくれないかな？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0097>, 93, 1)  ; 　色々と伝えることがありすぎて、彼女の拒絶を受け入れられない。\k\n　だからいつものように、相手にますます嫌われると知りながらもしつこく話しかけ…\k\n「眠いんだ。来週にしろ」\k\n「え？」\k\n「今日だけは寝かせてくれ。絶対に起こすなよ？」\k\n「冬馬…？」\k\n「………」\k\n　そして思いのほか、条件付きとは言えあっさり受け入れられる。\k\n　何事もなかったかのような、ある意味肩透かしな態度で。\k\n　それは、彼女に対して色々と並々ならぬ感情を持つ彼にとっては、痛み分けというには嬉し過ぎる痛みに違いなく。\k\n「わかった…おやすみ、冬馬」\k\n「いいのかよそれ言っちゃって」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0098>, 94, 1)  ; 　でも彼は本当のことを知らない。\k\n　今、かずさがここにいることの特別を。\k\n　昨夜、というか今朝、彼女が帰宅した頃にはとっくに夜が明けていたことも。\k\n　シャワーを浴びて浴室から出た瞬間、安心と疲れと寝不足が一気に襲いかかり、ほんの一瞬でも気を抜いたらすぐに倒れてしまいそうだったことも。\k\n　そのまま倒れてしまう選択肢が何度も頭にちらついたことも。\k\n　歩くたびに全身の傷が痛み、いつもより三十分も余計にかけて登校したことも。\k\n　…そこまでしてでも、今日だけは人の側で安心して眠りたかったことも。\k\n　………もちろん、側にいるべき人というのは誰でもいいって訳じゃないことも。\k\n\n　だから彼は知らない。そして多分、一生知ることもない。\k\n　昨夜の、忠犬かずさの大冒険を…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1013
PUSH INT 0
PUSH INT 90
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

@VCALL SetMessageE(RES<0099>, 95, 1)  ; 　―――\k\n\n　それから一週間後、峰城大学付属学園ではめでたく実力試験も終わり…\k\n\n　冬馬かずさは、全五教科中、四教科で最低点を記録した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1001
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 4301
PUSH INT 60
PUSH INT 1
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0100>, 96, 1)  ; 　締め切られていた教室内は、夏と比べるとだいぶ過ごしやすくなり、エアコンのスイッチを入れずとも窓を開けるだけで十分快適な空気が流れ込んでいく。\k\n　試験も終わり、部活動も活気を取り戻した校内に、お馴染みのかけ声や楽器の音が響いている。\k\n　カーテンに隠れるようにして、しばらく風に当たりながら窓から外を見下ろしていたかずさは、ゆっくりとピアノの元に歩み寄り、いつも通り姿勢良く座る。\k\n　そして、いつも通り、五時を待ってゆっくりと弾き始める。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 50
OPERATOR NEGATE
PUSH INT 0
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 50
PUSH INT 0
PUSH INT 2000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0101>, 97, 0)  ; 　夕暮れが迫り来るのがどんどん早くなる十月の初旬。\k\n　試験も終わり、部活動も活気を取り戻してから…初の火曜日。\k\n　ついでに、午後の五時を過ぎて、そろそろ十五分。\k\n「っ………へたくそ！」\k\n　まだ音が聞こえて一秒も経っていないのに、かずさはその演奏の腕を評してしまった。\k\n　あまりにも待ち望みすぎていて、音なんか聴いちゃいなかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 9712
PUSH INT 0
PUSH INT 1
PUSH INT 150
PUSH INT 1
CALL SEP
OPERATOR POP

PUSH INT 2
PUSH INT 9713
PUSH INT 0
PUSH INT 1
PUSH INT 0
PUSH INT 1
CALL SEP
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1006
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 100
OPERATOR NEGATE
PUSH INT 0
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 7000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 9712
PUSH INT 0
PUSH INT 1
PUSH INT 150
PUSH INT 2
CALL SEP
OPERATOR POP

PUSH INT 2
PUSH INT 9713
PUSH INT 0
PUSH INT 1
PUSH INT 0
PUSH INT 2
CALL SEP
OPERATOR POP

PUSH INT 300
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0102>, 98, 1)  ; 　要するに、隣の教室から『ホワイトアルバム』のギターソロが流れてきた。\k\n\n　かずさの指先が、いつも以上に瞬時に反応する。\k\n　さっきまで弾いていたクラシックの練習曲がリズムを変え音程を変え、素早くその一昔前の歌謡曲に被さっていく。\k\n
PUSH INT 2
PUSH INT 150
PUSH INT 60
CALL SEV
OPERATOR POP

@VCALL SetMessageE(RES<0103>, 99, 0)  ; 　と、そろそろお隣さんもいい加減慣れたようで、早速こちらの伴奏に委ねるようにのびのびと弾き始める。\k\n　最初から定番のレパートリーを選曲したのは、試験のせいで今まで弾けなかった鬱憤を晴らすためだったのかもしれない。\k\n　久々に風に乗って届いてくる『ホワイトアルバム』は、そんな相手の楽しそうな様子を想像させるほど、活気に満ちて、明るく弾み、切ない恋を歌う歌詞の内容とはまるで乖離したちぐはぐな曲に成り下がっていた。\k\n　けれど、かずさは今日だけは『そうじゃないだろ』という軌道修正を捨てて、相手の速さに、強さに、楽しさに合わせていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0104>, 100, 1)  ; 　今日だけはこれでいい。\k\n　楽しければいい。嬉しいならいい。\k\n　一緒に弾けるなら、それでいい…\k\n「…ん～？」\k\n　その速さに合わせてかずさがテンポを上げれば、相手がさらにテンポアップする。\k\n　ならばとかずさがさらに速弾きすれば、向こうも必死でついてくる。\k\n　どう考えても入れ込み過ぎで、大失敗のセッション。\k\n　それはもう、原曲の良さなんてまるで残っていない最低の演奏。\k\n　なのに…\k\n「お前…」\k\n　かずさの表情は、これまでにないほど輝いていた。\k\n　だって、あまりにもいつもと違うから。\k\n　速すぎて、強すぎて…\k\n　なのに、音程だけがまったく外れていないから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0105>, 101, 1)  ; 「なにが勉強が本分だよ…この嘘つき野郎」\k\n　二週間のブランクののち、ギター君…北原春希は、どう考えても試験前よりも腕前を上げていた。\k\n　相変わらず調子に乗ったり、相手に引きずられる癖は全然直っていなかったけれど、それでも一番重要な音だけは、きっちり拾えるようになっていた。\k\n　それは明らかに、毎日練習しないと上達しないはずの技術。\k\n　そして、初歩の初歩から正しく練習しないと身につかないはずの…\k\n\n　―馬鹿…お前も、あたしと同じじゃないか。\k\n　　言葉なんかよりも、音の方がよっぽど正直じゃないか。\k\n　　試験期間中も練習してたろ？\k\n　　勉強してる間もギターのことが気になってたろ？\k\n　　こっそり、弾いてたんだろ？\k\n　　教科書じゃなくて“あの本”を、必死に読みながらさ…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0106>, 102, 1)  ; 　かずさの脳裏に鮮やかに蘇るのは、あの雨の深夜の公園。\k\n　雨に濡れた参考書の間に挟み込まれていた一枚のメモ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0107>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 1
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 1
CALL B2
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0108>, 103, 1)  ; \n　冬馬に教えてもらったギターの練習本、買ってみました\k\n\n　本当にわかりやすくて簡単で、これなら自分にもついていけそうです\k\n\n　冬馬のおかげで、一番最初の基礎が一番大事ってこと思い出しました\k\n\n　なので冬馬にも、この参考書が一番役に立つと思います\k\n\n　たまには勉強の先輩の言うことも聞いてみてください\k\n\n　学園祭まで、卒業まであと少しだけど、お互い頑張ろう\k\n\n　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　北原
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0109>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1004
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0110>, 104, 1)  ; 『開桜社の…習熟シリーズ？』\k\n『超初心者向けの練習本だから、北原にはお似合いなんじゃないか？』\k\n『冬馬もそれ読んで上達したのか？』\k\n『まさか。あたしのはただの才能だ』\k\n『あ、そ』\k\n『なんてな。ギターのじゃないけど、ちゃんと役に立ったよ』\k\n『お前、ギター以外にも何かやってたのか？』\k\n『…今はそんなこと関係ないだろ』\k\n『冬馬…？』\k\n『ほら、早く弾けよ。あたしだって暇じゃないんだぞ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

ARRAY_S RES<0111>
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 255
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1006
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 150
PUSH INT 0
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

@VCALL SetMessageE(RES<0112>, 105, 1)  ; 　あの夏休みの日、ギターを教えながら何気なく口にした一冊の本のタイトル。\k\n　もともとはピアノを始めた頃…要するに物心がついて初めて曜子に買い与えてもらったのが、そのシリーズのピアノ編だった。\k\n　三歳児に漢字だらけの本を渡す母親も大概だったけれど、自らを天才と称する生意気な少女は、書かれている記号だけをもとにきっちり内容を理解した。\k\n　読解力、というか音解力に関しては、同じ世代の誰よりも上…まさしく天才児だった。\k\n　そんな大昔の、しかも<R冬馬曜子|ははおや>に刻んでもらった記憶が、今、こうして実を結び…\k\n「ミスった～！　残念でした～」\k\n　最後の最後、後奏に入ったところでとうとう間違ってしまったギターを、その奏者を、かずさは嬉しそうな笑い声を上げて、心の底から嘲笑した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 300
CALL SES
OPERATOR POP

PUSH INT 2
PUSH INT 300
CALL SES
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 300
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
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

PUSH INT 150
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

@VCALL SetMessageE(RES<0113>, 106, 1)  ; 　その夜、かずさは一週間ぶりに徹夜した。\k\n　けれどそれは、ピアノの練習でも、考え事でも、もちろん勉強なんかでもなく…\k\n　あろうことか、夜なべ仕事と呼ぶに相応しい…裁縫だった。\k\n　相手は、タンスの中の犬のぬいぐるみ。\k\n　二年前、曜子から贈られた誕生日プレゼント。\k\n　ずっと引き裂かれたまま放っておかれた、母子の断絶の象徴。\k\n　その自らがつけた傷を、かずさは必死で縫った。\k\n　最初の頃は、慣れない手つきで何度も指に針を突き刺した。\k\n　でも、ピアノで鍛えられた手指はすぐにコツを飲み込み、徐々にペースは上がり、縫い目も綺麗になっていった。\k\n　それでもかずさは、何度も上がりそうになるペースを抑え、調子に乗るたびに自らを戒め、丁寧に、なるべく縫い目が見えなくなるように注意深く縫い合わせていく。\k\n　母を許した訳じゃない。\k\n　世界を受け入れた訳じゃない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0114>, 107, 1)  ; 　けれどぬいぐるみ…犬には罪はなく。\k\n　そして自分には確かに罪があったから…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 60
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

@VCALL SetMessage(RES<0115>, 108, 0)  ; 　縫い上がったぬいぐるみは、少し歪に曲がっていた。\k\n　けれどその不格好さが、かえって琴線に触れた。\k\n　ご主人様への思いが届かず、ずっと尻尾を振り続けている忠犬っぽかったから。\k\n　だからかずさは、登校までの時間を確かめると、残った三十分だけ抱いて寝た。\k\n　抱きしめてみたら、なんだか温かかった。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 1000
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1050
PUSH INT 0
PUSH INT 90
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

@VCALL SetMessageE(RES<0116>, 109, 0)  ; 「行ってきます」\k\n　そしてきっちり三十分後…\k\n　ベッドの脇に置いた忠犬の胸に『芽生えシリーズ十六　基礎英文法』を抱かせると、かずさは“彼ら”に一言だけ語りかけ、部屋を出た。\k\n　それは彼女がほぼ二年半ぶりに口にした『挨拶』だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 4301
PUSH INT 90
PUSH INT 1
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0117>, 110, 1)  ; 「…あ～」\k\n　家を出た途端降り注ぐ陽光に目を細める。\k\n　もうすっかり秋めいた空は夏ほど辛くはなかったけれど、ほぼ徹夜明けの今はその穏やかな陽射しすら勘弁して欲しかった。\k\n「行きたくないなぁ…学校」\k\n
PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0118>, 111, 0)  ; 　今までなら、少なくとも去年までならこんな日は絶対に登校なんかしなかった。\k\n　けれど今は、口から出てくる愚痴めいた言葉を身体が聞いてくれず、しっかりした足取りで駅まで真っ直ぐに向かってしまう。\k\n　そして心も、そんな身体の勝手な反応を心地良く感じている。\k\n「ほんっと、めんどくさ…」\k\n　置いてきぼりを食らった口だけが、相変わらずの減らず口で応戦するけれど、もう自分の中の誰もが相手にしてくれない。\k\n　そんなかずさの真上に、秋晴れの空が広がっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0119>, 112, 1)  ; 　冬馬かずさは、空が………最初から全然嫌いじゃなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 1
CALL NB
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

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

ARRAY_S RES<0120>  ; 5004
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
