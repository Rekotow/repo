!RESOURCE "5101.csv"

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
PUSH INT 5101
CALL VI
OPERATOR POP

ARRAY_G 4
PUSH INT 1
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

@VCALL SetMessage(RES<0004>, 0, 1)  ; 第一章　一年後の、あの歌\k\n\n
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
PUSH INT 3000
PUSH INT 60
PUSH INT 1
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2005
PUSH INT 0
PUSH INT 60
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

@VCALL SetMessage(RES<0005>, 1, 0)  ; 「ご、ごめんなさい。今急いでますから」\k\n「そんなこと言わずにさぁ、何とか考え直してくれないかな小木曽ちゃん？」\k\n　四コマ目の講義が終わったばかりの教室は、やっと本日のお勤めから解放された学生たちの喧騒に満ちていた。\k\n
PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 2, 0)  ; 　そんなほっとした空気の中、人混みをかき分け急ぎ教室を出ようとしていた雪菜は、しかし一人の男子学生に食らった足止めから未だに逃れられずにいた。\k\n「でも、もう峰城祭まで一週間しかないですし…」\k\n「一曲だけでもいいんだって！　それなら二、三回合わせるだけで何とかなるだろ？」\k\n「わたし、そんな短期間で準備できるほど器用じゃないですよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 3, 1)  ; 　しつこい男からの誘いにいつも見せる、小首を傾げて少し困ったような、それなのに華やかさを醸し出す微笑みで応えながら。\k\n　…本当は、視線の先にさっさと教室を去っていく“彼”の後ろ姿を捉えて焦れまくっているのに、そんな態度をおくびにも出さないまま。\k\n「大丈夫、歌える歌をそっちで決めてもらえばこっちが合わせるから」\k\n「ううん、やっぱりみんなに迷惑がかかりますから、ごめんなさい…」\k\n　そしてまた、柔らかな笑顔とともに両手を軽く振って『謹んでお断りします』のポーズを取る。\k\n　大学に入ってからそろそろ半年になるけれど、雪菜はこういう表情をほとんど崩したことがない。\k\n　それはとりもなおさず、あらゆる時間、様々な場所、数え切れない理由で言い寄ってくる男が絶えないということの証左でもあったけれど、ただもう一つ付け加えるならば、彼女がここ半年の間、“本性”を見せていないことの証左でもあった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 4, 1)  ; 「ほら、去年の付属祭でやった『ホワイトアルバム』なんかどう？」\k\n「え…」\k\n　けれど、言ったそばから…\k\n　そんな、いつも通りの優しくて控えめな態度にヒビが入ったかのように、雪菜の声がひび割れた。\k\n「それか『サウンドオブディスティニー』でも。どっちも俺たちすぐ弾けるから」\k\n「………」\k\n「実は俺、あのライブ見てたんだよね。こっちの出店ほっぽり出して、わざわざ付属まで足運んでさ」\k\n「そ、そう、ですか…」\k\n　そして声だけでなく、その曖昧な笑顔にまで少しずつ亀裂が入りつつあるのを、しかし目の前で彼女を口説き落とすのに夢中な彼は、まるで気づいていなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0009>, 5, 1)  ; 「…なんて、個人的にはね、本当に歌って欲しいのはあの曲なんだ」\k\n「あの曲………って」\k\n「ほら、付属祭のラストでやった、オリジナルの…」\k\n「それは…っ」\k\n　だからその瞬間、彼女のまとっていた仮面が音を立てて割れ落ちたのにもまるで気づかず…\k\n
PUSH INT 0
PUSH INT 1011
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

@VCALL SetMessageE(RES<0010>, 6, 0)  ; 「は～いそこまで～」\k\n「なっ…」\k\n「あ…」\k\n「あんま面識のない女の子に気安く声かけると嫌われるぜ、先輩？」\k\n「お、お前にだけは言われたくねぇよ飯塚！」\k\n「うんうん、わかるわかる。あたしも今まったく同じこと思ったわ」\k\n「…お前にだけは言われたくねぇよ依緒」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0011>, 7, 1)  ; 　けれどその瞬間、彼女をよく知る二人組が即座に割って入ってくれたおかげで、彼は結局、最後まで彼女の豹変に気づくことはなかった。\k\n\n
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

PUSH INT 1
PUSH INT 3006
PUSH INT 60
PUSH INT 1
PUSH INT 80
PUSH INT 0
CALL SEP
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

@VCALL SetMessage(RES<0012>, 8, 0)  ; 「いつもごめんね、武也くんも依緒も」\k\n　数分後、政経学部のほど近くにあるカフェテラスのテーブルで、雪菜は開口一番、相手の、というより自分の暴走を止めてくれた友人二人に感謝した。\k\n「しっかし相変わらずの大人気だねぇ。全然羨ましくないのが気の毒だけど」\k\n　アイスコーヒーを軽く喉に流し込みながら、水沢依緒がいつも通りの態度で雪菜の謝罪を軽く流す。\k\n
PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 9, 0)  ; 　その、ショートカットで活発そうな外見に似合った男性顔負けのずけずけとさっぱりした言動は付属時代から何も変わっていない。\k\n「これで五組目だぜ？　とうとう参加バンドの半分からオファーが来ちまった」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0014>, 10, 1)  ; 　紅茶にミルクを垂らしつつ、飯塚武也がいつも他の女の子に見せるのとは違う素の表情で、また新たに増えた小木曽雪菜伝説を呆れ気味に賞賛する。\k\n　女性顔負けの細身の体に、茶色がかったくせ毛。そのチャラい外見に似合った普段の悪評は付属時代からさらに磨きがかかっていた。\k\n「…なんなんだろうね、ほんと」\k\n　男女問わず、学年問わず顔の売れてしまっている雪菜にとって、一番小さな、そして一番大事なコミュニティである『四人組』のうちの二人だった。\k\n「相変わらず三年連続ミス付属の看板は衰えちゃいないよな。もちろん中身も含めて」\k\n「本家のミス峰城だって一年目から余裕でしょ…出ればだけどね」\k\n「無理だよ、わたしなんて…」\k\n「雪菜、それ傲慢」\k\n「え？　あ、えっと…前提として出る気がないから無理ってことで…」\k\n「まぁそれなら許容範囲」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 11, 1)  ; 「いじめるな依緒。たとえその、本人は気を使ったつもりの謙遜が他の女子からは限りなく嫌味にしか聞こえないとしても、雪菜ちゃんは半分くらいは本気でそう思ってるんだから。あまりにもタチ悪いことに」\k\n「え、えっと…武也くんも十分わたしのこといじめてると思うんだけどどうかな」\k\n　二人が揶揄するのも仕方ないくらいに、大学生になってからも雪菜の人気はまるで衰えることを知らなかった。\k\n　入学したての頃は、各種サークルからの勧誘が新入生オリエンテーション中の教室にまでひっきりなしに訪れ、わずか数日で学生どころか職員にまでその名を轟かせてしまうことになり。\k\n　その騒動が少し落ち着いたゴールデンウィーク直後から、六月に行われるミス峰城コンテスト一次予選への参加要請で日参する実行委員会に毎日お引き取り願う日々。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 12, 1)  ; 　やっと予選参加を逃げ切ってほっと一息ついたのもつかの間、今度は夏休み初日に開催される野外サマーライブへのボーカル参加を巡っていくつかの参加バンドが争奪戦を繰り広げ。\k\n　そして今は、来週に迫った大学祭ライブへのギリギリのボーカル勧誘合戦へと戦場を移していた。\k\n　…ついでに同時期に開催されるミス峰城コンテスト本選は、『不参加を表明した小木曽雪菜のせい』で盛り上がりに欠けるともっぱらの評判だったりもした。\k\n「ま～それでも同性に嫌われないのが雪菜なんだよねぇ。その辺がどっかの後輩とは大違い」\k\n「そういえば政経の大正浪漫喫茶どうすんだ？　舞子たちまだ諦めてなかったみたいだぜ…“二人”を引き込むこと」\k\n　そもそも出店がそのジャンルになったのも、去年の付属祭での彼女（たち）の功績というか功罪が大きかったということは学部の誰もが認めるところだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0017>, 13, 1)  ; 「何しろ誤解されようがないくらいガードが固いもんね。バンドメンバー全員を手玉に取っちゃう女ボーカルとは大違い」\k\n「自分が絡むと華麗にスルーかよ格好いいなおい」\k\n「二回もスルーしてるのはバンドメンバーさんの方じゃないのかな？」\k\n「あはは、相変わらずだね二人とも。なんか安心する」\k\n　二人の、あまりにも男女がしているとは思えない身も蓋もない会話に、雪菜がくすっと微笑む。\k\n　その表情は、先ほど教室で見せていたあからさまに対外的なものとは違い、心からの安心を感じさせるふわりとした笑顔だった。\k\n　大学生になって、付属のとき以上に人との繋がりが広がったはずの雪菜にとって、それでも今、この表情を見せられるのは彼らだけだった。\k\n　そう、それは、家族を含めても…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
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

@VCALL SetMessageE(RES<0018>, 14, 1)  ; 「わたしも相変わらず…ほんと、何も変わってない。変わってくれない」\k\n「………」\k\n「………」\k\n　…だから、この二人だけにはこんなほの暗い本音までもがつい零れてしまう。\k\n「あ、あいつさ、また新しいバイト始めたんだってよ」\k\n「…そうなんだ？」\k\n「今度は塾講師だってよ。それも峰城大進学コース」\k\n　と、武也が唐突にも思えるくらいに話題を切り替える。\k\n「え～、あたし一般入試じゃ絶対受からないよ<R峰城大|ここ>」\k\n「まったく、バイトでも思いっきりハードル上げやがって」\k\n「どうしてあいつはそこまで苦労が好きかねぇ。どうせ授業も手を抜かずに時間かけて準備したりするんだろ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 15, 1)  ; 　けれど依緒には、それが単なる話題転換ではなく、武也なりのフォローだということはわかっていた。\k\n「だからさ、最近講義終わったらすぐ帰っちまうだろ？　いっつも生徒たちよりも早く教室入りしてるらしいぞ」\k\n「そっか、そうなんだ…らしいね、春希くん」\k\n　二人とも、今の雪菜のほっとした表情を見るまでもなく、彼女が“あいつ”の話題に飢えていたことを知っていたから。\k\n「これでいくつめのバイトだっけ？　ファミレスに、コンビニもだったよね？」\k\n「ネットカフェもあるから四つ。夕方から深夜まで働きづめって感じだな」\k\n「それで講義もレポートもサボらないわ試験も全科目クリアだわ…いつ寝てんのよ？」\k\n「だからさ、そんな訳であいつ、本当に目が回るほど忙しいんだよ。別に雪菜ちゃんを避けてる訳じゃ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0020>, 16, 1)  ; 「わかってるよ。わかってるって、そのくらい…」\k\n「雪菜…」\k\n　つい先ほど、教室から急ぎ去っていきそうになる春希の背中を必死で追いかけようとしていたことを知っていたから。\k\n「最近、話した？」\k\n「ううん、ここ一月くらい、全然」\k\n「電話も？　メールもしないの？　春希もしてこない？」\k\n「しないよ…ううん、できるわけないよ、お互い」\k\n　同じ政経学部の同じ一年である二人は、メールや電話どころか、本当にその気になりさえすれば、毎日顔を合わせて毎日会話ができる。\k\n　とはいえ、携帯の春希のアドレスに触れることすらできない今の雪菜では、たとえ彼の隣に座ったり、彼に話しかけたりしても、その先に続く展開を思い浮かべることすらできるか、正直わからない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
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

@VCALL SetMessageE(RES<0021>, 17, 1)  ; 「それじゃ結局なにも進まないよ雪菜。あんたこのままでいいの？」\k\n「それは…」\k\n「そんなにすぐには無理だって。依緒だってわかってんだろ」\k\n　半年前、春希の…\k\n　あの堅物委員長だったはずの彼がしでかしたことは、この、見た目はアイドルのくせに家庭的で悪戯好きな彼女の心をへし折った。\k\n「だったらもうやめたら？　追いかけるの」\k\n「っ…」\k\n「だからお前、そういう…」\k\n「あんな誠実さだけが取り柄だったくせに、その誠実ささえも捨てちまった春希になんの価値があるんだよ…」\k\n　その裏切りは、彼の友人として、彼女の友人として…そして今はここにいない彼女の友人としても、とても許されることではなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 18, 1)  ; 　それでも…\k\n「わたしが悪いんだよ」\k\n「雪菜ぁ」\k\n　雪菜は、二人が春希を糾弾するのを認めない。\k\n「わたしが春希くんを追いつめた。わたしがかずさを追い込んだ」\k\n　今はここにいない彼女をなかったことにするのを認めない。\k\n「わたしが、二人を引き裂いた」\k\n　そして、自分を許すことを認めない。\k\n　変わらないことを嘆くけれど、忘れることを認めない。\k\n　そんな、いつまで経っても抜け出る見込みのない迷路を雪菜は今でも彷徨っている。\k\n「でもありがとね二人とも。こんなイジイジしてるわたしのこと気に掛けてくれて」\k\n「だってねぇ…親友じゃん？」\k\n「なぁ？」\k\n「ごめんね…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0023>, 19, 1)  ; 　その優しさが、本当は少しだけ痛かった。\k\n　だって本当は、雪菜が親友の約束を交わしたのは一人だけだった。\k\n　去年まで、依緒も武也も、『三人』から一つだけ下に置いていた。\k\n　けれど彼らは、そんな雪菜の傲慢も包み込んで、こうして一緒にいてくれる。\k\n　『三人』から、実質二人も欠けてしまった今も、こうして一緒にいてくれる。\k\n「わたしには、あなたたちだけだよ」\k\n　雪菜にとって、過ぎた友達だった。\k\n「ま、まぁ、そう言ってくれるのは嬉しいけどさぁ、雪菜も、もっと本音で話せる友達増やしたら？」\k\n「そうだな、女の子の友達が依緒だけなんて悪夢だ。いつこの毒舌が伝染しちまうか気が気じゃない」\k\n　そんな、過ぎた友達だからこそわかっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 20, 1)  ; 「あんた本当はいい性格してんだからさ…ずっと猫被り続けるの、もったいないって」\k\n「笑顔で会話しながら机の下でさり気なく蹴りを入れるこの足癖が伝染しちまうかも気が気じゃない」\k\n　今の雪菜が幸せじゃないことを。\k\n　今の雪菜を支えるためには、自分たちが過ぎた存在でいなければならないことを。\k\n「もし雪菜の方から心を開いたらさ…本気で笑ったり、喧嘩したりできる友達、もっと作れるはずだよ？」\k\n「そうそう、女の子だって雪菜ちゃんと仲良くしたがってるコたち、たくさん…」\k\n「駄目だよ。こんなわたし」\k\n　そして…\k\n「わたしですら大嫌いな、こんなわたし…」\k\n「っ…」\k\n　そこまで頑張っても、今の雪菜に心からの微笑みを取り戻させることは、自分たちにはできないことを。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0025>, 21, 1)  ; 「みんな、こんなわたしのどこがいいんだろ」\k\n「愛想笑いばっかりで、誰とも本音でぶつかったりしない」\k\n「本気で笑うことも、本気で怒ることもできない、小心者の嘘つき」\k\n「まるで仕事でやってる営業の人みたい」\k\n　雪菜は、変わった。\k\n　半年前の、あの雪の空港で、哀しいまでに変えさせられてしまった。\k\n「こんなことになるなら、ライブなんか出るんじゃなかったなぁ」\k\n「雪菜…」\k\n　それは、雪菜にとっても。\k\n　雪菜の周りの人たちにとっても、不幸な出来事でしかなかった。\k\n「屋上なんか行くんじゃなかったなぁ」\k\n「そんな…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0026>, 22, 1)  ; 　なのに、雪菜は…\k\n「ホワイトアルバムなんか、聴くんじゃなかったなぁ」\k\n「っ…」\k\n　そのせいで、ぞっとするほど、美しくなってしまった。\k\n\n
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

@VCALL SetMessageE(RES<0027>, 23, 0)  ; 　雪菜は、変わった。\k\n　その、時折ふっと漏れ出る愁いを帯びた表情は、男の武也だけでなく、同性である依緒までも取り込まれてしまいそうになるほどのおびただしい色気を感じさせた。\k\n　今の彼女は、アイドルのような少女と、女優のような女性がころころ入れ替わり、自分でも制御できないままに相手を翻弄してしまう。\k\n　こんな雪菜に、彼女の本質をよく知らない人たちが間近で触れてしまったら…\k\n　これこそが、目立たないように埋没しようとする今の雪菜をも、付属のとき以上に注目させてしまう本当の理由だった。
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

PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0028>, 24, 1)  ; 「ただいま…」\k\n「おかえり～、遅かったじゃん」\k\n　雪菜がリビングの扉を開けると、弟の孝宏の呑気な声と格闘ゲームの派手な効果音という、ここしばらくお馴染みの音が雪菜を出迎えた。\k\n　今年に入ってからの、たった二か月のスパートで見事Ｄ判定だった峰城大付属に滑り込んだ努力と才能のきらめきは、結局入学してからはずっと遊び呆けている今となってはもう見る影もない。\k\n「お母さんたちは？　もう寝た？」\k\n「ん～、さっき寝室の方に行ったみたいだけど…」\k\n「そっか、それじゃわたしもお風呂入って…」\k\n「雪菜」\k\n「ぁ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
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
PUSH INT 1043
PUSH INT 0
PUSH INT 30
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

@VCALL SetMessageE(RES<0029>, 25, 1)  ; 　孝宏の言葉にほっとしたのも束の間、今まで暗かったキッチンが突然明るくなるとともに、そこにパジャマ姿の母と父の姿が浮かび上がる。\k\n　その視線は、家に着く前に危惧した通り、心配と叱責と安堵とが入り混じった、雪菜にとっては少しいたたまれないものであり…\k\n「ずいぶんと遅かったわね」\k\n「ちょっとね、依緒や武也くんたちと久々に飲んできたから」\k\n「ああ、あの子たちと一緒だったの。なら…」\k\n　と、母がほっとした表情を雪菜の方にではなく、自分の背後に向ける。\k\n　それは、自分が安心したというよりは、自分以外を安心させようとする仕草に見えたけれど…\k\n「待ちなさい雪菜」\k\n「あなた…」\k\n　結局、その目論見は外れたようで、父の方は相変わらず厳しい視線を雪菜に向けたままだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 26, 1)  ; 「ちゃんと連絡入れたよ？　晩ご飯もいらないって言ったよ？」\k\n　雪菜は、その視線に弾かれるように、質問が来る前から言い訳を並べ立てる。\k\n　それはとりもなおさず、自分に非があると認めたようなもので…\k\n「今、何時だ？」\k\n「…十二時半」\k\n　つまり、とっくに日付が変わっていることもちゃんと認識していた。\k\n「夕方に母さんに電話したときには、九時までには帰るって言ったそうじゃないか」\k\n「あの時は食事してすぐ帰るつもりだったけど、なんだか話が弾んじゃって…で、これから飲みに行こうって話になって…」\k\n　その言い訳は嘘でも何でもない。\k\n　講義が終わった後、大学のカフェテラスからファミレスに場所を移し、その後も依緒たちに誘われるままに居酒屋とバーを渡り歩き、気がついたら終電の時間になっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0031>, 27, 1)  ; 「予定が変わったらまた連絡しなさい。みんなとても心配していたんだぞ」\k\n「それは…単に忘れただけじゃない」\k\n　その言い訳も、嘘でも何でもない。\k\n　だって、久しぶりに楽しかったから。本当に時間を忘れてしまえるほどに。\k\n　依緒も武也も、落ち込んでいた雪菜のことを心配して誘ってくれただけかもしれない。\k\n　けれどたった今まで、三人で過ごした数時間に関してだけは、二人とも心から楽しんでくれていると信じられた。\k\n　…だって、雪菜も掛け値なしに楽しく思えたのだから。\k\n　楽しさは伝わるはずだから。\k\n「次からは気をつけるよ。もういいでしょ？」\k\n「待ちなさい雪菜。まだ話は終わっていないぞ」\k\n「おやすみっ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0032>, 28, 1)  ; 　そうはいかなかった。雪菜としては何としてでも終わらせたかった。\k\n　それは、これから始まる説教そのものが嫌というよりも、今はこの心地良い気分のままでいたいという思いの方が大きかった。\k\n「もう、父さんも野暮だなぁ。察してあげようよ」\k\n　と、雪菜が話を一方的に打ち切って廊下に逃げ出しかけたとき、遅ればせながら弟の援護射撃が始まった。\k\n「みんなで飲みに行ったなんてのは隠れ蓑だよ。どうせ途中から二人で抜け出してイチャイチャしてたんでしょ」\k\n「孝宏っ！？」\k\n　けれどそれは、援護射撃とは名ばかりの、それこそ、雪菜をも巻き込む地雷で。\k\n「だってさぁ、水沢さんに飯塚さんって…北原さんの名前隠してるのモロバレじゃん」\k\n「余計なこと言わないの！」\k\n「姉ちゃんこそ必要なこと隠してるじゃん。なに今さら照れてんだよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0033>, 29, 1)  ; 　孝宏は、相変わらずゲームパッドから手を離さないまま、多分、こちらの会話になんか半分も意識を向けていない。\k\n　それなのに雪菜は、その程度のいい加減な憶測交じりの言い草に、歯噛みをするほど動揺し、みるみる余裕を失っていく。\k\n「本当なのか？　雪菜」\k\n「それは…」\k\n　本当な訳がない。\k\n　だって、春希とはここ一月近く、会話もしていない。\k\n「北原君は、そういうところはしっかりしていると思ったんだがな」\k\n「だから、それは…」\k\n　嘘なんだから、春希が責められる云われなんかない。\k\n　しっかりしているどころか、指一本さえ触れてくれない。\k\n　二人きりで過ごそうなんて、絶対に言ってくれない…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0034>, 30, 1)  ; 「最近会っていないからよくわからないが、大学生になって少し変わったのかな」\k\n「～っ！」\k\n　それだけは、嘘でも何でもない。\k\n　変わった…\k\n　春希は、変わってしまった。\k\n「年頃の娘をこんな夜遅くまで連れ回して…」\k\n「……ったの」\k\n「何だって？」\k\n「わたしが春希くんに言ったの。絶対に家に連絡しないでって」\k\n　変わってしまったのだから…雪菜とともに。\k\n「彼は心配して連絡しようって言ってくれたけど、きっとお父さん反対するから…」\k\n「雪菜、それはどういう…」\k\n「お父さん！　わたしもう大学生なんだよ？　いちいち夜遅くなるのに親に許可もらうとかやってられないよ！」
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

@VCALL SetMessage(RES<0035>, 31, 1)  ; 　――何やってるんだろ。\k\n　　本当に、何をやっているんだろう、わたし…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1043
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessage(RES<0036>, 32, 0)  ; 「何を言ってるんだ、そんなのは普通だろう」\k\n「普通じゃないよ、他のコたちにも聞いてみたけど、こんなにいちいちうるさい親って他にいないよ？」\k\n「よそはよそ、うちはうちだろう」\k\n「言ってることおかしいよ。普通だって言っておいて、よそと比べるなって矛盾してるよ！　じゃあ何と比べて普通なのよ！」\k\n\n
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

@VCALL SetMessageE(RES<0037>, 33, 0)  ; 　――こんなの、何の意味もない。\k\n　　お父さんに逆らう理由なんてない。意地を張る理由なんて何もない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1043
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessage(RES<0038>, 34, 1)  ; 「雪菜！　そんなへりくつで誤魔化そうったって…」\k\n「とにかく！」\k\n「な…」\k\n「わたしたち、お互い大人なんだから、自分のことは自分で責任持つから！」\k\n\n
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

@VCALL SetMessage(RES<0039>, 35, 0)  ; 　――だって、嘘なのに。\k\n　　彼といたなんて、ずっと二人きりだったなんて、そんな現実、あるわけないのに。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1043
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 36, 0)  ; 「えっと、それってつまり大人の付き合いをしてるってこと？」\k\n　孝宏がいつの間にかゲームから目を離してこっちを動揺した目で見ている。\k\n「そうよ！　けどそれのどこが悪いの？　お互い遊びじゃなくて本気なんだから、心配される理由も反対される云われもないわよ！」\k\n「…いや、そうハッキリ言われると、弟としてはリアクションに困るっつ～か…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0041>, 37, 1)  ; 　――どうして信じるの？\k\n　　こんな、単なる口から出任せの、ありえない“夢”なんかを。\k\n　　半年前に思い描いた、親不孝のいけない娘になっちゃったわたしの妄想を。\k\n　　なんで、信じてくれちゃうの…っ？\k\n\n「もう、せっかく楽しい気分で帰ってきたのに台無し…お風呂入ってくる！」\k\n
PUSH INT 0
PUSH INT 615
PUSH INT 0
PUSH INT 0
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 120
CALL MS
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

PUSH INT 0
PUSH INT 10
CALL SES
OPERATOR POP

PUSH INT 1
PUSH INT 1000
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0042>, 38, 0)  ; 「ま、待ちなさい雪菜…」\k\n　そこまでが限界だった。\k\n　雪菜は慌てて背中を向け、理不尽にぶち切れたわがまま娘というキャラクターを守りきったまま、浴室へと逃げ込んだ。
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

PUSH INT 1
PUSH INT 1043
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

@VCALL SetMessageE(RES<0043>, 39, 1)  ; 「あ～あ、もうだいぶ肝が据わってきたなぁ…」\k\n　怒りにまかせて廊下を踏みしめる音に続く、浴室の扉を閉める激しい音が、ようやく小木曽家の人々を現実へと呼び戻し。\k\n「そりゃ一年もベッタリだとそうなっちゃうか…そろそろ覚悟しといた方がいいんじゃない？　父さん」\k\n「何をだ！？」\k\n「………」\k\n　父は憮然と、けれど寂しそうなと表情を見せ、弟は苦笑交じりのため息をつき。\k\n「母さん、どうしたの？　ぼうっとして」\k\n「ああ、ううん、別に」\k\n　そして、先ほどからずっと無言で雪菜の表情だけを追い続けていた母は…\k\n「なんでもない…ことにしとくわ」\k\n　去り際に瞳からこぼれそうになっていた雫の意味を、今はまだ測りかねていた。
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 8429
PUSH INT 60
PUSH INT 1
PUSH INT 70
PUSH INT 0
CALL SEP
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

@VCALL SetMessageE(RES<0044>, 40, 1)  ; 「っ…あ、あは、あはは…」\k\n　身も心も凍えるほどの冷たいシャワーを激しく全身に浴びせ、雪菜はその雑音の中でようやく自分の鬱屈した思いを解放した。\k\n　頭の中を巡るのは、ただただ自己嫌悪だけ。\k\n　せっかくの楽しい気分を自分で台無しにしてしまったことに。\k\n　家族にまで平気で嘘をつくようになってしまったことに。\k\n　そして、その嘘の内容に。\k\n　自分のアイデンティティを守るために自分を傷つけるしかなかった、今の自分に。\k\n「ぁはは…あはははは…っ」\k\n　雪菜は、一年前の雪菜に戻ってしまっていた。\k\n　いつもみんなの中心に、いつもひとりでいた、あの“小木曽さん”に。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 180
CALL SES
OPERATOR POP

PUSH INT 180
CALL MS
OPERATOR POP

@VCALL SetMessageE(RES<0045>, 41, 1)  ; 「嘘つき…わたしの、嘘つきっ」\k\n　いや、一年前とはほんの少しだけ違っていた。\k\n\n　今の雪菜は、そんな昔の自分でいることに耐えきれず、すり切れ、傷つき、徐々に心を失いつつあったのだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 180
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

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0046>, 42, 1)  ; 　一週間後…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1044
PUSH INT 1
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

PUSH INT 1
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0047>, 43, 0)  ; 「どういうこと？」\k\n「だからさぁ、あり得ないくらいの手違いがあり得ないくらい重なったんだってさ」\k\n「…それはあり得ないね」\k\n　起き抜けにかかってきた電話からの依緒の第一声は、いきなりテンションが高く、やたらと切羽詰まった感じで、なかなか要領を得なかった。\k\n「<R政経|ウチ>の大正浪漫喫茶、アレが今朝になっても準備の目処が立ってない状態で、とても十時の開場に絶対に間に合わないこと請け合いでさぁ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 44, 1)  ; 「…今、何時？」\k\n「もう六時過ぎ」\k\n「何分？」\k\n「十五分くらい」\k\n「何秒？」\k\n「…起きてる？」\k\n「ふぁ…」\k\n　今日は、峰城祭の初日。\k\n　大学祭の期間中ということはつまり学業的には休日ということで、寒い朝を温かい布団の中でやり過ごすはずだった雪菜は、未だに目覚めない頭と一気に冷えてしまった身体を震わせながら、こちらも実に要領を得ない答えを返していた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0049>, 45, 1)  ; 「とにかくそんな事態だから動員がかかってる訳。手当たり次第。というか全員に」\k\n「そう」\k\n「さすがに自分のサークルがある人は免除だけど、私用だったら内容次第で強制召喚」\k\n「…そう」\k\n「家で昼まで寝てる予定の人は問答無用」\k\n「………はぁ」\k\n「そんな嫌そうなため息つかないでよ。あたしが今喜んで電話してると思ってる？」\k\n「ごめん、お疲れさま依緒。でもわたし、接客は…」\k\n「わかってる。お互いあの悪夢は繰り返したくないもんね」\k\n　元ネタである去年の付属祭のとき、初日と二日目のエースとして色々と大変な目にあった二人は、こういったコスプレ系店員がどのような人々からどのような視線で射られるのか嫌と言うほど身に染みていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0050>, 46, 1)  ; 「あたしたちは裏方、厨房、お菓子作り！　そっちでも雪菜って貴重じゃん？　だから代表に泣きつかれちゃって…」\k\n「それなら…まぁ、仕方ないか」\k\n「ありがと雪菜！　恩に着る！」\k\n　以前、三顧の礼をもって頭を下げてきた学部の友人たちを三度落胆させたという負い目があった雪菜は、もはやこれまでとばかりに、やはり嫌々ながらも承諾した。\k\n「でも絶対に接客はなしだよ？」\k\n「わかってるって～」\k\n「騙し討ちは、許さないよ？」\k\n「神様に誓う。コスプレも絶対にないから！」\k\n「…わかった、何時に行けばいい？」\k\n「一応、調理班が動けるのが九時半からってことだから、その時間に六号館前集合」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 47, 1)  ; 「了解。それじゃ後で」\k\n「待ってるからね～」\k\n「………はぁ」\k\n　忙しなくも賑やかな電話が切れると、雪菜はもう一度不機嫌そうにため息をついた。\k\n　それは、休みの日の早朝にいきなり呼び出されたという理不尽さを憤る気持ちも多分にあったけれど、それよりも呼び出された先でお祭り騒ぎに触れたときの息苦しさを嘆く気持ちの方が強かった。\k\n　本当は、一日たりとも大学祭に顔を出したくはなかった。\k\n　だって、想像できてしまったから。\k\n　あの明るく騒がしい無礼講な雰囲気の中、いつも以上に開放的になった人たちがいつも以上に馴れ馴れしく接してくるのが。\k\n　『その日は用事が…』と参加を断ったバンドやサークルの人たちと現場で鉢合わせてしまったときの気まずさが。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0052>, 48, 1)  ; 　それに学園祭…いや、大学祭が呼び覚ましてしまう様々な記憶が。\k\n　夢のような、そして悪夢のような思い出が…\k\n「さて、と」\k\n　そんな辛い記憶の遡上を断ち切ろうと、雪菜はもう一度目覚まし時計に目をやる。\k\n
PUSH INT 0
PUSH INT 8070
PUSH INT 0
PUSH INT 0
PUSH INT 120
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessage(RES<0053>, 49, 0)  ; 　そして、まだ三時間も余裕のあることを確認すると、のろのろとベッドから起き上がり、まずは朝食を作ろうと部屋の扉に手をかけて…\k\n
PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessage(RES<0054>, 50, 0)  ; 「………」\k\n
PUSH INT 0
PUSH INT 8237
PUSH INT 0
PUSH INT 0
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0055>, 51, 0)  ; 　しばらく頭に手を当てて考え込む仕草を見せたかと思ったら、急にもの凄い勢いでドレッサーをかき回し始めた。
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

@VCALL SetMessage(RES<0056>, 52, 1)  ; 　さらに三時間後…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
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

PUSH INT 5
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0057>, 53, 0)  ; 「どういうこと？」\k\n「だからさぁ、あり得ないくらいの手違いがあり得ないくらいあっさり解決しちゃったんだってさ」\k\n「依緒！」\k\n　九時半ちょうどに合流したときの依緒の第一声は、けっこう冷静で、普通に落ち着いていて、けれどやはり要領を得なかった。\k\n　雪菜なりに彼女の言葉を要約すると、どうやら準備の目処が立っていないとか十時の開場に間に合わないとかは、人づてに情報が伝わった際の誇張部分だったそうで、実際のところは『１、２人の応援が欲しい』という程度の困り具合だったということらしい。\k\n　そして、その程度の人手なら依緒ともう一人で十分だったので、彼女たちの動員によってここに集められた人は今現在をもってめでたく放免ということになるとか。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0058>, 54, 1)  ; 「や～ほんと悪かったね雪菜。というわけで、これにてお役御免。お疲れさま～」\k\n「………」\k\n「…そんな怖い顔して睨まないでよ。謝ってんじゃない」\k\n　別に雪菜は、依緒のいい加減な当て推量による手違いを怒ってる訳ではなかった。\k\n　ただ、依緒の立て板に水な言い訳をまるっきり信じていないだけだった。\k\n　なぜなら…\k\n「おい！　これは一体どういうことだよ武也！」\k\n「ま～ま～怒るな春希。トラブルがなくて良かったじゃないか」\k\n　結局、そんな彼らの勘違いによって呼び出されていたのが、自分を含めてたった二人しかいなかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0059>, 55, 1)  ; 「そういう問題じゃないだろ。お前、俺を…」\k\n「騙してない、騙してないから！　これは不幸な勘違いなんだって」\k\n「誰が信じるんだよ、そんなの…っ」\k\n　背中の方から懐かしい声が聞こえてきた。\k\n　教師相手にでも平気で正論をぶつける融通の利かない声。\k\n　どんな頼まれごとにも労を厭わず、けれど必ず文句をぶつけまくる声。\k\n　照れながら、そっぽを向きながら、それでも正面から気持ちを伝えてくれたはずの声。\k\n「っ…」\k\n　だから雪菜は、さっきからずっと、そちらの方向を向くことができなかった。\k\n\n「…ごめんね雪菜？　でもこうするしかなかったんだよ」\k\n「ぇ…」\k\n　と、依緒が雪菜の耳元に唇を近づけて、向こうの男性陣に聞こえないほどの声で囁く。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0060>, 56, 1)  ; 「あんたにとって、今日って日が諸刃の剣だってことはわかってる」\k\n「依緒…」\k\n　雪菜は、正面から見つめる依緒をしっかりと見つめ返す。\k\n　正確には、彼女の瞳の中に映る自分を。\k\n「でも、一度は通らないといけない道だよ？　逃げてばかりじゃ、いつまでたっても吹っ切ることも元に戻ることもできないんだよ？」\k\n　その表情に浮かぶのは強い不安、焦燥、孤独、そして恐怖。\k\n「…ここいらで、賭けてみようよ？」\k\n
PUSH INT 0
PUSH INT 1011
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0061>, 57, 0)  ; 「…っ」\k\n　あと、ほんの少しの期待と…\k\n「さて、そういうわけだから、二人とも後は好きにしてくれ」\k\n「そうそう、予定通りバイトするもよし、家に帰って寝直すもよし」\k\n「もちろん、せっかく来ちまったんだから適当に回るもよし。年に一度の学祭だぜ？」\k\n「あ、今日は屋外ライブやってるよ、メイン会場で」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0062>, 58, 1)  ; 　武也と依緒が、雪菜たちからじわじわ離れ、後ろ歩きで六号館の中へと逃げていく。\k\n　こういう、怪しい企みごとをするときの二人のコンビネーションは完璧だった。\k\n　…とても“こっち”と似たような、こっち以上の歴史を誇る複雑な事情があるようには見えない。\k\n「とにかくあとはお前らの判断に任せる、行くぞ依緒」\k\n「ああ、うん…それじゃね雪菜。春希も」\k\n
PUSH INT 150
CALL MS
OPERATOR POP

PUSH INT 0
PUSH INT 624
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0063>, 59, 0)  ; 「あ…」\k\n「おい…」\k\n　そして、“こっち”の二人は、その息の合いすぎたあっちのコンビネーションになすすべもなく、校舎の前にぽつんと取り残された。\k\n「………」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0064>, 60, 1)  ; 　四人が二人になり、さっきまでの喧騒が消えた途端、そこは彼らだけのものではなく、公共の場所だったことを思い知らされる。\k\n　一般の開場時間を三十分後に控え、準備に追われた学生たちが激しく出入りする中、出入口付近で立ち尽くしたままの二人は注目の的以外の何者でもなかった。\k\n
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

@VCALL SetMessageE(RES<0065>, 61, 0)  ; 「久し、ぶり」\k\n「あ、ああ…」\k\n「………」\k\n「………」\k\n　それでもしばらくの間、いつも『人に迷惑をかけるな』と相手に説く男と、いつも『目立ちたくない』と周囲に埋没しようとする女の子は、人々の好奇心に満ちた迷惑そうな視線を二人占めした。
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
PUSH INT 5000
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

@VCALL SetMessageE(RES<0066>, 62, 1)  ; 　その後、祭りの前の高揚感に賑わうキャンパス内をゆっくり歩いた十分間は、二人にとってまったく無駄な時間だった。\k\n「久しぶり、だね」\k\n「ああ…」\k\n　その証拠に、十分前と台詞がほとんど変わっていない。\k\n「………」\k\n　雪菜が何も言わないのは、それどころじゃなかったから。\k\n　向こうの横顔を、彼に気取られぬように見つめることに必死だったから。\k\n「………」\k\n　けれど、多分向こうも色々とそれどころではないはずで。\k\n　その証拠に、目が合い、慌てて視線を逸らし、そしてまた目を合わせてしまうという醜態を互いに繰り返していた。\k\n「元気にしてる…春希くん？」\k\n「うん、まぁ…普通」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 63, 1)  ; 　“向こう”の名は、北原春希。\k\n　一年とちょっと前に知り合って、一年ほど前に気持ちを確かめ合って、半年とちょっと前にすれ違い、半年ほど前に離れてしまった…\k\n　けれど雪菜の、今でも特別な男の子、だった。\k\n「バイトたくさん入れてるって聞いたよ。無理してない？」\k\n「いや、別に…毎日ちゃんと大学に来てるし」\k\n「そっか…そういえばそうだね」\k\n　その、あまりにも定型的で当たり障りのない答えを、それでも雪菜は何度も何度も噛み締める。\k\n　だって、『久しぶり』だから。\k\n　毎日同じ教室で講義を受けているのにも関わらず、その挨拶が通用してしまうほどに断絶していたのだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0068>, 64, 1)  ; 「………」\k\n　ずっと、話したいと思っていた。\k\n　だからいつも、教室から出て行こうとする彼を必死で追いかけようとしていた。\k\n「………」\k\n　でも、こうして会話がすぐ途切れてしまうのも予想通り。\k\n　こうなることがわかっていたから、いつもは追いつきそうになると途中でその足を緩めてしまっていたのだから。\k\n\n
PUSH INT 0
PUSH INT 8249
PUSH INT 0
PUSH INT 0
PUSH INT 180
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL SetMessageE(RES<0069>, 65, 0)  ; 「あ…」\k\n「………」\k\n　そんな無駄な十一分間は、けれど最後の瞬間に二人に決断を促す。\k\n　歩き慣れたキャンパスを、いつもの順路で歩いていれば、いつかは必ず辿り着く場所が二人を出迎えた。\k\n　今日は色とりどりの看板で埋め尽くされた、正門が。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0070>, 66, 1)  ; 　ここから先へと一歩進めば、二人はいつもの日常へ戻る。\k\n　一人と一人の、何もない、何も始まらない、授業後の日常に。\k\n「えっと…それじゃ」\k\n「あのっ！」\k\n　でも今日は、いつもの授業後なんかじゃない。\k\n　絶対に、昨日と同じ一日にしてはいけない。\k\n「このあと、どうする…？」\k\n「あ、うん…」\k\n　だって、『よし、明日こそ』と『よし、来年こそ』の間には、それこそ三百六十四日もの開きがあるのだから。\k\n「大学祭、だよね」\k\n「そう、だな」\k\n　とうとう口火を切ってしまった余勢を駆って、雪菜は、やっと春希の顔を真正面から見つめる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0071>, 67, 1)  ; 　と、そこに見つけたのは、不安、焦燥、孤独、恐怖…\k\n　結局、自分自身が抱えているものとまったく同じ感情だと知った。\k\n　ならば、と雪菜は後ろ手に拳を握り込む。\k\n「あ、あのさ…武也くんたちはああ言ってたけど…」\k\n「雪菜は…」\k\n「え？」\k\n「雪菜は、本当は用事とかなかった？」\k\n\n　――春希くんこそ…\k\n　　バイト、忙しいんだよね？\k\n　　大学祭なんか、回ってる暇、ないよね…？\k\n\n「………ううん、暇」\k\n　一年前には自然とできていた、春希への甘え方はもう忘れてしまった。\k\n　けれど、自分のあしらい方なら知っている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0072>, 68, 1)  ; 「そ…っか」\k\n「うん、そうなの」\k\n　言い訳のできる余地を摘み取ってしまえばいい。\k\n　特に、憎からず思っている相手にはてきめんの効果を発揮するに違いない。\k\n「それじゃ、それじゃあ、さ…」\k\n「うん…」\k\n「学祭、だもんな」\k\n「お祭りの会場にいるんだもんね、わたしたち」\k\n
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

@VCALL SetMessageE(RES<0073>, 69, 0)  ; 　ほら、こんなふうに。\k\n「じゃあ、どこ回る？　初日って誰か有名人来てたっけ」\k\n「わたしお腹空いちゃった。朝ご飯抜きだったから」\k\n　シミュレーションは、とっくに済んでいた。\k\n　二時間前に組み立てた作戦通りだった。
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
PUSH INT 3019
PUSH INT 60
PUSH INT 1
PUSH INT 40
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
PUSH INT 5000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0074>, 70, 1)  ; 「リンゴ飴でも食べる？」\k\n「ラーメンがいいな」\k\n　依緒からの電話のときに、ある程度気づいていた。\k\n　依緒の詭弁と心遣いを、漠然と感じていた。\k\n　きっと春希を連れてきてくれるって、確信していた。\k\n「こういうところのラーメンってまずいぞ？」\k\n「知ってるよ？」\k\n
PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0075>, 71, 0)  ; 　だからおめかしに時間をかけた。\k\n　派手すぎず、地味すぎず。\k\n　あまり周囲の注目を浴びないよう。\k\n「…去年も、まずかったもんね」\k\n「…そう、だったな」\k\n　けれど、彼にだけは“可愛い”と言ってもらいたくて。\k\n　必死に頭を抱えながら、一生懸命服や小物を選んだのだから…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0076>, 72, 1)  ; 「お姉さんトッピングどう？　ゴマ、紅ショウガにおろしニンニク！」\k\n「あ、いえ…結構ですから」\k\n「騙されたと思って入れてみてよニンニク！　一気に味に膨らみが出るから！」\k\n「おい浅井、朝から女の子にニンニク勧めるってどうなのよお前」\k\n「あ、あはは…」\k\n　開店と同時に入ったワンダーフォーゲル部のラーメン屋は、客の数倍はいようかというガタイのいい店員の威勢の良い掛け声だけがやたらと響き、とても居心地がいいとは言えなかった。\k\n　けれど今の雪菜にとっては、そのくらいの居心地の悪さが心地良かった。\k\n　他のことが気になって、互いのことだけに集中できないくらいがちょうど良かった。\k\n　いみじくも春希が指摘した通り、注文して三分も経たずに出てきたとんこつラーメンは、何というか大学祭のラーメンなりの味としか言いようがなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0077>, 73, 1)  ; 　二人してまず一口すすり、お互い苦笑交じりに顔を見合わせた。\k\n　けれど、その失敗の共有が互いの緊張を解きほぐしてくれたのか、黙々とラーメンを食べる二人の間に流れる空気は、その場に漂う湯気のように温まっていった。\k\n「は～いらっしゃいらっしゃい！　ワンゲルラーメン絶賛営業中～！」\k\n「今ならすぐに座れるよ～、お兄さんどうっすか？　じゃまた後で～！」\k\n　相変わらず客の居心地を無視した山男の怒号が鳴り響く。\k\n　そんな喧騒の中で雪菜は、自分の挙動や会話が注目されない気安さをいいことに、彼の隣でラーメンをすすり、スープを飲み、そして…\k\n「…なに？」\k\n「あ、いや…なんでもない」\k\n　彼の視線を、見とがめた。\k\n「気になるなぁ、ハッキリ言ってよ」\k\n　身体だけでなく、気持ちも温まっていたから。\k\n　一歩踏み込むだけのスタミナをつけたから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0078>, 74, 1)  ; 「いや、ハッキリ聞いたら失礼なこと言いそうになったんだよ」\k\n「あ、もしかして…これ？」\k\n「うん…変わってないなって」\k\n　春希の視線が自分の顔から少し後ろに外れていることに気づくと、雪菜はそこにある自分の左手をひょこっと動かした。\k\n　と、掴まれていた後ろ髪が連動してぴょこっと跳ねた。\k\n\n
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0079>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
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

@VCALL SetMessageE(RES<0080>, 75, 0)  ; 『ラーメン食べるとき、そういうやり方なんだなって』\k\n『やり方…？　ああ、髪の毛を後ろで持ってること？』\k\n『うん、えっと…まさかずっと手で掴んだままだとは思わなくてさ』\k\n『縛っちゃうのが簡単なんだけどね。でもそうするとカッコ悪いんだよわたしの場合』\k\n『そうなの？』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0081>, 76, 1)  ; 『だってわたしの髪って最初から二つに縛ってるでしょ？　これをさらにまとめて一つにしちゃうともう何が何だか』\k\n『そういうもんなのかなぁ…』\k\n『そういうものなの。冬馬さんみたいなストレートだったら、一つに縛っても可愛いんだけどね』\k\n『雪菜だって可愛いよ』\k\n『え…っ』\k\n『あ、いや…そういう細かいこと気にしてせせこましい努力してるところがいつも通り小市民っぽくて可愛いなって』\k\n『それ、褒めてるんだか貶してるんだかわからないよ』\k\n『ご、ごめん』\k\n『…まぁ、わたしにとってはどっちの意味でも嬉しいから関係ないんだけどね』\k\n『せ、雪菜…』\k\n『ふふっ…さ、食べよ食べよ？　早くしないとのびちゃうよ？』
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

ARRAY_S RES<0082>
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 255
PUSH INT 0
CALL SetChromaMode
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

@VCALL SetMessageE(RES<0083>, 77, 1)  ; 　あの時も、“野暮で失礼なこと”だと前置きされて聞かれた。\k\n「こんな癖、そう簡単に変わらないよ」\k\n「そっか」\k\n　あの時も、学園祭のラーメン屋の店内だった。\k\n　二人が公式的に恋人同士になって、初めてのお披露目の日、だった。\k\n「一年くらいじゃ、何も変わらないよ…」\k\n「…そっか」\k\n「うん、そうだよ」\k\n　雪菜の、その少し駄々の入った決めつけの言葉に、春希はまた黙り込む。\k\n　けれど今度の沈黙は、先ほどまでの気まずいものとは違って、なんだか安心できた。\k\n　今の春希が、今の雪菜を受け入れてくれていることがわかったから。\k\n　会話が繋がらないんじゃなく、繋げる必要がないだけってことが、わかったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0084>, 78, 1)  ; 　だから雪菜は、そんな気まずくない沈黙を堪能するように、ゆっくりとスープの最後の一滴まで飲み干し…そのすぐ後で、朝から過剰摂取してしまった塩分やカロリーのことを気にして慌ててみせた。\k\n　春希は、そんな彼女の反応に、少し呆れ、そして少し笑ってくれた。\k\n　鼻の奥がつんと痛くなるのを我慢して、雪菜も笑った。\k\n\n「はい春希くんどうぞ？　二個おまけしてもらっちゃった」\k\n「タコ焼き…」\k\n「うん、なんかすっごくいい匂いしてたからつい」\k\n「…ついさっきラーメン完食して後悔してなかったっけ？」\k\n「うん、だからわたし二個でいいから。後は全部どうぞ」\k\n「いや待て、待ってくれ…俺もさっき一緒にラーメン食ったんだけど」\k\n「だけどわたし、それ以上はもう食べられないよ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0085>, 79, 1)  ; 「だったらおまけをもらってくるのはどうかと思うんだよ」\k\n「え…だってお得じゃない？」\k\n「その所帯じみた主婦感覚なんとかして…」\k\n\n　それから日が沈むまでの数時間の出来事を…\k\n　雪菜ははっきりと記憶に留めておくことができなかった。\k\n\n
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

ARRAY_S RES<0086>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
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

@VCALL SetMessageE(RES<0087>, 80, 0)  ; 『ほ、本気で怖いね…Ｅ組のお化け屋敷』\k\n『ごめん雪菜、それ多分俺のせい』\k\n『そっか…これだけみんなが本気で脅かしてくるのも春希くんの指示なんだね』\k\n『あ、いや、その…』\k\n『さすがは元委員長。引退しても影響力抜群なんだね、うん』\k\n『だからそうじゃなくて…あいつらがガチで襲撃してくるのには別の理由が…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0088>, 81, 1)  ; 『うごあああああああ～！』\k\n『きゃああああ～！　春希くん、怖いっ！』\k\n『せ、雪菜…っ！？』\k\n『うごぉぉ～、こんな公衆の面前で小木曽さんとイチャイチャしやがって～！』\k\n『ぐがぁぁ～、しかも雪菜とか呼び捨てにしてるし～、この裏切り者がぁぁぁ～！』\k\n『ゾンビが私情むき出しで襲ってくるな～！　お前ら死者だろうが～！』\k\n\n　ずっと望んでいた時間を過ごしているはずなのに。\k\n　望んでいた相手と過ごしているはずなのに。\k\n\n『せ、雪菜…本気で行くつもりなのか…？　大正浪漫喫茶』\k\n『え～、けど今日が最終日だよ？　春希くんまだ来てないでしょ？　ウチのクラス』\k\n『いやほら初日の開店前に…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0089>, 82, 1)  ; 『今日も依緒が入ってるはずだよ？　ちょっとだけからかいに行こうよ？』\k\n『いや、からかわれるのは…』\k\n『って、うわぁ…最終日なのにまだ行列ができてるね～』\k\n『ほら！　自分のクラスに入るのに並ぶなんて馬鹿らしいだろ？　だからさ…』\k\n『大丈夫、お喋りしながら待ってれば退屈しないよ。ほら行こう？』\k\n『待て！　あの行列の連中に取り囲まれる俺の安全をもっと考えてくれ～！』\k\n\n　なのに雪菜の記憶も、意識も、今ここに確かにある体験と、過去の記憶が混ざりあってしまって、まるで雲の上を歩いているような感覚に囚われていた。\k\n\n
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

ARRAY_S RES<0090>
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 255
PUSH INT 0
CALL SetChromaMode
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

PUSH INT 5
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0091>, 83, 0)  ; 「政経のお店行く？　武也くんと依緒もいるかもよ？」\k\n「いや、そこだけは勘弁」\k\n「どうして？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0092>, 84, 1)  ; 「雪菜ってさ、いつまで経ってもそういうところ変わらないよな」\k\n「そういうところって…どういうとこ？」\k\n「自分が人からどう見られてるかとか、誤解されたりしないだろうかとか」\k\n「意識、してるよ？」\k\n「そうか？」\k\n「うん、自意識過剰ってくらい。すごく人の目、気にしてるよ」\k\n「だったら今だって気にしろよ…もし俺たち二人が顔出したらさ」\k\n「誤解、なの？」\k\n「え？」\k\n「………」\k\n「雪菜…」\k\n「ううん、なんでもない」
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

@VCALL SetMessage(RES<0093>, 85, 1)  ; 　過去と現在、夢と現実、追憶と希望。\k\n　そんな、時間も場所もバラバラな情報が次々と雪菜の中に浸食し、感情を揺さぶる。\k\n\n
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

@VCALL SetMessageE(RES<0094>, 86, 0)  ; 「そろそろ正門閉まる時間だな…」\k\n「え、もう？」\k\n「うん、あと十五分で七時」\k\n「そっか、今日は後夜祭ないんだ」\k\n「ま、初日だからな」\k\n「フォークダンスも…ないんだ」\k\n「…うん」\k\n「そっか…そっかぁ」\k\n「雪菜…」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0095>, 87, 1)  ; 「あ、あのさ」\k\n「ん？」\k\n「その…送ってこうか？」\k\n「ぇ…」\k\n「あ、いや…送らせてもらえないかな？　是非」\k\n「春希くん…」\k\n「あ、いや、その…」\k\n「………」\k\n「ごめん、今のは忘れて…」\k\n「ね…」\k\n「ん？」\k\n「ちょっと…休憩しない？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0096>, 88, 1)  ; 　気がつくと、いつの間にか日は暮れていた。\k\n　夜が、やってきていた。\k\n\n
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

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0097>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
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

PUSH INT 0
PUSH INT 23
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 10
PUSH INT 20
PUSH INT 6
PUSH INT 8
CALL SetShake
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL SetMessageE(RES<0098>, 89, 0)  ; 『いてっ』\k\n『どうしたの？』\k\n『…足踏まれた』\k\n『あ、ごめん、わたしフォークダンスなんて小学生以来だから…』\k\n『いや、雪菜じゃなくて周りの男どもに』\k\n『え？』\k\n『ほら、あの辺に踊ってない奴らがいるだろ？　実はさっきから何度もやられてる』\k\n『…ぷっ』\k\n『笑い事じゃないだろ、元凶のくせに』\k\n『あ、あはは…だって』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0099>, 90, 1)  ; 『やっかまれるとは思ってたけど想像を遙かに超えてたな…雪菜人気あり過ぎ』\k\n『けど春希くん、そういうのまとめて背負ってくれるって約束してくれたよね？』\k\n『そりゃ、負うよ？　それが義務で特権だもんな…えっと…彼氏って奴の』\k\n『………』\k\n『…自分でも恥ずかしいこと言ったって思ってるときに黙らないでくれる？』\k\n『あ、ごめん…浸ってた』\k\n『まったく…ほんと雪菜って、やっすいな』\k\n『ふふっ…ふふふっ』\k\n『雪菜…』\k\n『………』\k\n『………』\k\n『ね…』\k\n『ん？』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0100>, 91, 1)  ; 『ちょっと…休憩しない？』\k\n『そうだな、それじゃ自販機のところ行こうか』\k\n『ううん、そこの木陰でいいよ』\k\n『でも、喉乾いてない？』\k\n『乾いてる』\k\n『それじゃ…』\k\n『でも、喉じゃなくて…』\k\n『え…』\k\n『唇、乾いてる』\k\n『…あ』\k\n『木陰が、いいな…』\k\n『雪菜…』\k\n『木陰じゃなきゃ、やだな』\k\n『………うん、わかった』
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

ARRAY_S RES<0101>
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

@VCALL SetMessageE(RES<0102>, 92, 1)  ; 　第二音楽室で、そして校庭の木陰で…\k\n　二人が、お互いの気持ちを確かめあった学園祭の夜が。
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
PUSH INT 8189
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

PUSH INT 7
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0103>, 93, 1)  ; 「というわけで峰城祭初日、みんなどうだった～？」\k\n「実行委員会の発表によると、初日の一般入場者数は去年を五百人ほども上回って余裕の過去最高記録更新だとか…」\k\n　すでに灯りが消され、人気の無くなった教室に響くのは、昼間ほどではない外の賑わいと、どこからか流れてくるラジオの音声。\k\n「ちなみにウチのスタッフ連中はずっと野外ライブの収録でかけずり回ってました」\k\n「見たかったんだけどな～劇団ウァトスの夏公演！　誰か感想だけでも聞かせて～」\k\n「…とまぁ、ここで愚痴っててもしょうがないので、朝からコンビニのおにぎりだけで頑張ったその成果を聴いていただき…ってまた愚痴ってるよ！　じゃあ一曲目…」\k\n　それは、峰城大の学内で唯一放送局を持っている峰城ＦＭの生放送。\k\n　今の時代、ネットで簡単に全世界に配信できるにも関わらず、わざわざ学内限定配信にこだわる少し時代遅れなサークルが主催するこの放送局は、その閉鎖性と、やはり少し時代遅れでストレートな番組作りがかえって学生たちの人気を集めている。
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

PUSH INT 210
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

PUSH INT 90
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

@VCALL SetMessageE(RES<0104>, 94, 1)  ; 「寒くない？　雪菜」\k\n「ううん、平気」\k\n　ラジオから歓声交じりの熱いシャウトが流れてくる中、二人はじっと、いつもとは違う外の景色を見つめていた。\k\n　開けた窓から、夜の薄闇に冷やされた晩秋の風が流れ込んでくる。\k\n「楽しかった、ね」\k\n　その寒風に揺れる髪を手で軽く押さえつつ、雪菜は心からの呟きを漏らす。\k\n　今に対してなのか、一年前に対してなのかわからない、けれどここ最近見せたことのなかった嬉しさに満ちた呟きを。\k\n「うん、結構、な」\k\n　そして春希の応えも、そんな雪菜の感極まった想いを満足させるに十分な内容と響きを持っていた。\k\n　一年前ほど弾けてはいなかったけれど、そこには確かに前向きな意志があった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0105>, 95, 1)  ; 「ラーメン食べて、タコ焼き食べて、リンゴ飴食べて、クレープ食べて…」\k\n「まだ胃が重い」\k\n「漫研初めてだったけど面白かったね。あの似顔絵にはちょ～っと納得いかないけど」\k\n「良かったじゃん…あの極端なデフォルメ具合が」\k\n「フリマも楽しかった～。あれだけ色々あるとホント迷っちゃうよね」\k\n「どんだけ値切れば気が済むんだよ」\k\n「大正浪漫喫茶は誰かさんのせいで行けなかったけど～」\k\n「頼むから行った時の惨状を想像してくれよ」\k\n「それでも、それでもぉ…っ、本当に、本当に楽しかった～！」\k\n「うん…俺も」\k\n「っ…」\k\n　高揚した気持ちを抑えきれず、大きく息を吸い込み、窓の外に向いていた視線を教室の中へと振り向けて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0106>, 96, 1)  ; 　そして、大きく吸い込んだ息を、思い切り飲み込んでしまう。\k\n　それは、期待を裏切られたからじゃなく、期待が叶えられたせいで…\k\n「楽しかったよ、雪菜」\k\n「春希、くん…」\k\n
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

@VCALL SetMessageE(RES<0107>, 97, 0)  ; 　――いけない、いけない、いけない…っ\k\n　雪菜の心臓が激しく警鐘を鳴らす。\k\n　いつの間にか、暗闇に目が慣れてしまっていた。\k\n　自分が今まで外を向いていた理由を思い出してしまった。\k\n　…だから春希の、そのときの表情を、目に焼きつけてしまった。\k\n「今日は、本当に、ありがとう…」\k\n　こんな、嬉しそうにはにかんだ表情を。\k\n　ここ半年間、ずっと見せてくれなかった表情を。\k\n　…あの冬が終わるまで、ずっと見せてくれていた表情を。
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

PUSH INT 210
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

PUSH INT 120
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

@VCALL SetMessageE(RES<0108>, 98, 1)  ; 「わたし、わたしね…っ」\k\n　だから、いけない。\k\n　このままじゃ、単なる高揚感を逸脱する。\k\n　春希を困らせる、苦しめる自分になってしまう。\k\n「こんなに楽しかった日は、大学に入ってから一度だってなかった！」\k\n「ぇ…」\k\n　いけない、のに…\k\n　それでも雪菜は、自分の声に嗚咽が混じるのを止められなかった。\k\n「楽しかった…本当に、今日は嬉しかったんだよ…っ」\k\n「雪菜…」\k\n　雪菜が危惧した事態は、てきめんに起こった。\k\n「どうして、どうしてさ…」\k\n　春希の顔に、罪悪感と、後悔と、そして悲哀に満ちたいたたまれない色が浮かぶ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0109>, 99, 1)  ; 「どうして、まだそんなこと言ってるんだよ…」\k\n　多分、今の自分と同じ表情に、変わっていく。\k\n「こんなの、今の雪菜にとったら全然大したことじゃないだろ…」\k\n「春希くんだって楽しかったって、ありがとうって言ってくれた！」\k\n「俺じゃなくて雪菜の話をしてるんだよ今は…っ」\k\n　予想以上の成果だった。\k\n　たくさん話ができた。一緒に歩けた。笑いあえた。\k\n　こんなにうまく行くなんて、正直思ってなかった。\k\n　だから、今日はこのままさよならしても十分なはずだった。\k\n「俺なんかにこだわってたって、何もいいことなんかないだろ…」\k\n「そんなのわたしの勝手でしょ？　決めつけないでよ」\k\n　けれど、うまく行ったとき、さらにその先を求めてしまう自分の強欲さを把握しきれていなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0110>, 100, 1)  ; 「学部のみんなも、それ以外も、男も女も、たくさんの人たちが雪菜のこと気に掛けてる。仲良くなりたがってる」\k\n「だから、なんだって言うの？」\k\n「だからさ…ほんの少し外に目を向ければ、すぐに誰とでも…」\k\n「無理だよ、そんなの」\k\n「どうして…」\k\n「だってわたしは…わたしは、ワガママなんだもん！　本当は高めの女なんだもん！」\k\n「嘘だよそんなの…本当の雪菜は、見た目と全然違って、庶民的で、家庭的で、ちょっと意地悪で…けど心の底から優しくて、誰だって好きにならずにはいられない…」\k\n「それは、それはぁ…特別な男の子に、だけだよぅ…っ！」\k\n「雪菜…」\k\n　もう、先に進むしかなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0111>, 101, 1)  ; 「わたし、春希くんの言う通り、たくさんの人に声掛けられたよ。誘われたよ」\k\n　何の準備も作戦もないまま、出たとこ勝負をかけるしかなかった。\k\n「サークルに入ってくれって、ミス峰城にエントリーしてくれって、ライブがあるからボーカル参加してくれって…すっごく不純だった、しつこかった」\k\n「俺だってミスコンの勧誘だった…不純だったし、しつこかったろ」\k\n「でもみんな、わたしの事情を知ろうともしなかった！　気遣おうともしなかった！　踏み込んでなんかこなかった！」\k\n「っ…」\k\n「まるっきり下心のない本物のお節介を焼いたのは、今までに一人しかいなかった…」\k\n　だからもう、本当の自分を晒すしかなかった。\k\n「わたしは、“あの小木曽雪菜”って呼ばれる女の子なんだよ？」\k\n　高めのお姫様である自分を。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0112>, 102, 1)  ; 「みんなに勝手に祭り上げられた、偽物のアイドルなんだよ？」\k\n　価値が、ではなく、その本質を見極める難度が高い、厄介なお姫様である自分を。\k\n「そんなわたしが、目的のある誘いなんかに乗るはずないよ！　理由のあるおせっかいなんかに揺らぐはずないよ！」\k\n　そんな姫様が欲したのは、王子様のキスなんかじゃなかった。\k\n　姫様が真に欲したのは、大臣のお小言。\k\n　厳しくて、うるさくて。\k\n　そして、真心のこもったお説教だったのだから。\k\n「春希くん…」\k\n「駄目だよ、雪菜…」\k\n　雪菜の左手が、春希の右手と絡みあう。\k\n「俺、雪菜のこと、こんなにも傷つけたんだぞ？」\k\n　指の一本一本、すべてを重ねあわせ、その柔らかい手のひらで、包み込もうとする。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0113>, 103, 1)  ; 「半年間も、ずっと孤独のままでいさせたんだぞ？」\k\n「償ってくれればいい…これから半年以上かけて」\k\n　また、絡みあう。\k\n　雪菜の右手と、春希の左手と…\k\n「そうやって、一時の寂しさに負けて元に戻ったとしても、また俺、雪菜のこと傷つけてしまうかもしれないんだぞ？」\k\n「そんなの、やってみなきゃわからない」\k\n　暗がりの中…\k\n　雪菜の熱い息遣いと、わずかな光に照らされて輝く瞳だけが、春希に届く。\k\n「俺は、雪菜に許されるべき人間じゃない」\k\n「それはわたしが決めることだよ！」\k\n
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0114>, 104, 1)  ; 　そして、雪菜は意を決して、さらに一歩踏み込む。\k\n　繋いだ両手を胸の前に。\k\n　額をこつんと、春希の胸に。\k\n「だって、わたしは、わたしは…っ」\k\n\n
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

@VCALL SetMessageE(RES<0115>, 105, 0)  ; 　――好きだよ…今でも、ずっと好きなんだよ、春希くん。\k\n\n　身体は、触れられた。\k\n　だから後は、心を触れあわせるだけ。\k\n「雪菜…」\k\n「春希、くん…」\k\n　きっと、それはもう、時間の問題。\k\n　だって泣きそうな春希は、泣きそうな雪菜を放っておけない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0116>, 106, 1)  ; 　かつて自分が雪菜を傷つけた罪と、今、雪菜を傷つける罪を比べ…\k\n　そして、新たな罪を重ねることの愚かさを思い知るのだから。\k\n「雪菜、お、俺…俺…っ」\k\n「はるき、く…」\k\n\n　けれど…\k\n\n
PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessageE(RES<0117>, 107, 0)  ; 「………ぇ？」\k\n「なんで…っ」\k\n　姫と従者の身分違いの恋は…\k\n　複雑にねじ曲がっていた運命の綾は…\k\n　そんなに簡単には、解けてくれはしなかった。
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

@VCALL SetMessage(RES<0118>, 108, 1)  ; 「さて、今日最後の曲は…これ知ってる人どれだけいるのかな～」\k\n「実はこれ、今日じゃなくて、去年のライブでかかった曲なんだよね」\k\n「しかも峰城祭じゃなくて付属祭…後輩のコたちが<R演|や>ったオリジナル」\k\n「この時のライブってのが凄くてね、峰城祭に来てた客まで全部奪っちゃって体育館から人が溢れ出したって今でも語り草になってたりするわけで…」\k\n「先日、ちょっとしたきっかけで偶然音源が手に入ったので、一年ぶりにめでたく復活と相成りました」\k\n「峰城大付属軽音楽同好会で『届かない恋』」\k\n\n
PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 3
PUSH INT 9600
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

PUSH INT 380
PUSH INT 0
PUSH INT 0
PUSH INT 1
CALL Wait2
OPERATOR POP

@VCALL SetMessage(RES<0119>, 109, 0)  ; 「あ、あ…っ」\k\n「雪菜…？」\k\n
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
PUSH INT 8017
PUSH INT 0
PUSH INT 0
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 210
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

@VCALL SetMessageE(RES<0120>, 110, 0)  ; 　全てが、巻き戻っていく。\k\n「あ、あ、あ…っ」\k\n「っ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0121>, 111, 1)  ; 　抱きあっていた身体は硬直し、繋いでいた両手は力を失い…\k\n　最後にそこにいたのは、誰も見たことのない、本物の雪菜。\k\n　本物の、絶望の表情に彩られた、春希ですら知らなかった、変わってしまった雪菜。\k\n\n
PUSH INT 3
PUSH INT 210
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0122>, 112, 0)  ; 　あと少しだった。\k\n　ずっと溜め込んでいた想いを、遂げられるはずだった。\k\n　なのに…\k\n\n　『届かない恋』が、沈黙の下りた暗闇の教室に響く。\k\n　けれど雪菜の耳には、自分の歌声は聞こえない。\k\n　春希のギターも聞こえない。\k\n　ただ、二人の旋律を包み込むように優しく導くキーボードが…\k\n　冬馬かずさという名が…\k\n　雪菜の心に刃で刻まれたその傷が、熱を持って疼いていた。\k\n
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

ARRAY_S RES<0123>  ; 5102
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
