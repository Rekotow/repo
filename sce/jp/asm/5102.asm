!RESOURCE "5102.csv"

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
PUSH INT 5102
CALL VI
OPERATOR POP

ARRAY_G 4
PUSH INT 2
OPERATOR MOV
OPERATOR POP
PUSH INT 1
CALL NevelMode
OPERATOR POP

PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0004>, 0, 1)  ; 第二章　二年後の、あの雪\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 3
PUSH INT 9600
PUSH INT 0
PUSH INT 1
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 200
PUSH INT 0
PUSH INT 0
PUSH INT 1
CALL Wait2
OPERATOR POP

PUSH INT 1
PUSH INT 3006
PUSH INT 30
PUSH INT 1
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2011
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

@VCALL SetMessageE(RES<0005>, 1, 0)  ; 「やっぱりここは順当にスキーでしょ？」\k\n「ねぇ、ちょっと贅沢して沖縄でダイビングとか張り込まない？」\k\n「沖縄で泳げるのって四月からだろ。春休みじゃ無理じゃね？」\k\n「じゃあグァムとかサイパンとか」\k\n「…先輩たちから予算の上限聞いてるよね？」\k\n「う～ん、悩ましい。あっちを立てればこっちが立たず…」\k\n「だからスキーにしちゃえば丸く収まるって言ってるのに」\k\n「なぁなぁ、雪菜ちゃんはどこがいい？」\k\n「え？　なに？」\k\n「だからさ、ゼミ合宿の行き先…つか今日はそれ決めるために集まったんだけど」\k\n「あ、ごめんなさい…えっと………もうちょっと考えさせて」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 2, 1)  ; 　政経の学生たちには定番となっている六号館のカフェの一番奥のテーブルに、今日も良く言えば若々しい喧騒がこだまする。\k\n「でもさぁ、なんでまだゼミにも入ってないあたしたちが幹事やらされてんだろうね」\k\n「先輩たちは後期試験が忙しいからとお聞きしてますけど…」\k\n「俺たちも同じ日程なんですけど？」\k\n　外は今にも雪が降りそうなくらいに薄暗く、そして寒々と曇っていたが、彼らの会話の陽気はもうとっくに冬が終わり春休みがやってきたような明るさに満ちていた。\k\n「大体さぁ、去年までは二年なんて参加してなかったらしいじゃん」\k\n「まぁでも、今年はしょうがないと思うよ。うちらの所属ゼミが決まったときから先輩たち大騒ぎだったじゃん」\k\n「…つまり、そういうこと？」\k\n「やっぱりお目当ては…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 3, 1)  ; 「………」\k\n「………」\k\n　と、一瞬、それまでの流れを断ち切るように彼らの声がぴたりと止んだかと思うと、そこにいた一人を除く全員の視線が、その除かれた一人に注がれる。\k\n「え？　え？　あ、ああ…そうね、温泉、なんてどうかな？」\k\n「………」\k\n「………」\k\n「や、やっぱりおばさんくさいかな？」\k\n「………」\k\n「………」\k\n「え？　な、なに…？」\k\n　そして、そのいつも注目を浴び続けることを宿命付けられている彼女が、いつもとは違う素っ頓狂な反応を返した瞬間…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 4, 1)  ; 「あ～、もう、負けよ負け。認めるわ」\k\n「なんなのその見事なまでの時間差ボケ。わざと？　ねぇわざと？」\k\n「いかん、雪菜ちゃんやっぱ壊滅的に可愛い。本人目の前にしてるけど、とっくにふられてるけど言わずにはおれない！」\k\n「待て！　お前今さらっと聞き捨てならない過去を暴露しただろ！」\k\n「もういいよ雪菜は。遠慮も気兼ねもしないで、ただいるだけでいいから」\k\n「そうそう、それだけで先輩や教授の態度が違うもんね。私たちに対してまで」\k\n　せっかく平和を取り戻しかけていた夕暮れのカフェテラスは、ありがたくないことについさっきまでの喧騒を完全に取り戻した。\k\n「…ごめん、ね」\k\n　けれど、皆は知らない。\k\n　雪菜がそんな見事なボケを披露してしまったのは、天然の可愛らしさでも、計算尽くの腹黒さでもなかったことを。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 3
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0009>, 5, 1)  ; 　ただ、何も聞こえてこないように集中していただけだということを。\k\n　カフェテラスのスピーカーから『届かない恋』が流れているその間だけは…\k\n\n
PUSH INT 0
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

PUSH INT 9
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0010>, 6, 0)  ; 　雪菜が峰城大に入学して、ほぼ二年…\k\n　そして、数百人にとっての隠れた名曲が、数千人にとっての冬の定番曲へと変貌を遂げてから、一年とちょっとが過ぎていた。\k\n　一年前の学園祭の夜に初めて峰城大キャンパスに流れた『届かない恋』は、その後も学内ラジオ局の猛プッシュを受け、そこに付属時代からこの曲を知る人や、新たに触れた人の支持を次々と取り込み、今では峰城大生で知らぬ者はいないというほどに知名度を上げていた。\k\n　けれど、その切ない恋愛を歌い上げる謎のボーカリストの正体については、ユニット代表者の強い意向と、付属時代の同級生のそこそこの配慮によって、未だに『知る人ぞ知る』の状態を保てていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0011>, 7, 1)  ; 　ただ、その『知る人』側の攻勢は相変わらずで、バンド加入のお誘いも、ミス峰城エントリーのお誘いも、ついでにどさくさに紛れての告白も止むことはなく。\k\n　そして肝心の雪菜の方も相変わらずで、それらの引きも切らない勧誘に対して曖昧に微笑むだけで、決してその軽薄なお誘いに乗るようなことはなかった。\k\n　それでも、彼女についてほんの少し変わったことがあるとすれば…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2011
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 100
PUSH INT 0
PUSH FLOAT 1.3
PUSH FLOAT 1.3
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 100
OPERATOR NEGATE
PUSH INT 0
PUSH INT 6000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0012>, 8, 0)  ; 「じゃあ各自の担当はそんな感じで。雪菜、今度はちゃんと聞いてくれてた？」\k\n「大丈夫、先輩たちへの連絡係だよね。任せておいて」\k\n　こうして、『四人組』以外の友人も受け入れるようになったこと。\k\n　ライブもミスコンもデートもＮＧ。\k\n　けれど、コンパやお茶会程度なら付き合いが悪いと言われない程度には顔を出し、自分に期待されている役割をきちんとこなし、幹事や同級生の顔を立てるのも忘れない。\k\n　適度に親しく、適度に礼儀正しく、お高くなく、下品でもなく、そして決して感情的になったりしない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 9, 1)  ; 　“愛嬌のある高嶺の花”\k\n　そんな、付属時代から得意だったかりそめの自分に、さらに磨きをかけていた。\k\n　けれど、それが進歩なのか退化なのか、雪菜自身にもわかっていなかった。\k\n　なぜなら…\k\n「そういえばさ友近君…北原君って結局参加するの？　しないの？」\k\n「昨日の時点ではまだ保留って言ってたけど…難しいんじゃないかな」\k\n　こうして、春希の近況を、他の人間から聞いて初めて知ることが。\k\n　こうして、春希の近況を、自分ではない人間に確認されることが。\k\n　雪菜が、この一年で得たものの代わりに失ってしまったものを物語っていたから。\k\n「だいたい、北原君が最初から仕切ってくれたらこうしてあたしたちが集まることもなかったのに」\k\n「そうやって何でも春希に押しつけようとするなって。あいつ春休みもほとんど毎日バイト入れてるんだからさ」
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

PUSH INT 1
PUSH INT 2011
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

@VCALL SetMessageE(RES<0014>, 10, 1)  ; 　一年ちょっと前の“あの日”、雪菜は立ち止まってしまった。\k\n　春希の手を取り、胸にすがり、今までの寂しさと辛さを、今まで以上のいとおしさで埋めるはずだったのに。\k\n　なのに、たかが電波に乗っただけのたった一曲の歌が、雪菜のその溢れ出た想いと振り絞った勇気をあっさりと摘み取ってしまった。\k\n「けどさぁ、学生の本分は…」\k\n「勉強だろ。あいつの成績知ってて疎かにしてるって言えるか？」\k\n「だから、それだけじゃなくって…」\k\n「俺たち苦学生をそんなに責めないでくれよ。俺だって春休みは全部バイト入れるつもりだったけど、春希と相談してどっちかは参加しないとって話になったから…」\k\n　あれ以来二人は、心理的に遠く、けれど物理的には近い距離を持て余したままで。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 11, 1)  ; 　けれど雪菜は、悔やんでも悔やみきれないあのときの失敗を全て自分の責任として抱え込んだまま、その中途半端な距離を諦めたかのように受け入れていた。\k\n　とうとう、心が全てすり切れてしまったかのように…\k\n「…友近、前から思ってたけど、なんでそんなムキになって北原をかばうんだよ？」\k\n「あんたたち怪しい…」\k\n「そういえばバイト先同じなんだって？　しかも二箇所も」\k\n「…デキてる？」\k\n「似たもの同士だし、二人とも女に興味なさげだし…あり得るよなぁ」\k\n　雪菜が他の友人たちと交流を広げていったのは、ちょうどその冬の頃からだった。\k\n　そうやって春希と触れられない寂しさを別のもので埋めようとしたのかもしれない。\k\n　雪菜の心が、自分を保ったまま生きていくために自動的にバランスを取っただけなのかもしれない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 12, 1)  ; 　…けれど、そうやって“逃げた”ことが、雪菜の春希に対する罪悪感をますます掻き立てるという悪循環に陥っていた。\k\n「アホらしい。お前ら何もわかっちゃいないな。北原って外じゃ相当モテんだぞ？」\k\n「え～、そうなの？」\k\n「何しろ、この前もバイト先のコに強引に迫られてたし…」\k\n「ぇ…っ！？」\k\n「うそぉぉ～！　あの委員長君が！？」\k\n　その時、雪菜が息を呑んだ声は、直後の叫びで運良くかき消されてくれた。\k\n「大学生にもなって委員長ってニックネームはどうなんだよ…そりゃまぁ的確だけど」\k\n「で、で、どうなったの？　北原君、そのコとつきあってんの？」\k\n「どうなのよ友近君！？」\k\n「そんなに興味あるなら直接聞けよ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0017>, 13, 1)  ; 「まぁ、興味ないことも…」\k\n「確かに頭いいし面倒見いいし稼ぎもいいし顔もそこそこだし、将来含めてだったら、かなりの有望株なんだけどねぇ」\k\n「これでもう少し人に見られることに敏感になればいい線行くんだけど」\k\n「なにそれ？　北原って実はかなりの注目株？」\k\n「けど彼ってなんか時々人を寄せ付けない雰囲気あるじゃん？」\k\n「そうそう、なんか面倒見よかったり急に突き放したりアンバランスなんだよねぇ」\k\n「…もうその辺にしとけ。とにかく俺は親友を売るような真似はしない…つか、さっきのも喋りすぎた。忘れてくれ」\k\n　最後にそう呟くと、春希の“親友”を名乗った彼はそれ以降、その件に関しては本当に固く口を閉ざしてしまった。
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

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2008
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

PUSH INT 5
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0018>, 14, 1)  ; 「友近君」\k\n「小木曽？　あれ？　帰りこっちだっけ？」\k\n　打ち合わせの解散後、一人先を急ぐように早足で正門を出た一人の男子学生の耳に、あまり大きくはないけれどよく通る澄んだ声が届いた。\k\n「ちょっと御宿に出る用事があったから…友近君はこれからバイト？」\k\n「ああ、その先のグッディーズ」\k\n　その、雪菜の方から男に声を掛けたという事実は、彼女を『小木曽雪菜という峰城大のアイドル』と認識している男たちには衝撃的に映ったかもしれない。\k\n　けれど声を掛けられた方の彼は、彼女のことをあくまでも『同じ学部の女友達』として、何のてらいもない自然な態度で接してきた。\k\n「へぇ、結構近くなんだね」\k\n「おかげで顔見知りとよく遭遇するからちょっとやりにくい」\k\n「ふふ…わたしもたまに入るよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 15, 1)  ; 　そんな、普通ではあるけれど普段通りでない反応は、こと雪菜にとっては心地良いものであったけれど、残念ながら今の彼女にそれを認識する余裕はなかった。\k\n「そういえばさ、女の子の制服可愛いよね、あそこって」\k\n「まぁね、それが目当てで来る男性客も、それが目当てで働く男子バイトもいる」\k\n「あはは…もしかして友近君もその一人？」\k\n　何しろ雪菜は彼―<R友近浩樹|ともちかひろき>が今からバイトだということも、そのバイト先も知っていたし、その後ろ姿を見つけたのも声を掛けたのも全て偶然でなかったから。\k\n「よしてくれよ…単に紹介してもらっただけだって」\k\n「紹介？」\k\n「俺が生活費にまで困ってるって知ったら、それを聞きつけたどこかのお節介が無理やり店に話を通してくれたらしくてさ…」\k\n「それは…お節介な人だね」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0020>, 16, 1)  ; 　彼の『生活費にまで困ってる』という言葉が嘘ではないことを、雪菜は知っていた。\k\n　友近浩樹は、一浪して一般入試で入ってきた雪菜たちより年上の同級生だった。\k\n　高校時代からかなりの秀才で、実は現役の時も合格していたのだが、不運なことに彼の家庭環境がその年の入学を許さなかった。\k\n　高校の卒業を控えた三年前の冬、彼の唯一の家族である母が病に倒れたから。\k\n　彼は母親の看病のため、そして不足した入学金を自分で調達するために一年を費やし、二年前、雪菜たちと同じ年にようやく奨学生として峰城大の門をくぐった。\k\n　…そんなことを、武也に愚痴交じりに聞かされたことがあった。\k\n　依緒は『春希を他の男に取られたのがよほど悔しかったんだねぇ』と揶揄していたが、本当は武也だけでなく雪菜もそう感じてしまうほどに、ここ一年ほどの彼と春希の近しい関係は目につくものだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0021>, 17, 1)  ; 「で、それが春…北原君？」\k\n「へぇ、よくわかったね」\k\n　そう、今、雪菜が彼に話しかけている理由は、そんな頑張っている彼のことを知りたいからではなかった。\k\n「だってほら、さっき一緒のお店でバイトしてるって…」\k\n　その彼の境遇に介入し支えている“お節介な彼”のことを知るためだった。\k\n「まぁね、あいつ、バイトなのに店長並みの発言権持っててさ…まぁ、それに見合う以上に仕事してるから誰も文句言わないんだけどね」\k\n「へ、へぇ、そうなんだ？」\k\n「シフト決めやら新人教育やらみんな春希任せなんだよあの店。知らない人が見たら将来の幹部候補生としか思えないって」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 18, 1)  ; 「そっか、だから…」\k\n「ん？」\k\n「お店の女の子に…告られちゃったりしたのかな？」\k\n　必死でさりげなさを装って。\k\n　けれど激しい鼓動と額に滲みそうになる汗を必死に隠しながら。\k\n「それは…さっきも言ったけど、あまり話したくないことなんだよな」\k\n「あ、ごめんなさい。気を悪くしちゃったかな？」\k\n「いや、別にそんなことはないけど」\k\n「本当にごめんなさい、興味本位で失礼なこと聞いちゃって」\k\n「だから、気にしないで…」\k\n　申し訳なさそうに恐縮しながら。\k\n　自分を責めながら。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0023>, 19, 1)  ; 「わたしって下品だね…もう、嫌になっちゃう」\k\n「小木曽…」\k\n　…けれど、決して退くことなく、雪菜はこの話題を留め続ける。\k\n　それは、他人に何度もやられているうちにいつの間にか覚えた戦法。\k\n　相手にやられると非常にむかつくことは知っているけれど、今の雪菜にはこれしか思いつかなかった。\k\n　そこまで追い詰められていたから。\k\n　そこまで、春希の情報に飢えていたから…\k\n「…まぁ、いいか」\k\n「友近君？」\k\n　と、雪菜のその態度を気の毒に思ったのか、それとも辟易したのか、友近はふっと肩の力を抜くと、雪菜に軽く笑いかけた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 20, 1)  ; 「というか、小木曽には聞く権利があるのかな？」\k\n「え…？」\k\n　ついでに、軽く謎かけた。\k\n「これはあくまで他のバイトのコたちに聞いた噂なんだけどさ…」\k\n　そして、その軽口をまるでなかったことにしたかのように、彼は早速本題に入る。\k\n「告白はされたけど、断ったらしいんだよ、あいつ」\k\n「断った…？」\k\n「それも、かなり酷い言い方で」\k\n「ぇ…」\k\n　その時の雪菜は、かなり奇妙な表情をしていたに違いない。\k\n　苦渋、緊張、安堵、疑問、悲痛…それらの要素が次々と切り替わり、しかも混ざり合い、逆に感情が表に現れていなかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0025>, 21, 1)  ; 「で、それ以来そのコが来なくなっちゃってさ…店の中でちょっと問題になってる」\k\n　春希が、自分に好意を寄せる女性を激しく拒絶した…\k\n　“そんなの春希くんじゃない”と信じたくない思いと、“でも今の春希くんなら”と信じてしまいそうになる思いがせめぎ合うごとに、雪菜の心に重みと痛みが増していく。\k\n　だって、もし今の春希がそんな人間になっていたとすれば、彼をそう追い込んだ人物\n“たち”にとって、それはとても辛く、切ないことだったから。\k\n「…もしかして、クビになっちゃうのかな？」\k\n「なんで？」\k\n「だって、お店の中で問題起こしちゃったら、普通…」\k\n「クビってことはないだろ。仕事で問題起こした訳じゃないし、そもそも職場恋愛に関しては店の方だって否定的だし」\k\n「でも…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0026>, 22, 1)  ; 「それに、俺はそんな噂信じてないから…自分で話しておいてなんだけど」\k\n「友近君…？」\k\n　けれど、目の前の、春希の新しい“親友”は、そんな雪菜の心配を笑い飛ばす。\k\n「春希はそんな奴じゃないよ。そりゃ、確かにお節介で仕切り屋で口うるさくて、たまに高圧的なところもあるけどさ…」\k\n　その表情と言葉から滲み出てくるのは、あの融通の利かない真面目で一途な人間に対する圧倒的な信頼。\k\n「それでも面倒見が良くてリーダーシップがあって言うべきことは言う…あんな頑張り屋で、実は気のいい奴、俺は他に知らないな」\k\n「あ、ありがとう…」\k\n「どうして小木曽が感謝するんだ？」\k\n「え、あ、ええと…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0027>, 23, 1)  ; 　かつては自分が担っていたはずのその役目をいつの間にか引き継いでいた年上の同級生を、雪菜は少しだけ眩しそうに見つめた。\k\n「…そういえば小木曽も春希と同じで付属出身なんだっけ。もしかして、あいつのこと昔からよく知ってるとか？」\k\n「それは…えっと…ううん、わたしたち、一度も同じクラスになったことないし…」\k\n「………なんてな。ごめん。俺も意地が悪いな」\k\n「え？」\k\n「付き合ってたんだろ？　あいつと」\k\n「………ぁ」\k\n　ふと、その時の友近の表情に、なんだか昔の記憶がもやのように重なる。\k\n　ちょっと照れたような、申し訳なさそうな、困ったような笑顔。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0028>, 24, 1)  ; 「言っとくけど、春希から聞いたんじゃないぞ。あいつ、小木曽のことになると頑なに口を閉ざすから」\k\n　隠したくないのに隠していた自分の秘密をやっと見透かしてくれた男の子の。\k\n「…まぁ、それが小木曽にとっていいことなのか悪いことなのかは知らないけど」\k\n　気が利かないふりをして、本当は誰よりも気配りのできる優しい男の子の…\k\n「なぁ、小木曽」\k\n「え？」\k\n「やっぱ、まだ忘れられない？」\k\n「っ…」\k\n　その笑顔で、その質問をされるのは辛かった。\k\n　わかっているのに。\k\n　偽物じゃない、本物のその笑顔が、きっともう自分には向かないということを、本当はわかっているのに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0029>, 25, 1)  ; 「じゃあ、俺こっちだから…」\k\n「あ…っ、と、友近君」\k\n「たまには店に来てくれよ。春希も喜ぶかもしれないぞ？」\k\n「ぁ…」\k\n　と、やっぱり照れたように、申し訳なさそうに、困ったように話を切り上げると、友近はあっさり雪菜の視界から消えていく。\k\n　その、段々小さくなる背中を、雪菜はただ呆然と見送るしかなかった。
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

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0030>, 26, 1)  ; 『そんなに…わたしに、触りたい？』\k\n『刻んでおきたい。雪菜の、感触を』\k\n『じゃあ…さわっても、いいよ？』\k\n『っ…雪菜』\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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
PUSH INT 1044
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

@VCALL SetMessageE(RES<0031>, 27, 0)  ; 「あっ…」\k\n　暗がりの中。\k\n　電気を消し、さらに布団の中に潜り込んで、光も音も遮断して。\k\n「んっ…ぅ、くぅ…っ」\k\n　それでも、ほんの少しだけ漏れ出るかすかな息遣いが、部屋の中の凍りついた空気をわずかに震わせる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0032>, 28, 1)  ; 　時計はすでに午前三時を過ぎていた。\k\n　そんな、小木曽家では誰もが寝静まっているはずの真夜中に…\k\n「は、ぁ、ぁぁ…」\k\n　家族の愛を受けて健やかに育った長女の、艶めかしい、悩ましい、いけない声が響く。\k\n\n
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

@VCALL SetMessageE(RES<0033>, 29, 0)  ; 　はじめては、一年くらい前だった。\k\n　春希と決定的にすれ違ったあの学園祭の夜から、春希と会えない日々が、まったく言葉を交わせない日々が数十も続いた頃…\k\n　段々と薄れていきそうになる春希の姿を繋ぎ止めたくて、昔の記憶にすがった。\k\n「はぁぁ、あぁ、ん、んぅ…」\k\n　部屋で、浴室で。\k\n　自らの指で、シャワーで。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0034>, 30, 1)  ; 　二年前の、あの記憶を…\k\n　春希の、泣きそうな、あまりにも余裕のない興奮した声を。\k\n　服の上から乳房を揉みしだかれ、乳首を摘まれた、あの感触を。\k\n　確かに痛かったけれど、でも嬉しくて。\k\n　違和感まみれだったけれど、ちょっと気持ちよくなってしまった。\k\n　あのつたない愛撫を、激しいキスを忘れないように、自分で身体に叩き込んだ。\k\n　これが、春希の手だと。\k\n　これが、春希の指だと。\k\n　これが、春希の唇だと。\k\n　これが、春希の舌だと。\k\n　絶対に自分を騙せないと知っていながら、脳の中に囁きかけた。\k\n「はぁぁぁぁ…ぁんっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1044
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

@VCALL SetMessageE(RES<0035>, 31, 1)  ; 　一度手を付けたら、やめられなくなった。\k\n　最初のうちは、毎日だった。\k\n　毎日のように自分を慰め、快感と、後悔と、涙に溺れた。\k\n　だから必死で抑えた。\k\n　三日に一度、一週間に一度、一月に一度と、欲望が過ぎ去るのをゆっくりと待って…\k\n「あっ、あっ、あっ…あぁぁぁ…っ」\k\n　なのに今日…\k\n　久しぶりに春希の近況に触れて、また燃え上がってしまった。\k\n\n　さっきまでパジャマの上で触れていた左手が、いつの間にか直接胸に触れている。\k\n　それと同期するように、右手の方もショーツの隙間から侵入を始めていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0036>, 32, 1)  ; 　と、すぐにその指先に、ぬめっとした感触が広がる。\k\n　…身体は、とっくに開いていた。\k\n「や、だめ…だめぇぇ…い、やぁぁ…っ」\k\n　雪菜の指は、もう雪菜の指示を聞いてくれない。\k\n　勝手に身体を這い回り、脇腹を撫で、胸を揉み、乳首をこりこりと引っ掻く。\k\n　入り口を弄り、突起を摘み、なかに入っていく。\k\n「春希くん…っ」\k\n　口から零れるのは、想い人の名前。\k\n「はるき…くぅぅ…っ、い、あ、あぁぁぁぁっ」\k\n　一歩も前に進めない、けれど離れることもできない、恋人と呼べない、けれど他人と言いたくない、あのひとの名前。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0037>, 33, 1)  ; 　こんな生殺しのままでは互いのためにならないことは、理性ではわかっている。\k\n　本当は、爆発しなければいけない。\k\n　何もかもぶちまけて、決着をつけなければいけない。\k\n　けれど、最悪の結果を迎えたときの自分の心を思うと、どうしても躊躇してしまう。\k\n　だから、表向きの友人をたくさん作る。\k\n　孤独に押し潰されないように、小狡く逃げ回る。\k\n　…かずさにできなかった方法で、時間を稼ぐ。\k\n　――だからわたしは、かずさに勝てない。\k\n　彼のためだけに、何もかも犠牲にできない。\k\n　彼のこと以外に、まるで無頓着になったりできない。\k\n　彼だけを見て、彼だけに一生懸命想いを這わせる…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0038>, 34, 1)  ; 　そんな、小学生のような恋愛をすることなんかできない。\k\n　かずさより、強く彼を想うことはできない。\k\n「あっ、あっ、あっ…」\k\n　――だから彼は、春希くんは…かずさを…\k\n「ああああああぁぁぁぁぁぁ～っ」\k\n
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
PUSH INT 20
PUSH INT 255
PUSH INT 255
PUSH INT 255
CALL F
OPERATOR POP

PUSH INT 0
PUSH INT 20
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

@VCALL SetMessageE(RES<0039>, 35, 0)  ; 　その瞬間、雪菜は絶頂に達した。\k\n　最悪のタイミングだとわかっていたけれど、もう自分でも止められなかった。\k\n「あっ、あっ…あぁ、ぅぁぁ…っ」\k\n　びく、びくと身体を痙攣させたまま、全身の力を抜いていく。\k\n「あ、あぁ…あぁぁぁ…っ」\k\n　一月ぶりのオナニーは、頭が真っ白になるくらい気持ちよかった。\k\n　けだるさが全身を支配し、久しぶりにぐっすりと眠れそうだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 36, 1)  ; 「う…ぃっく…」\k\n　けれど、何もかも忘れることは…\k\n　行為の最中でさえ、まるでできなかった。\k\n「く、ぅぁ…ふぇぇぇぇ…っ」\k\n　だから、これもいつものことだけど、波が引くにつれ雪菜はゆっくりと泣き出す。\k\n　さっきまでの艶めかしい声と同じように、絶対に外に漏れないように気をつけながら。\k\n「ふぁぁぁぁぁ…ぃっ、ぃぁ…ゃぁぁぁぁ…」\k\n　静かに、心の底から、惨めな自分を罵りながら…
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

PUSH INT 300
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 0
PUSH INT 3019
PUSH INT 90
PUSH INT 1
PUSH INT 40
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 2005
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 100
OPERATOR NEGATE
PUSH INT 0
PUSH FLOAT 1.3
PUSH FLOAT 1.3
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 100
PUSH INT 0
PUSH INT 4500
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0041>, 37, 1)  ; 　それからしばらくして、政経の学生たちの間にちょっとした噂が流れ始めた。\k\n　彼らの囁きに耳を傾けると、『学部の、ひいては大学のアイドルとの声も名高い“あの”小木曽雪菜に、とうとう特定の男ができたらしい』という、それはまた見事なまでに低俗なゴシップネタだった。\k\n　しかし低俗だからこそ、その情報伝達の早さと内容の曖昧さは特筆すべきもので…\k\n『二人で腕を組んでキャンパスを歩いていた』\k\n『完全に彼女の方からベタボレみたいな感じ』\k\n『一緒に駅前のホテル街に消えていく後ろ姿を見かけた』\k\n『男の方、見るからにパッとしない普通の奴だった』\k\n『別れ話だったみたいで、彼女の方が泣いてて男の方が困ってた』\k\n　これが、たった一週間の間に流れた噂の、それもごく一部となれば…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 90
CALL SES
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 3006
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
PUSH INT 2091
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

PUSH INT 7
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0042>, 38, 1)  ; 「それってどんだけ移り気な人間だってのよ。武也じゃあるまいし」\k\n「いちいち俺を引き合いに出さないと愚痴ることもできないのかよお前」\k\n　その情報の正確性を頭から信じていない<R人間たち|たけやといお>にとっては、こうして味気ない酒の肴にしかならなかった。\k\n
PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0043>, 39, 0)  ; 　大学からほど近い駅ビル地下の居酒屋。\k\n　知り合って八年の、平気で夜中に一緒に酒を飲む間柄の二人が膝を突き合わせていた。\k\n　…とはいえ終電は決して逃がさない、夜明けにコーヒーは決して飲まない、そんな間柄の二人でもあったけれど。\k\n「でさ、結局のところどんな感じなのよ」\k\n「誇張や嘘が９９パーセントってところだな」\k\n「１パーも真実が混じってるってことは…やっぱり相手は…」\k\n「ああ、友近だよ」\k\n「あちゃ～」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0044>, 40, 1)  ; 　実のところ、武也はその現場をリアルに目撃していた。\k\n　後期試験対策でコピー機の前に行列のできていた談話室。\k\n　そこにある丸テーブルで、ノートパソコンを広げながら色気のなさそうな会話を繰り広げていた二人の姿を。\k\n　雪菜と友近浩樹が同じゼミに所属していることも、二人ともゼミ合宿の幹事であることも、ついでに同じ分担であることも知っている武也にしてみれば、それは常識で考えても単なる打ち合わせとしか言いようがなかった。\k\n　それでも、“あの難攻不落の”小木曽雪菜が衆人環視の中、男と二人きりでいたという事実だけでも、今まで彼女のガードに完璧に跳ね返されてきた男たちにとっては大事件なのかもしれなかった。\k\n　けれど…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0045>, 41, 1)  ; 「実はさ、最近また雪菜からちょくちょく電話来るようになったんだけど」\k\n「へぇ、よかったじゃん。一時期なんか向こうが遠慮してるみたいだったし」\k\n「うん、それはいいんだけどね…」\k\n「なんか歯切れが悪いな。話が弾まないのか？」\k\n「ううん、前と比べたら全然明るい。少しだけ昔に戻ってきた感じ」\k\n「…まさか、雪菜ちゃん本当に友近のこと？」\k\n「ううん、話題は全部春希ネタ。バイト先の塾で表彰されたんだって」\k\n「…はぁ？」\k\n「なんでも受け持ったクラスの合格率がトップだったんだって。正社員と比べても」\k\n「…はぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 42, 1)  ; 「しかも生徒の受けもかなりいいらしくて、“春希くんなら絶対いい先生になれるよね！”って…」\k\n「………」\k\n「マジで嬉しそうだった」\k\n「…なぁ、つまりその情報の出所って」\k\n「………可哀想にねぇ、友近君」\k\n　こうして裏の裏まで事情を知ってしまう二人にとっては、それはごく小さくて、そして一部の人間にとって残酷な単なるガセネタとしか言いようがなかった。\k\n「ま、まぁ、相手はあの春希とタメを張る堅物だぜ。男女関係とかそういうのなしに、単なる親切心でやってる可能性も…」\k\n「もしそうだとしてもさ…」\k\n　と、依緒はグラスに残った氷を口に含むと、物憂げな表情のまま天井を見上げる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0047>, 43, 1)  ; 「あたし最近思うんだよね。もうこの際、雪菜には別の相手の方がいいのかなって」\k\n「…どういう意味だよ」\k\n　と、武也の方も依緒の態度に合わせるかのように、不機嫌そうに姿勢を崩す。\k\n「その方がさ、お互い幸せだよきっと。ここまでこんがらがっちゃったらさ」\k\n「………」\k\n　というより、実際に不機嫌になっていた。\k\n「武也はどう思う？　やっぱりあの二人が別れるのには納得行かない？」\k\n「そんなこと、俺たちが決めることじゃないだろ」\k\n「でも友達として意見はしてもよくない？　あたしたち、それくらいの付き合いはしてると思っていいよね？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 44, 1)  ; 　何しろ、こんな今さらな話を、今まで二人がしてこなかったはずもなく。\k\n　そして、そのたびにどういう結論が出たのかを覚えていないはずもなく。\k\n　…というか、一度たりとも結論なんか出たはずもなく。\k\n「で、その新しい相手にふさわしいのが友近だって言うのか？　あの春希零号機の？」\k\n「武也初号機よりは全然いいと思うんだけど」\k\n「前の男に似てるから？　雪菜ちゃんにはちょうどいい代用品だってか？」\k\n　また自分を引き合いに出されたことに対するツッコミを、武也はぐっと飲み込んだ。\k\n「そんな意味じゃないよ。ただ冷静に考えるとさ…」\k\n「悪いけど、俺はそんなこと冷静に判断できないし、したくない」\k\n「あんたはそんなふうに言うけどね、だいたい、春希の気持ちってどうなの？」\k\n「それは…」\k\n　…だからといって不毛な会話から逃れられるかと言えばそんなはずもなく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0049>, 45, 1)  ; 「雪菜は隠してないよ？　身も蓋もないくらい春希にのぼせ上がってること…」\k\n　大学に入ってから、彼らが二人きりで会う回数は、実は格段に増えていた。\k\n「けど春希は…あいつ、今でも本当に雪菜のこと想ってるの？」\k\n「それは………わかんね」\k\n「あんたでも、なの？」\k\n　けれど会っているときに自分たちの話をしていた記憶は、数えるほどすらなかった。\k\n「あの時の罪の意識が強すぎるんだよ、あいつ」\k\n「そりゃ…だって、春希は確かにそれだけのことをしでかしたんだもん」\k\n「それを一番わかってるのもあいつ自身だ」\k\n　いつも乾杯もせずに始まって、収まるところに収まらない話に花を枯らせ、いい加減不毛にも程があると互いが認めたところでお開き。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0050>, 46, 1)  ; 「だから、もし雪菜ちゃんのことが未だに好きだとしても絶対に口を割らないし、意地でも態度に出さないんだよ」\k\n「なんてめんどくさい…」\k\n「どっちもどっちだ」\k\n　本当に、どっちもどっちとしか言いようがなかった。\k\n　こんなにも不毛な関係をまったく苦にもせず。\k\n　こんなにも長い間相手の側にいることを当然のように受け止めて。\k\n　…そんな、どっちもどっちなくらいにめんどくさい二人が、今夜も酒を酌み交わす。
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

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2011
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

PUSH INT 5
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 47, 1)  ; 「やっと終わったね、試験」\k\n「ああ、今回は本当にヤバかった」\k\n　後期試験の最終日を飾った二月中旬の土曜日。\k\n　いまだに増殖を続ける噂のことなどつゆ知らず、お馴染みの六号館隣のカフェに、例の二人の姿があった。\k\n　試験も終わり、大学中にほっとした空気が流れる中、彼女たちもいつも以上に解放感に包まれた雰囲気で軽口を叩いていた。\k\n「そうなの？　いつもＡばかりって聞いたけど？」\k\n「それは必死に勉強してたからで。今回は試験中でもバイト休めなかったし」\k\n「え、どうして…あ」\k\n「何しろこっちは進級できても先立つものがないとね…」\k\n「そっか…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0052>, 48, 1)  ; 　と、彼のちょっとだけ曇った表情と自嘲気味の言葉で、本当に解放されたのは自分だけだったことに雪菜は気がついた。\k\n　今、彼が苦戦しているのは峰城大の政経学部などではなく、友近家の経済状況であるという実態を。\k\n「それは…わたしが簡単に同情できることじゃないね。でも何とか無事に進級できるよう願ってます」\k\n「小木曽は…」\k\n「ん？」\k\n「なんか、心地良いな」\k\n「え、なにそれ？」\k\n　他の男たちとは全然違う、そして誰かを彷彿とさせるちょっとずれた賞賛に、雪菜は表情を飾るのも忘れ、きょとんと相手を見やる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0053>, 49, 1)  ; 「普通の奴はこういう話すると簡単に同情してくれちゃうんで、微妙な気分になる上に心苦しいっていう、なんか嫌な流れになっちゃうんだよな」\k\n　その言葉に続いて友近は『結局、そういう誰も楽しくならない話をする俺が悪いんだけどね』と大真面目に反省してみせる。\k\n「こんなの、特別でもなんでもないよ」\k\n　やっぱりそういうところが誰かを彷彿とさせて、雪菜は今度も表情を飾らずに、軽い笑顔で応える。\k\n「素でそう思ってるところが小木曽のいいところだよな」\k\n「だって、わたしが友近君に同情できないのは、介入もできないって知ってるから」\k\n「それって、どういう…？」\k\n「相手のことを心の底から同情してもいいのは、相手の事情を本気で解決しようと頑張っちゃう人だけだよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0054>, 50, 1)  ; 「ああ、そっか…確かにいるよなぁ、そういう奴」\k\n「うん、いるよね…ふふ」\k\n　そして、言葉も態度も飾らず、本心をさらけ出す。\k\n　だって、ここは雪菜が抱える春希への気持ちを誰もが認め、誰もが否定しない。\k\n　そして、春希のすることを誰もが肯定する、雪菜にとって理想の空間だったから。\k\n\n　ここ数日で、雪菜は友近から春希の噂を何度も聞かせてもらった。\k\n　同じバイト先での働きぶり、態度、言動。\k\n　実習でペアを組んでいるときの努力ぶり、能力、視点、\k\n　そして、プライベートの時の世話焼きぶり、説教、優しさ。\k\n　話題の中に、春希の、雪菜に対しての気持ちのことは出て来なかったけれど、それでも雪菜の抱える寂寥の慰めには十分すぎるほどだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0055>, 51, 1)  ; 　ついでに彼も完全に春希に心酔していて、シンパシーを感じずにはいられなかった。\k\n「さてと、明日から春休みだし、いよいよ合宿本番だなぁ」\k\n「まだまだ忙しくなりそうだね…それじゃ、今日も打ち合わせよろしくお願いします」\k\n　だから雪菜は、この同盟関係に安心しきっていた。\k\n　なぜならこれは、ゼミ合宿の幹事同士の打ち合わせに過ぎないから。\k\n　共通の友達の噂話で盛り上がっているだけだから。\k\n「とはいえ残った仕事は、出欠の返事を返してない人たちのフォローだけかな」\k\n「あと何人くらい？」\k\n「参加表明が二十五人で不参加が三人だから、残りは十六人かな…」\k\n　そして雪菜は、こんな普通の人から見たら異質な関係を続けているにも関わらず、友近に対して罪悪感も後ろめたさもまったく抱いていなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0056>, 52, 1)  ; 　なぜなら彼は、普通の男子学生とは違い、下心も裏もない人物だから。\k\n　春希の話題で盛り上がることは、彼にとっても心地良いことに違いないから。\k\n　なにより雪菜の中には、『春希くんのことを好きな人に悪い人はいない』という、他人が聞いたら呆れ返るような超理論が根底にあったから。\k\n「あれ？　計算違うよそれ。十七人じゃない？」\k\n「え？　そんなはずは…」\k\n「だってほら、ウチのゼミって二年生も入れると四十五人でしょ？　で、返信の帰ってきてる人が二十八人だよね？」\k\n「あ…っ」\k\n「ほらやっぱり残りは十七人だ。ちょっと出欠名簿見せて」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 2011
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 100
PUSH INT 0
PUSH FLOAT 1.3
PUSH FLOAT 1.3
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 100
OPERATOR NEGATE
PUSH INT 0
PUSH INT 6000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0057>, 53, 0)  ; 「いや、ちょっと、小木曽…」\k\n　だからその瞬間、友近の表情が揺らいだのを、雪菜はまるっきり見逃した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0058>, 54, 1)  ; 「一人抜けてるんだよ。連絡も行かなかったら可哀想じゃない、その人」\k\n「………」\k\n　何しろ信じ切っていたから。\k\n　友達であることを。\k\n　友情以外の感情などないことを。\k\n　そこまでの関係だからこそ、相手に秘密などあるはずがないと…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 2011
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

@VCALL SetMessageE(RES<0059>, 55, 0)  ; 「…あれ？」\k\n　ディスプレイに映し出された名簿をチェックしていた雪菜の視線が止まる。\k\n　それは、目的の行を見つけたからではなく、むしろその逆で…\k\n「………ない」\k\n「っ…」\k\n　四十五人いたはずのゼミ生の名簿が四十四行で終わっているという事実と…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0060>, 56, 1)  ; 「春希くんの、名前…」\k\n　そして、そのリストから消えていたのが、雪菜が一番最初に確認すべき人の名前だったという事実から。\k\n「あ、ああ…そのことね」\k\n「っ！？　そのこと…って？」\k\n「い、いや、実はさ…」\k\n「なに？　どういうことなの？」\k\n　声が裏返る。\k\n　舌がもつれる。\k\n　嫌なくらいに鼓動の間隔が狭まる。\k\n「こっちのゼミ、入らないんだよ、春希の奴」\k\n「な…なんでぇ！？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessage(RES<0061>, 57, 1)  ; 　全身の毛穴が開くのが…\k\n　脂汗が身体の外に逃げていくのが、感覚でわかってしまう。\k\n
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

@VCALL SetMessageE(RES<0062>, 58, 0)  ; 「あいつさ………四月から転部するんだ。文学部に」\k\n「………ぇ」\k\n　瞬間、雪菜は表情を凍らせた。\k\n　感情を、表情から切り離した。\k\n　…そうでもしないと、誰にも見せられない顔を作ってしまいそうだったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 4002
PUSH INT 0
PUSH INT 0
PUSH INT 100
PUSH INT 0
CALL SEP
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

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0063>, 59, 1)  ; 「一件の、伝言を預かっています。二十時、三十二分です」\k\n
PUSH INT 1
PUSH INT 8206
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

@VCALL SetMessageE(RES<0064>, 60, 0)  ; 「………」\k\n「雪菜？　あたし、依緒」\k\n「今、春希のバイト先から帰ってきた。ちょっとだけ話したよ」\k\n「…ごめん、あたしたちも今日まで知らなかった。あいつの転部のこと」\k\n「たった今までちょっと…て言うか、相当やり合ってた」\k\n「実のところ、武也の方がかなり熱くなっちゃってね…」\k\n「あいつ、自分に相談してくれなかったのが相当ショックだったみたい」\k\n「帰りもずっと機嫌悪くてさぁ…なだめるの大変だったよ」\k\n「まぁ、こっちの事情はともかく…」\k\n「とりあえず春希には、もう一度雪菜と話せって言っといたから」\k\n「雪菜さぁ、『向こうでも頑張って』とか言ったんだって？　あいつに」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0065>, 61, 1)  ; 「そんな無理に我慢してどうすんのよ…ちゃんと怒りなよ」\k\n「そんな簡単に春希の勝手許したら駄目だからね？」\k\n「いい？　もう一度ちゃんと話そう？」\k\n「ううん、一度だけじゃなくて、納得行くまで何度もきちんと話し合おう？」\k\n「雪菜がいいなら、あたしや武也も付き添うからさ」\k\n「とりあえず、後でまたかけるから。それじゃ」\k\n
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

@VCALL SetMessage(RES<0066>, 62, 0)  ; 「………あ、それと」\k\n「今日でハタチだね…誕生日おめでとう」\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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
PUSH INT 1044
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

PUSH INT 12
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 63, 0)  ; 「っ…！」\k\n　留守電の再生が終わると、雪菜は携帯を投げつけようとして…すんでの所で思いとどまり、ベッドの上に放った。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0068>, 64, 1)  ; 　携帯に当たるのも、依緒に当たるのもあまりにも間違っていることに気づくくらいには、ほんの少しだけ冷静さを取り戻していたのかもしれない。\k\n　ここでこうしたまま、そろそろ丸一日になる。\k\n　自分の部屋に閉じこもり、中から鍵を掛けて、せっかくパーティの準備をしてくれた家族の呼びかけにも一切応えぬまま、膝を抱えて床の上にうずくまったままで…\k\n「………ぅ」\k\n　と、自らの境遇を顧みると、急激に胃の辺りが痛み出してきた。\k\n　最後に口にしたのは、家に帰る前に入ったカフェテラスのコーヒー一杯だけ。\k\n　だって、あの時自分の目の前にいた“<Rあの人|はるき>”が、こうして自分から全ての気力を奪っていったのだから…
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

@VCALL SetMessageE(RES<0069>, 65, 1)  ; 　友近から春希の転部のことを聞き、すぐに彼を捜して学内をさまよった。\k\n　携帯にかければ済むことだとわかっていながらも、出てくれなかったときのことを考えると、もうそんな勇気すらも湧かなかった。\k\n　手が離せないからなのか、転部のことでバツが悪いからなのか、それとも、もう自分とは話すつもりがなくて着信拒否をしているのか…\k\n　そんな様々なくだらない可能性を思い描いて、ますます心がすり減ってしまうから。\k\n　せっかく少しずつ気持ちの均衡を取り戻してきていたのに、それが全て水泡に帰してしまうのが怖かったから。\k\n\n　三十分後、やっと春希を見つけた。\k\n　…正門のところで、雪菜を待っていた。\k\n　春希の方も、覚悟を決めていたみたいだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0070>, 66, 1)  ; 　けれど向こうも、携帯で雪菜を呼び出す勇気は、もう失っているらしかった。\k\n　それから、またカフェテラスに舞い戻り、春希と話をした。\k\n　三十分前まで友近といたのと同じテーブルで。\k\n　三十分前からずっと隣のテーブルにいた同級生たちが怪訝な顔をしていたが、そんなことを気にする余裕もなかった。\k\n\n　そこまでして、やっと久しぶりに彼と口をきけたのに…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0071>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 1
PUSH INT 2011
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

@VCALL SetMessageE(RES<0072>, 67, 0)  ; 『そ、そうなんだ。出版社狙ってるんだ。だから…』\k\n　雪菜は、聞かなくてはならなかったことも、これまで抱えていた自分の想いも、今自分が感じている激情も、ほとんど何も彼に伝えることができなかった。\k\n『え？　あ、ううん、合ってると思うよ、国文。春希くん、文章書くの得意だし』\k\n　ただ春希が淡々と話す転部の理由を、必死に冷静さを装いつつ聞き取っただけ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0073>, 68, 1)  ; 『そっか…もうそこまで具体的に考えてるんだ。やっぱり、かなわないなぁ』\k\n　ずっと、笑顔のまま…\k\n『…会えるよね？』\k\n　どうやって？\k\n　今だって会えないのに。\k\n『ね、ねぇ…これからも、電話、していいかな？』\k\n　どうやって？\k\n　今だって掛けられないのに\k\n　離れてしまってから、何をすれば繋がれるというのか。\k\n『大丈夫、だよね？』\k\n　なにが大丈夫なものか。\k\n『な、何言ってるんだろね、わたし。あは、あはは…っ』
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

ARRAY_S RES<0074>
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 255
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0075>, 69, 1)  ; 　本当に、何を言っていたんだろうか…\k\n　断片的に、あのときの自分の言葉が浮かんでは消える。\k\n　けれど、本当にそんな軽薄な追従が自分の口から出たのか、もう覚えていなかった。\k\n　ただ覚えているのは、自分が別れ際に歪んだ笑顔を浮かべていたこと。\k\n　あと数秒もあれば思いっきり崩れてしまうその表情を守り抜くために、逃げるように背中を向けて店を出てしまったこと。\k\n\n　――どうして。\k\n　　どうして、こうなっちゃうんだろう…\k\n\n　もう、何度目になるかもわからない問いかけ。\k\n　決して答えの出ない試験。絶対に出口の見つからない迷路。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0076>, 70, 1)  ; 　――なんで今なの？\k\n　　もう嫌。\k\n　　こんなの嫌だよ。\k\n　　だって、だって、もうすぐわたしの…\k\n\n
PUSH INT 180
CALL MS
OPERATOR POP

@VCALL SetMessage(RES<0077>, 71, 0)  ; 　――誕生日、なんだよ？\k\n\n　二月十四日。\k\n　世間的なバレンタインデーは、小木曽家的な雪菜の記念日。\k\n　しかも今年は、いつもよりもさらに特別な…\k\n「～～～っ！」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1042
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 3
PUSH INT 5
PUSH INT 10
PUSH INT 128
PUSH INT 2
PUSH INT 0
CALL SetWeather
OPERATOR POP

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 15
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0078>, 72, 0)  ; 　雪が、降ってきた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0079>, 73, 1)  ; 　凍り付きそうなくらいに寒い部屋から窓の外を見上げると、二年前の今日と同じ、裏切りの白い印が空から…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 300
CALL MS
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
PUSH INT 0
CALL ChangeWeather
OPERATOR POP

PUSH INT 1
PUSH INT 1042
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

@VCALL SetMessageE(RES<0080>, 74, 0)  ; 　………いや、それは幻。\k\n　あの時も、春希は来なかった。\k\n　あの時も、雪菜を裏切っていた。\k\n　そんな消せない記憶が見せた、過去の残像のひとひらだった。\k\n　だって今の雪菜は、何も見ていない。\k\n　自分の膝の中の暗闇に顔を埋め、窓の外も、雲も、雪も、そして現実も、何も…\k\n\n「雪菜！　いい加減下りてきなさい！」\k\n「………」\k\n　階段の下から、そろそろ厳しさを増した母の声が届く。
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

@VCALL SetMessageE(RES<0081>, 75, 1)  ; 　でも、駄目だった。\k\n　今は何も食べたくない。\k\n　家族の顔も、見たくない。話したくない。\k\n　だって今、誰かに優しい声を掛けられてしまったら…\k\n　自分がどんなみっともない癇癪を起こして、怒鳴り散らして、そして甘えてしまうか想像もつかなかったから。\k\n「顔だけでも見せなさい！　お客様が来てるのよ！」\k\n「………ぇ」\k\n\n『春希には、もう一度雪菜と話せって言っといたから』\k\n
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0082>, 76, 1)  ; 　脳裏に、誰かがほんの少し前に発したそんな台詞が下りてくる。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1044
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0083>, 77, 0)  ; 「春希くん…っ！」\k\n　だから雪菜は急いで立ち上がり…\k\n　そして、まる一日動かなかったせいで固まってしまっていた自分の身体を持て余した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 1001
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
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

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

PUSH INT 0
PUSH INT 615
PUSH INT 0
PUSH INT 0
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessage(RES<0084>, 78, 1)  ; 　必死で全身の力を振り絞って、けれどぎこちなくしか動けず。\k\n　心ばかり急いて、けれどゆっくりしか階段を下りられず。\k\n　勢い込んで玄関の扉を開け、門の扉を開け…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1042
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

@VCALL SetMessage(RES<0085>, 79, 0)  ; 「小木曽…」\k\n「………ぇ？」\k\n　暗く澄んだ寒空の下で、雪菜はもう一度硬直した。\k\n　まったく想像もしていなかった訪問者が、目の前に立っていたから。\k\n「悪いな、こんな夜遅くに」\k\n
PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0086>, 80, 0)  ; 「友近…君？　どうして？」\k\n「どうしてって…その…」\k\n　その反応は、他人から見れば相手を怒らせるに十分なほど薄情に映ったに違いない。\k\n　普通なら、十分に予測できる訪問者だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0087>, 81, 1)  ; 　なにしろ、同性を含めても最近一番よく会っていた相手なのだから…\k\n「あの時、すごく辛そうだったからさ…どうしてるかと思って」\k\n「あ…あぁ」\k\n　それでも雪菜には、全身にまとわりつく違和感が拭えない。\k\n　なぜなら彼は、今、自分の目の前に現れるべき人の“格”を満たしていなかったから。\k\n「ごめんな、小木曽…」\k\n「何、が」\k\n　それは今の、変わってしまった雪菜が心の奥底に飼っている傲慢で自分勝手な考え方。\k\n　でもその思想は、雪菜の人気や評判を貶めることにはならない。\k\n　なぜなら雪菜は大人だったから。\k\n　そういう心の奥底を決して表に出さないから。\k\n　…数年前、親友寸前まで行った誰かさんとは対照的に。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0088>, 82, 1)  ; 「春希の転部の話、なかなか切り出せなくて」\k\n「それは…友近君のせいじゃないから」\k\n「それでも謝らせて…済まなかった」\k\n「いいんだってば…」\k\n　本当に、気にしていなかった。\k\n　春希のしてしまった決断に、彼の要素を入れ込む余裕などなかったから。\k\n「それでさ…小木曽は、どうするんだ？　これから」\k\n「どうするって…そんなの」\k\n　もう、放っておいて欲しかった。\k\n　一人にして欲しかった。\k\n　今は、他人に気を使う余裕などなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0089>, 83, 1)  ; 「俺は、あいつが転部しても今のままでいたいと思ってる」\k\n「今の…まま」\k\n「今のまま親友で…って意味」\k\n「っ…」\k\n　親友という言葉を、さらりと言い放つ彼が少し眩しくて、妬ましい。\k\n　心の底から羨ましい…\k\n「今まで通り、毎日のようにバイト先で顔合わせるし…まぁ、受ける授業が変わるから試験対策なんかは協力し合えなくなるかもしれないけど」\k\n　そんな彼の前向きな言葉を聞きながら、羨望の思いに囚われていた雪菜は…\k\n「だから君も、今まで通り遠慮なく俺を利用してくれていいよ」\k\n「………ぇ？」\k\n　その後に彼が続けた少し後ろ向きな言葉の意味を、しばらくは理解できなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0090>, 84, 1)  ; 「あ、いや、決して悪い意味に捉えないで欲しいんだけど…」\k\n「あ、あの…？」\k\n「なんていうかさ、俺、君が春希のことを好きなのは、確かに嬉しいんだ」\k\n「う、うん…？」\k\n「そして、あいつにそこまでこだわる君の性格も好ましいと思ってる」\k\n　雪菜は、自分が覚えた違和感の正体に、まず一つ気がついた。\k\n　“小木曽”がいつの間にか“君”になっていることに…\k\n「俺が君に惹かれたのはさ、可愛らしさとか、華やかな雰囲気とかじゃなくて…あ、いや、もちろんそういうところも好きだったけど」\k\n「っ？」\k\n　いつもの、他の男たちに言われる言葉が混ざり始めていることに。\k\n　このままでは、いつか“雪菜”に変わってしまいそうなことに…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0091>, 85, 1)  ; 「それよりも、君が人の表面じゃなくて本質を見るところが、さ」\k\n\n　――言われたっ！\k\n　　惹かれた、って、言われた。\k\n　　好きって…言われた。\k\n　　………騙されたっ！\k\n\n　友近の方に落ち度など何一つなかった。\k\n　それは間違いなく、雪菜の方の逆恨み…\k\n　雪菜の“本当の”“本質”によるものだった。\k\n「誰よりも早く、春希の本当の良さに気づいて」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0092>, 86, 1)  ; 　――違う、違う…\k\n　　誰よりも早く…じゃない。\k\n　　わたしは二番目だった。\k\n\n　友近の言葉が、雪菜の肌の上っ面を滑って、そのまま地面に吸い込まれていく。\k\n　滑っていく瞬間、その触れている部分がじわりと粟立つ感覚に襲われる。\k\n「自分に近づいてくる奴らなんか目もくれず、しっかりと自分の意志であいつのこと好きになって、自分から積極的にアプローチして…」\k\n\n　――違う、違う…\k\n　　自分の意志だけでやったことじゃない。\k\n　　“一番”が強すぎたから、自分から行くしかなかっただけなのに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0093>, 87, 1)  ; 「だから春希も、普通で考えたら自分に似合わないはずの君のことを好きになった」\k\n\n　――なに？　どういうこと？\k\n　　なんで何も知らない人が、わたしと春希くんのことを語るの？\k\n　　三人のことを知らない人が、二人について語ってしまうの？\k\n\n「だから君は、これからもずっと今のままでいい」\k\n　友近の言葉には、ひとつの嘘も、罠も、計略もなかった。\k\n「だから君は、これからもずっと俺を利用してくれていい」\k\n　真摯で、誠実で、ただ相手の心と向き合って放つ、真実の告白だった。\k\n「春希のことを包み隠さず何もかも話せる、たった一人の友達になってみせる」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0094>, 88, 1)  ; 　…ただ彼に、一つだけ間違いがあったとするならば、そんな正しい言葉も気持ちも、最初から今の雪菜に届くはずがないという事実を知らなかったことだけ。\k\n　真摯であろうが、適当であろうが。\k\n　誠実であろうが、軽薄であろうが。\k\n　今の雪菜には、そんなことは何の意味もなかったのだから。\k\n\n「そして、それでもさ…」\k\n\n　――やめて。\k\n\n「それでも君たちが、元の二人に戻れなかったときは…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0095>, 89, 1)  ; 　――やめて。\k\n　　やめてやめてやめて！\k\n\n「俺が、春希の代わりになるから…」\k\n「ぁ…」\k\n\n　――言われちゃった。\k\n\n「誕生日おめでとう、小木曽…」\k\n「………」\k\n\n　――告白、されちゃった。\k\n　　隙、見せちゃった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0096>, 90, 1)  ; 「これ、受け取って欲しい」\k\n\n
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

@VCALL SetMessageE(RES<0097>, 91, 0)  ; 　――ごめん、春希くん。\k\n\n　二年前に裏切られ。\k\n　一年前から距離を置かれ。\k\n　そして今、近くにいることすら拒まれて…\k\n\n　――ごめんね。\k\n\n　それでも雪菜の頭にあるのは、そんな<R裏切り者|はるき>のことだけだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessageE(RES<0098>, 92, 1)  ; 『俺は、春希が君から逃げ出そうとする気持ちもわかる』\k\n『いい奴だから、真面目だから、誠実だから』\k\n『だからこそ、一度君を裏切ってしまった自分が許せないんだよな』\k\n『君たちのこと、応援したい気持ちもある』\k\n『けどその一方で、もう限界なんじゃないかとも思ってる』\k\n『だから、もう忘れた方がいい』\k\n『本当は、わかってるんだろ？』\k\n『君がいつまでも春希のことを忘れないことが、逆に春希を苦しめてるんだって』\k\n『そうさ、春希は苦しんでる。そして君も苦しんでる』\k\n『だったら俺が、君たちの苦しみを和らげることはできないかな？』
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

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1042
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

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0099>, 93, 1)  ; 「………っ」\k\n　友近が去っても、しばらく雪菜はその場所を動けなかった。\k\n　いや、友近がいる間も、ずっと動けないままだった。\k\n　彼の告白に対して、いつもの定型的な困った笑顔も浮かばなかった。\k\n　断ることも、受け入れることも、微笑むことも、泣くことも…何もできなかった。\k\n\n　目の前の地面に、彼がくれたプレゼントの包みが置かれている。\k\n　ありがとうも言えなかった。\k\n　<Rプレゼントのお返しができる日|バレンタインデー>でありながら、何も渡せなかった。\k\n　それどころか、受け取ることすらできなかった。\k\n　ただ呆然と、彼でもない空でもないどこかを見つめていた。\k\n　差し出した方の友近も、そんな無反応な雪菜に戸惑っていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0100>, 94, 1)  ; 　…いや、間違いなく傷ついていた。\k\n「………」\k\n　けれど雪菜は、友近のことを気遣う余裕などなかった。\k\n　何も考えられないくらい混乱していたから。\k\n　彼以上に自分が傷ついていたから。\k\n　彼にした仕打ちを…自分の罪を自覚しきれていなかったから。\k\n　そして、もう一つ…\k\n「いるんだよね…」\k\n　気づいていたから。\k\n「………春希くん」\k\n　友近が去って行くとき、曲がり角で一瞬、驚いたような仕草を見せたとき…\k\n　雪菜は、カーブミラーにもう一つの人影を見つけていたのだから。
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
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
PUSH INT 8244
PUSH INT 0
PUSH INT 0
PUSH INT 200
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

@VCALL SetMessage(RES<0101>, 95, 1)  ; 「雪菜…」\k\n　雪菜が呼びかけてから三回ほど深呼吸する時間を経て、ようやく角から人影が現れる。\k\n　昨日会った時、そのままの春希。\k\n　昨日別れた時、そのままの春希。\k\n　転部を告げられた、あの時のままの、春希。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1042
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

PUSH INT 9
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0102>, 96, 0)  ; 「見てた…んだよね」\k\n「雪菜…俺」\k\n「いいよ、もう」\k\n　その表情を見るだけでわかってしまった。\k\n　春希が、さっきの会話をどこまで聞いてしまっていたのかが。\k\n「いいんだ…」\k\n　とはいえ、本当はここ一年ほど、ずっとこの表情しか見ていない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0103>, 97, 1)  ; 　いつも『人と話すときはちゃんと目を見て話せ』と説教していたくせに、決して雪菜と目を合わせずに俯いたままで。\k\n　そこに浮かぶのは、気まずさと後ろめたさと罪悪感という、ほとんど同じ感情だけ。\k\n「どうして、出てこなかったの？」\k\n「それは…」\k\n　そしてきっと春希の方も、ここしばらくは、雪菜の今の表情しか見ていないだろう。\k\n　くりっとした瞳で上目遣いに春希の顔を覗き込んでいた悪戯っぽい笑顔はなりを潜め、薄く、そして儚い、笑顔に見えないけれど本人だけは笑っているつもりの表情。\k\n「友近君に、遠慮してた？」\k\n　辛かった。\k\n　バツが悪かった。\k\n　だって、見られてしまったから。\k\n　一番見られたくない場面を、一番見られたくない人に。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0104>, 98, 1)  ; 「あいつは…本当に、心配してくれてるんだと思う。雪菜のことも、俺のことも」\k\n「あ、そう…そうなんだぁ」\k\n　だから、謝りたかった。\k\n　春希にとって親友とも言うべき大切な人に、嫌な思いをさせてしまったことを。\k\n　知らない間に勘違いさせてしまったことを。傷つけていたことを。\k\n　そして…これはどちらかというと期待だったけれど…\k\n　春希にも、嫌な思いをさせてしまっていることを。\k\n　もしかしたら、嫉妬させてしまっていることを。\k\n「本当に仲がいいんだね…友近君と」\k\n　もしそうなら、心の底から謝らなくんてはならない。\k\n　必死ですがって、何もかもなげうって、涙まで浮かべて。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0105>, 99, 1)  ; 「あいつは…頑張ってる。俺なんかよりもよっぽど頑張ってて、だから…」\k\n「うん、そうだね、わたしもそう思う。ほんと尊敬できる人だって」\k\n「雪菜…」\k\n　そして、それがきっかけで今度こそ互いの心の膿を出し切って。\k\n　今度こそ、仲直りできたなら…\k\n「だから彼にあげたの？　わたしを、譲っちゃったの？」\k\n　でももう、遅かった。\k\n　雪菜の心は、もう、表面が全て擦り切れてしまっていた。\k\n「彼なら安心？　わたしのこと大事にしてくれる？　わたしだけを見てくれる？　ずっと側にいてくれる？」\k\n　中から、澱のように溜まっていた黒い中身が激しく溢れ出す。\k\n「春希くんも肩の荷が下りる？　心おきなくわたしのこと忘れられる？　もう苦しまなくても済む？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0106>, 100, 1)  ; 　春希も、雪菜も、二人の歴史も、三人の過去も、何もかも穢して、覆い尽くしていく。\k\n「よかったね…本当に、よかったねぇ…っ！」\k\n　必死で抑えようと心の手をかざしても、指の間から激しく吹きこぼれていく。\k\n「あげるとか、譲るとか…雪菜は雪菜のものだろ。誰のものでもないだろ」\k\n「そんな一般論が聞きたかったと思う！？」\k\n「雪菜…」\k\n「っ…」\k\n　春希が、やっと正面を向いてくれた。\k\n「ごめん…」\k\n　けれどその表情は、俯いているときよりも更に深い絶望に彩られていた。\k\n\n　――ち、違う、違うよ…\k\n　　わたしはただ、謝りたかっただけなのに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0107>, 101, 1)  ; 「ずっと、ずっと…ごめんな」\k\n　あっ、と思った時には、もう遅かった。\k\n　春希は、雪菜の想像以上に傷つき、そのことが雪菜を想像以上に傷つける。\k\n　またいつもの、負のスパイラルに陥っていた。\k\n\n「俺、雪菜をこんなに苦しめてるって知ってるのに…」\k\n\n　――違うんだってばぁっ。\k\n　　わたしが悪いんだってば！\k\n\n「なのに、いつまでも何もできなくて」
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

@VCALL SetMessageE(RES<0108>, 102, 1)  ; 　――嫌な思いをさせてごめんなさい。\k\n　　隙を見せてしまってごめんなさい。\k\n\n「前に進むことも、退くこともできなくてさ」\k\n\n　――わたしには、あなただけなのに、ごめんなさぁい…っ\k\n\n「もう一度だけ言わせてくれ」\k\n\n　――だから、怒って。\k\n\n「ごめん、雪菜…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0109>, 103, 1)  ; 　――キレて。怒鳴って。\k\n　　…ひっぱたいてくれたって、いいよ。\k\n\n「何度も何度も、許されることじゃないけれど、本当に、ごめんな」\k\n\n　――きっかけを作って。\k\n　　わたしたちが、ふたたびぶつかり合えるきっかけを。\k\n\n「でも俺…」\k\n\n　――そしたらわたし、今度こそ。\k\n　　今度、こそ。\k\n\n「何があっても、この決着だけは、つけるから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1042
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

PUSH INT 3
PUSH INT 5
PUSH INT 10
PUSH INT 128
PUSH INT 2
PUSH INT 0
CALL SetWeather
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0110>, 104, 1)  ; 「あ、あは…」\k\n　雪が、降ってきた。\k\n　もう、雪菜以外に誰もいないこの場所に。\k\n「あはは…はは…」\k\n　凍り付きそうなくらいに寒い空気の中に。\k\n　見上げると、二年前の今日と同じ、裏切りの白い印が空から…\k\n　………今度こそ、本物。\k\n　あの時、春希は来なかった。\k\n　そして今、春希は去っていった。\k\n　あの時、雪菜を裏切っていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0111>, 105, 1)  ; 　そして今、雪菜を裏切ったまま、逃げた。\k\n　そうやって、消せない過去が、また同じ現実を作っていく。\k\n「あはははは…ははは…あぅぁぁぁぁぁ…っ」\k\n　擦り切れてしまった雪菜には、もうその現実を押し留める心の力は残っていなかった。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
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

@VCALL SetMessageE(RES<0112>, 106, 0)  ; 　――今度こそ、忘れよう。\k\n　　こんな思いをするくらいなら、こんなに近くにいたくない。\k\n　　彼もそう思った。だから、わたしから離れていった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0113>, 107, 1)  ; 　――なら、忘れよう。\k\n　　彼の嫌なところをいくつもいくつも積み重ねて、彼を忘れよう。\k\n　　彼のこと、嫌いになろう。大嫌いになってしまおう。\k\n　　まずは早速一つ、嫌なところ、見つけた。\k\n　　わたしに黙って、わたしを遠ざけようとするところが、嫌い…\k\n\n
PUSH INT 180
CALL MS
OPERATOR POP

@VCALL SetMessageE(RES<0114>, 108, 0)  ; 　――ねぇ春希くん、わたしたち、今度こそ、もう、終わりだね。\k\n　　よかったね…そして、さようなら。\k\n
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 300
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

ARRAY_S RES<0115>  ; 5103
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
