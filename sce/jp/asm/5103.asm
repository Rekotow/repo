!RESOURCE "5103.csv"

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
PUSH INT 5103
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

@VCALL SetMessage(RES<0004>, 0, 1)  ; 第三章　三年後の、あの想い\k\n\n
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

@VCALL SetMessage(RES<0005>, 1, 0)  ; 　四月。\k\n　雪菜が峰城大に入学して、とうとう三年目。\k\n　学内ＦＭラジオから、<R冬の定番曲|とどかないこい>が流れなくなった季節…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 3019
PUSH INT 30
PUSH INT 1
PUSH INT 40
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

@VCALL SetMessage(RES<0006>, 2, 0)  ; 「雪菜～、来週末の新歓コンパ絶対に来るよね！」\k\n「院の先輩たちから今度こそ連れてくるよう厳重に言われてるんだからね！」\k\n「わかってるよ…行くってば」\k\n
PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 3, 0)  ; 　新学期を迎え、進級しても、相変わらず雪菜は皆の中心に据えられていた。\k\n「用事入れてないよね？　四限目出るよね？　講義終わったらそのまま拉致るからね」\k\n「あたし朝から監視してるから。絶対怪しげな行動取らないようにね」\k\n「もう、これで五回目だよ釘刺されたの。そんなに信用ないかなぁ」\k\n「あるわけないじゃん…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0008>, 4, 1)  ; 「どの口がそれを言うかなぁ、ゼミ合宿ドタキャンかましといて～」\k\n「だ、だから…インフルエンザにかかっちゃったって何度も…」\k\n　あの、二十歳の誕生日から一月半…\k\n　大学の新学期が始まるまで、雪菜は“良く言って引きこもり”な春休みを過ごした。\k\n　もちろん、インフルエンザで寝込んでいたなどという事実もなく、予定していたゼミ合宿も行かず、朝から晩まで何をするでもなく、とにかく人に会うことを避け続けた。\k\n
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

ARRAY_S RES<0009>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
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

@VCALL SetMessageE(RES<0010>, 5, 0)  ; 『北原さんにすら誘ってもらえないのかよ。終わってんな姉ちゃん』\k\n『春希くんは春休みの間ずっと住み込みバイトなの。ずっと家でゲームばっかりやってるどこかの弟とは出来が違うの』\k\n『つまりどこかの姉とも出来が違うと…って、お互い虚しくなるからやめようぜ』\k\n　家でもずっとこんな調子で…\k\n　つまり、春希と別れたことを、家族にも告げていなかった。
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

@VCALL SetMessage(RES<0011>, 6, 1)  ; 　そのとき雪菜は、春希の嫌なところを、また一つ見つけた。\k\n　自分に、そんな情けない嘘をつかせるところが、嫌いだった。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

ARRAY_S RES<0012>
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 7, 0)  ; 「ほんっと、あの時は大変だったんだから」\k\n「そうそう、幹事グループから二人も脱落するんだもんね～」\k\n　そんな気分の悪い追憶に浸っている間も、二人組の<R圧力団体|ゆうじん>の糾弾は未だに止んでいなかった。\k\n　しかしその口調は、恨み骨髄というよりは何やら興味津々と言った趣が強く…\k\n「ねぇ雪菜、何度もしつこく聞いて悪いけど、正直に答えて」\k\n「…友近君と何かあったの？」\k\n「何度も同じこと答えたけど、なにもないよ」\k\n　その証拠に、いつの間にかこういう方向に流れが変わっていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0014>, 8, 1)  ; 「あの時は、二人とも同じ日にキャンセルの連絡あったからさぁ」\k\n「実のところ二人で駆け落ち…じゃなくて抜け駆けしたんじゃないかって噂で持ちきりだったんだから」\k\n「噂はしょせん噂だよ…そんなくだらないこと、いつまでも引っ張らないでよ」\k\n　友近とは、春希と同様、あの誕生日の夜以来会っていなかった。\k\n　だからあの夜のことは、誰ひとり、何ひとつ答えは出ていないままだった。\k\n　…雪菜の心中を除いては。\k\n「だってさぁ、あの時期すごく仲良かったじゃない、本気でくっつくかと思ってた」\k\n「それに彼、三年になってから見かけないから…」\k\n「そうそう、余計に何かあったんじゃないかって…ケンカでもした？」\k\n「喧嘩なんか…するわけないよ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 9, 1)  ; 　本気でぶつかるべき相手でなければ、喧嘩なんかしない。\k\n　つまりは、そういうことだった。\k\n「だからもう、その話はやめようよ…」\k\n「そんなこと言ったって、ほんと大変だったんだからあの時は」\k\n「そうそう、今は亡き委員長君のフォローで急場はしのげたけど」\k\n「だよねぇ、もし北原君がいなかったらどうなってたことやら…」\k\n「今度こそ絶対サボらないからお願いだから蒸し返さないで！」\k\n\n　雪菜も友近も参加しなかったゼミ合宿は、実はかなり妙な展開になったらしかった。\k\n　思わぬ二人のキャンセルで出席者の全容が掴めなくなった他の幹事たちが途方に暮れていた時、突然、彼らの代役を買って出た救世主が現れたという。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 10, 1)  ; 　…つまりその人こそ、春から転部も決まりゼミから撤退したはずの北原春希だった。\k\n　彼は持ち前の調整能力とマメさと教授や先輩にも物怖じしない図々しさを駆使して、出席者リストを一からまとめ直した。\k\n　しかもそれだけには留まらず、合宿自体にも同行し、雪菜と友近が担当するはずだった仕事だけでなく他の幹事たちの分担にも目を配り、行き届いていない部分があれば容赦なく口と手を出し、最終的には幹事全員を仕切るようになっていた。\k\n　ペンションの部屋割り、スキー場への送迎、パーティでの裏方、買い出し等々、決して表に出ることなく、けれど全ての進行を裏から操り…\k\n　そして最後には、スキー中に怪我をした先輩に付き添って一足先に帰京していった。\k\n　そんな、ちょっと意味のわからない伝説を、後になって幹事たちから聞かされた雪菜は『どうして教えてくれなかったの！』と怒りたい感覚に囚われたが、そもそもインフルエンザにかかっていたはずの自分にそんなことを言う資格がないと気づき黙り込んだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0017>, 11, 1)  ; 　そしてしばらくして、そんなどっちのためかもわからないお節介で色めき立つのは間違いだと、それは春希の長所ではなく短所だと思い直すことにした。\k\n\n　そのとき雪菜は、春希の嫌なところを、さらに一つ見つけた。\k\n　自分に罪悪感を抱かせようとする、嫌味っぽいお節介が、嫌いだった。
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

PUSH INT 60
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

@VCALL SetMessageE(RES<0018>, 12, 1)  ; 　四月もそろそろ半ば。\k\n　最初のうちは教授の自己紹介や概要に留まっていた講義がそろそろ本格的な内容に触れ始めた頃。\k\n「やっぱり…来てないのかな」\k\n　キャンパスの北にある第二食堂の入り口のところに、人待ち顔な雪菜の姿があった。\k\n　だいぶ温かくなったとは言え、四限も終わった夕刻ともなるとまだ肌寒く、少し震え気味に肩を抱きつつ一人佇む。\k\n　彼女の視線の先には、食道のすぐ隣にある三号館の正面玄関。\k\n　そこから、講義やゼミの終わったらしい学生たちがぽつぽつと出てきてはキャンパスへと溶け込んでいく。\k\n　ちなみに、ここ第二食堂や三号館は、キャンパスの南側に位置する政経の六号館とはまるで正反対の位置にある。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
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

@VCALL SetMessageE(RES<0019>, 13, 1)  ; 　敷地が南北に長い峰城では、この二箇所を移動するには十分以上歩く必要がある。\k\n　そんな長い距離を、基本的に出不精の雪菜がわざわざ歩いて出向いてきた理由は…\k\n「どうしちゃったんだろ…春希くん」\k\n　もちろん、ここが文学部のテリトリーだったからで。\k\n\n　前日、依緒から電話で気になる情報を聞いた。\k\n　三年になって文学部に転部した春希だが、新学期からの出席率が芳しくないらしい。\k\n　情報源は文学部にいる武也の<R友達|カノジョ>で、春希を三号館で見かけたのはここ二週間でたったの三回ほどということらしかった。\k\n　平均的な文系大学生なら、まぁこんなものかで済むかもしれないが、政経でも単位取得王で鳴らした“あの”春希にしては緊急事態と言ってもいい出席率だった。
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

@VCALL SetMessageE(RES<0020>, 14, 1)  ; 　…ところで、依緒が春希の噂話をこうして未だに雪菜に伝えてくる背景には、ちょっとした情報の齟齬が関係しているのは明らかで…\k\n　つまり雪菜は、春希と別れたことを、親友たちにも告げていなかった。\k\n　本当に別れる気があるのか疑わしいほど徹底した秘匿主義だった。\k\n「………はぁ」\k\n　そうやって今までの事情を頭の中で振り返っているうちに、次から次へと気づかされる自分の痛さに雪菜はため息をついた。\k\n　こうして春希を待ち続けて何になるのか。\k\n　もし彼が今日は大学に来ていたとしても、だからと言って話し掛けられるはずもない。\k\n　ただほっとして、そして心配させたことを憤るだけ。\k\n　もし彼が今日も大学に来ていなかったとしても、だからと言って電話で様子を確かめられるはずもない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0021>, 15, 1)  ; 　ただ不安が増して、そしてますます気になってしまうだけ。\k\n　自分のしていることが非常に無意味で、痛々しいストーカーじみた行為だと認識せざるを得なかった。\k\n　けれど雪菜にしてみれば、それもこれも春希のせいだとしか言いようがない。\k\n　人には講義をサボるなと説教するくせに自分は大学に来ないとは…\k\n　就職のことまで考えて転部したと言っておきながら、まるで行動が伴っていない。\k\n　これで心配するなという方がどうかしている。\k\n\n　自分にわざわざ遠い場所まで足を運ばせるところがちょっと嫌いだった。\k\n　自分にこんな痛々しい行為をさせるところがちょっと嫌いだった。\k\n　自分にここまで心配を掛けさせる、自分勝手な行いがちょっと嫌いだった。\k\n　そんな三つの“ちょっと嫌い”の合わせ技で、一つ分の嫌なところを見つけた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
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

@VCALL SetMessage(RES<0022>, 16, 1)  ; 「あ…っ！」\k\n　などと、勝手に険しくなる表情を必死で和らげようと奮闘してはいたけれど…\k\n　それでも見知ったジャケットが三号館から出てくるのは見逃すはずもなかった。\k\n「………ぇ？」\k\n　ついでにその隣、見知ったジャケットの腕にすがりつく女の子が三号館から出てくるのを見逃すこともできなかった。\k\n\n
PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0023>, 17, 0)  ; 「ちょっと春希～、久しぶりに来た今日こそは迎え酒に付き合ってもらうからね～」\k\n「先週の二日酔いのフォローなんて知るか。てか離せ」\k\n「せっかく歓迎してあげてるのに何その言い草」\k\n「とか言って今まで全部俺のおごりじゃないか」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 18, 1)  ; 「い、いや～、今月はちょっとピンチでさぁ」\k\n「偶然だな、俺もだ。そういうわけで今月はバイトで忙しい。じゃあな」\k\n「ああっ、この薄情者～！　あたしが禁酒してもいいって言うのか！」\k\n「健康的で結構じゃないか。だから離せ、服が伸びるだろ！」\k\n\n「………っ」\k\n　その姿に近づくこともできず、逃げ出すこともままならず。\k\n　ただ春希と、その腕にとりつく女の子が目の前を通り過ぎるに任せるしかなかった。\k\n　物陰に隠れて彼らをやり過ごしながら、自分を見つけてくれなかった屈辱に打ち震えるという、ちょっとご無体な感情に揺り動かされながら。\k\n　相手の女の子の顔は見れなかったし、見たくなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0025>, 19, 1)  ; 　ただ、その声と態度だけでも、自分とはまったく違うタイプの女性であることだけはわかってしまった。\k\n　遠慮なく話し掛けられる積極性。屈託のない明るさ。\k\n　そして何よりも、彼に受け入れられているという事実。\k\n　…どれも、昔の自分が持っていて、そして今の自分が失ったもの。\k\n\n
PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessage(RES<0026>, 20, 0)  ; 　そのとき雪菜は、春希の嫌なところを、もう一つ見つけた。\k\n　人に心配を掛けさせておいて、こんな仕打ちで返すところが、大嫌いだった。\k\n\n
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

@VCALL SetMessageE(RES<0027>, 21, 0)  ; 「ちょっと…痩せた？」\k\n　その、すでに遠くなってしまった後ろ姿を今度こそ遠慮なく見つめ、そして新たな心配の種を育てつつ、雪菜はしばらくその場に佇んでいた。
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
PUSH INT 3019
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 3
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0028>, 22, 1)  ; 「じゃ次は俺から………と、今後ともよろしく。かんぱ～い」\k\n
PUSH INT 8408
PUSH INT 255
CALL SE
OPERATOR POP

@VCALL SetMessage(RES<0029>, 23, 0)  ; 「あ、はい…よろしくお願いします…んく…」\k\n「お～いい感じいい感じ。いけるじゃん小木曽ちゃん！」\k\n「ちょっと先輩たち、そんなに飲ませないでよ？　普段は一口だけなんだからそのコ」\k\n「いや、この様子だと実は相当いけるクチと見た」\k\n「普段は正体を隠してるだけなんじゃないの？」\k\n「いえ、そんなことも………ごちそうさまでした」\k\n「せ、雪菜…？」\k\n「お～、いいねいいね～。じゃあ次は俺の杯を…」\k\n
PUSH INT 0
PUSH INT 8223
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 24, 0)  ; 　週末の新歓コンパは、雪菜にしてはピッチが速かった。\k\n　いつもの控えめで遠慮がちな振る舞いはなりを潜め、注がれるままに飲み、聞かれるままに答え、けれどくだらない話には笑顔を返さず。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0031>, 25, 1)  ; 　いつも強引に合コンに誘い出しては肩透かしを喰らい続けた同級の友人たちにとっては、それは少しばかり面食らう光景だった。\k\n　しかもその原因が、つい最近転部していった元同級の男子学生であったとか、その内容が、大学のアイドルたる彼女にしてはあまりにもくだらない嫉妬だったなどとは、誰も想像がつくはずもなく…\k\n「このブラウス可愛いね、今年の新作？」\k\n「あ、どうかな…適当に買ってるから」\k\n　バーゲンや通販の特価品をこまめに探し、値段の割には見栄えのするものを厳選して購入することが適当と呼べるのなら、雪菜の言い方は正しかった。\k\n　付属の、あの楽になった半年間を除けば、雪菜はずっと見栄っ張りな女の子だった。\k\n　誰に対しての見栄か、何に対しての意地か、自分にもわからなくなってはいたけれど。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0032>, 26, 1)  ; 「やっぱ男にもさ、同じレベル求める？」\k\n「服とかに金掛けてる男の方がいい？」\k\n「だから先輩たち、雪菜にそういう質問は禁止ってさっき…」\k\n「そうですね…お金を掛けてるかは気にしませんけど、やっぱり身だしなみに気を使う人の方が好感持てます」\k\n「せ………雪菜？」\k\n「お～、そっかそっか～、やっぱそうだよな～」\k\n「つか、ミス峰城の隣を歩く男だぞ。そんなの最低条件だろが」\k\n　それは、かなり無難な受け答えではあったけれど…\k\n　それでも“あの”小木曽雪菜が初めて男の趣味に言及したことは、この場にいた男子学生たちにとってはかなりの事件だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0033>, 27, 1)  ; 「なぁ小木曽ちゃん、ちょっと審査してくんない？　俺の今日のこの服、君と釣り合ってるかな？　一応これイタリア直輸入で…」\k\n「だからお前何もわかってないだろ。金の問題じゃねえんだよ」\k\n「まずは人間のレベルを上げないとな～、中身釣り合ってねえだろお前の場合」\k\n　そんなふうに周囲の男子たちが自分の発言で右往左往する中、雪菜は…\k\n\n　――そうだよ、少しは気を使ってよ。\k\n　　あの女の子と歩いているときも、去年と同じジャケット着てたじゃない。\k\n　　彼女替えたんなら、服だって替えるべきじゃない…っ\k\n\n　罪なことに、ここにいる男たちとはまるっきり別の、さっき自分が言ったタイプともかけ離れた男のことばかり考えていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0034>, 28, 1)  ; 　いつも同じ服、付属時代から変わらない髪型、ファッションに関しては清潔以外に何の取り柄もない野暮な男。\k\n　それに、自分は冷静に評価できないけれど、人に言わせれば容姿だって十人並みで…\k\n　きっとここにいる連中が彼のことを評したら全員が全員『小木曽雪菜の隣を歩く男』に相応しくないと太鼓の烙印を押すだろう。\k\n　なのに、通称ミス峰城の女の子は、二年間もずっとそんな男に振り回されてきた。\k\n　こんなに気とお金を使っていたのに、それでもまるで反応してくれなかった。\k\n\n　そのとき雪菜は、春希の嫌なところを、あと一つ見つけた。\k\n　自分の見栄に気づいてくれない、気にしてくれないところが、嫌いだった。\k\n\n
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

@VCALL SetMessageE(RES<0035>, 29, 0)  ; 　その後も新歓コンパは雪菜を取り囲む院生たちを中心に盛り上がり…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0036>, 30, 1)  ; 　それでも二時間も過ぎた頃になると、いい加減騒ぎ疲れた学生たちがそろそろばらけて、落ち着いた雰囲気が辺りを支配し始める。\k\n　そうなると話題も互いの近況とか、地に足の付いたものへと変わっていき…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 3006
PUSH INT 60
PUSH INT 1
PUSH INT 120
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2091
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

PUSH INT 7
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0037>, 31, 0)  ; 「そういやこの前友近見たぞ」\k\n「へ～、どこで？」\k\n「ウチのアパート。隣の部屋の引っ越し作業に混じってた」\k\n「そいやあいつ一度もゼミに顔出してないな。大学やめる気か？」\k\n「俺もそれ聞いたんだけどさ、なんか歯切れ悪い言い方で…」\k\n
PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0038>, 32, 0)  ; 「やめられたら困るんだけどな、あいつのノートアテにしてたのに」\k\n「そんな友達甲斐のない理由で心配してやんなよ…」\k\n「だって北原がいなくなった今となっちゃ、友近が最後の砦じゃないか」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0039>, 33, 1)  ; 「ああ、そうそう、その北原も一緒の現場にいたぞ」\k\n「またかよ…これであいつら、三つのバイト先で一緒に働いてね？」\k\n「まぁ、できてるってのはネタにしても、転部した後も付き合い続いてるらしいな」\k\n「やっぱ頭いい奴らってのは何か通じ合うものが…？」\k\n「なんだ、どうし…？」\k\n「………」\k\n「………」\k\n「あの…小木曽？」\k\n「あ…わたしには構わないで話続けて」\k\n「いや、構わないと言われても…」\k\n「先輩たちがみんなこっち睨んでるんだけど…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0040>, 34, 1)  ; 　テーブルの端の端、盛り上がり疲れた男二人がまったりと大したことのない噂をささやき合うその隙間に、いつの間にか場の中心を独占していたはずの雪菜がちょこんと割り込んでいた。\k\n　…ちょうど『北原も一緒の現場にいたぞ』あたりから。\k\n\n
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

PUSH INT 150
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

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1046
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

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0041>, 35, 0)  ; 「あ～、もうっ、イライラするなぁっ！」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 4
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
PUSH INT 10
CALL SetShake
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0042>, 36, 0)  ; 　ヒールで道路を蹴飛ばすと、がりっという嫌な音が意外に大きく響き、ヒールと雪菜の寿命をちょっとだけ縮める。\k\n　末次町駅から家までの徒歩十五分の道のりを、雪菜はさっきからそんなふうに時には毒づきつつ、時には落ち込みつつ、時には興奮しつつ早足で歩く。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0043>, 37, 1)  ; 　時間は九時四十分。\k\n　九時に終わった一次会の後、当然二次会にも付き合ってくれると信じていた男たちの期待を雪菜は『門限だから』の一言であっさりと裏切ると、今度は送ろうとする彼らをも軽く一蹴してさっさと改札へ消えていった。\k\n　同級の女子たちにとっては『あ、いつもの雪菜だ』とある意味安心の展開だったけれど、それでも彼女のセルフブレーキを知らない院生の男子たちにとってはその後の盛り下がりっぷりが容易に想像できる悲惨な流れだった。\k\n　しかし雪菜にとってそんなことはどうでもよく…\k\n\n　――やっぱり、友近君のためだったんだね。\k\n　　わたしのためじゃ、なかったんだね…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0044>, 38, 1)  ; 　飲み会の席で、春希の話が出たとき、一瞬で雪菜は色めき立った。\k\n　けれど、その話の詳細を聞くにつけ、じわじわと苛つきが募っていった。\k\n　春希は、転部した今でも友近と同じバイト先で働いたりと、未だに交流が続いている。\k\n　自分には連絡もくれない。近くにいても見つけてもくれない。\k\n　あの時の謝罪も、反論も、言い訳も、叱責もしてくれない。\k\n　なのに、自分に思いもよらぬ告白をして、自分を苦しめた友近とは、切れていない。\k\n　雪菜にとって、許されざることだった。\k\n　なぜなら、これでハッキリしてしまったから。\k\n　春休みのゼミ合宿で、彼が守ろうとした相手が…\k\n　これからも続いていく友情のためのお節介だったという事実が…
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

@VCALL SetMessageE(RES<0045>, 39, 1)  ; 　――誰にでも優しいところ、変わってないね、春希くん。\k\n　　なのに、わたしには優しくないなんて、酷いよ…\k\n　　女の子にでもお説教するところ、変わってないね、春希くん。\k\n　　なのに、わたしにはしてくれないなんて、酷いよ…\k\n　　友達にお節介を焼くところ、変わってないね、春希くん。\k\n　　なのに、わたしには焼いてくれないなんて、酷いよ…\k\n\n　そのとき雪菜は、春希の嫌なところを、ふたつも見つけた。\k\n　友近や新しい彼女と、どんどん別の世界に溶け込んでいく春希が嫌いだった。\k\n　自分がずっと抜け出せないでいる世界に、もういない春希が嫌いだった。
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
PUSH INT 1046
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

@VCALL SetMessageE(RES<0046>, 40, 1)  ; 「本当に………イライラするなぁっ！」\k\n　頭が、どんどん春希のことで埋め尽くされていく。\k\n　“嫌い”を重ねるごとに、今まで以上に春希への想いが募っていってしまう。\k\n「…ぁ」\k\n　雪菜は、最初からやり方を間違えていた。\k\n　本当は“嫌い”ではなく、“無関心”を重ねるべきだった。\k\n　…けれどそんな当たり前の事実は、今の、とうとうヒールを折ってしまって呆然と片足で路上に立ち尽くす雪菜には理解できるはずもなかった。
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

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 4301
PUSH INT 60
PUSH INT 1
PUSH INT 255
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

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0047>, 41, 1)  ; 　五月。\k\n　ゴールデンウィークも、あと一日を残すだけになった日のうららかな午後。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 90
CALL SES
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1043
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

PUSH INT 1
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 42, 0)  ; 「なぁ姉ちゃん、俺が言うのもなんだけどさ…」\k\n「なんだと思うなら言わないで」\k\n「春休みに引き続いてゴールデンウィークまで引きこもってて人生楽しい？」\k\n「言わないでって言ったのに…」\k\n　雪菜は、弟が今指摘した通りな連休を過ごしていた。\k\n　またしても朝から晩まで何をするでもなく、人に会うことを避け続け…\k\n「明日から大学かぁ…行きたくないなぁ」\k\n「…五月病？」\k\n　けれど現実から逃げ切れるのも、あと一日。\k\n　今日が終わると、たくさんの人々と触れあい、けれど春希のいない日々が始まる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0049>, 43, 1)  ; 　もともと同じ学部にいた頃からほとんど話しかけられなかったくせに。\k\n　二年間、ずっと孤独を引きずってきたくせに。\k\n　春に、別れたくせに。\k\n　もう、虚無感に襲われる必要なんか無いくせに。\k\n　それでも雪菜は、また新しい傷を増やしながら無為に明日を待つ。\k\n
PUSH INT 0
PUSH INT 2501
PUSH INT 0
PUSH INT 0
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0050>, 44, 0)  ; 　…と、雪菜がまた深く沈み込みそうになった頃、玄関のチャイムが甲高い音を立てる。\k\n「姉ちゃんお客さん」\k\n「お姉ちゃん部屋着」\k\n「俺だってパジャマだよ」\k\n「わたしがこんな格好して外出たら近所で色々言われるでしょ。それでもいいの？」\k\n「だったら家でもちゃんとしたカッコしてろよ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0051>, 45, 1)  ; 　確かに小木曽家の長女は、容姿的にも人格的にも“よくできた娘さん”だと近所でも評判になっていた。\k\n　けれど毎日のように、こうして家での怠惰な姿を目の当たりにしている<R孝宏|おとうと>には到底納得のできる評価ではなかった。\k\n
PUSH INT 0
PUSH INT 2501
PUSH INT 0
PUSH INT 0
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0052>, 46, 0)  ; 「ほら、また鳴ったよ」\k\n「わかったってば…は～いはい、ちょっと待って～！」\k\n　二度目の呼び出しを受けて、ようやく孝宏がめんどくさそうにパジャマのまま廊下へと出て行く。\k\n
PUSH INT 0
PUSH INT 1001
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0053>, 47, 0)  ; 　リビングにはインターフォンのモニターが普通に設置されていたけれど、基本的に家族全員が呑気な小木曽家ではその防犯機器を使う者はいない。\k\n　しばらくすると玄関の扉が開く音と、孝宏が誰かと話す声が響き、そして更にしばらくすると足音が廊下を戻ってきて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0054>, 48, 1)  ; 「姉ちゃんにお客」\k\n「…誰？」\k\n　さすがにもう、無条件で春希を期待するような前向きさは持ち合わせていなかった。\k\n\n
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

@VCALL SetMessage(RES<0055>, 49, 0)  ; 　それから三十分後…\k\n　家から歩いて十分ほどのところにある喫茶店の窓際の席に、向かい合わせで座る二人の姿があった。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
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

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1030
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

PUSH INT 9
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0056>, 50, 0)  ; 「久しぶり」\k\n「…そうだったっけ？」\k\n
PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0057>, 51, 0)  ; 　そうだったっけも何も、会わなくなってもう三か月になる。\k\n「あのあと、ずっと連絡取れなくてごめん。ちょっと…いや結構色々あってさ」\k\n「ふぅん」\k\n　結構色々あったのは、こっちも同様だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0058>, 52, 1)  ; 「ちょっと…痩せたんじゃないか？」\k\n「どうだろ…よくわからない」\k\n「俺は八キロも痩せちゃってさ…今、引っ越しのバイトやってるんだけどキツくって」\k\n　痩せたとか太ったとか、焼けたとか白くなったとか、全然気づかなかった。\k\n　…何しろ、すでに以前どんな顔をしていたのかすらよく覚えていない。\k\n　それに、今の姿をまじまじと確かめる気もなかった。\k\n「それで何かな？　…友近君」\k\n　条件付きでも、少しだけしていた期待が、やっぱり裏切られたから。\k\n「気になってたんだ…あんな中途半端なままで終わっちゃって」\k\n「………」\k\n　友近がちょっと照れたような、申し訳なさそうな、困ったような笑顔を見せる。\k\n　けれど今の雪菜には、その表情が他の何にも重ならない。\k\n　ただの知り合いの男性の、困惑の表情でしかなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0059>, 53, 1)  ; 「それで、その…早い話が、さ」\k\n「あの…」\k\n「ん？」\k\n「悪いけど、早めに戻らないといけないから」\k\n「あ、ああ、悪い。早い話って言っておきながら十分遅いよな」\k\n　時間なんか余っていた。\k\n　この後の予定なんて、家に帰って夕飯を食べる以外に何もなかった。\k\n　けれどこの場に、これ以上いたくなかった。\k\n「あのさ、小木曽…あの時の返事なんだけど…」\k\n「………」\k\n「………」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0060>, 54, 1)  ; 「…そっか」\k\n　多分、勇気を振り絞ってやっと口にした友近の告白の続きに…\k\n　自分で先を促したにもかかわらず、雪菜は完全な黙殺で応えた。\k\n「ごめんな、小木曽…嫌な思いさせちゃって」\k\n「………」\k\n　あからさまに目をそらす。\k\n　決して『そんなことないよ』と否定しない。\k\n「それじゃ俺、行くから」\k\n「………」\k\n　そして、肯定の証の無言を貫く。\k\n「あ、そうだ、それと…」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0061>, 55, 1)  ; 　雪菜は、変わった。\k\n　三月前の、あの二十歳の誕生日に、また微妙に変わってしまった。\k\n「春希の、ことなんだけど…」\k\n「………」\k\n　形だけの、誰にでも平等な優しさがなくなった。\k\n　うわべだけの、誰にでもいい顔はしなくなった。\k\n「この間、あいつとさ…」\k\n「………」\k\n　誰の幸せをも願う“いい子”ではなくなった。\k\n　小木曽家の自慢の長女と言うには、少し毒が強くなった。\k\n「やっぱ、この話も興味ないかな？」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0062>, 56, 1)  ; 　相手を引き寄せるフェロモンはそのままに。\k\n　なのに近づいた相手に突き刺さる鋭い棘まで備えてしまった。\k\n「別れたって…やっぱ本当だったのか？」\k\n「………」\k\n　今のままでは、余計な敵を作ってしまうかもしれない。\k\n　人一倍の人気者であるが故に、人一倍の嫌われ者になってしまうかもしれない。\k\n「…いや、これも小木曽にとって嫌な話だったよな。忘れてくれ」\k\n「………」\k\n　そう、まるで<R彼女|せつな>が一瞬だけ親友になれた<R彼女|かずさ>のように…\k\n「それじゃ、今度こそ、さよな…」\k\n「待って」\k\n「え？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0063>, 57, 1)  ; 「春希くんが、なに？」\k\n「………」\k\n　今度は友近の方が沈黙する。\k\n「春希くんが、なんなの？」\k\n「………ぷっ」\k\n「な、なに？　どうしたの？」\k\n　そして、今度は呆れたように笑い出す。\k\n　その、やり口もタイミングもあまりに身勝手な問いかけに。\k\n「酷いな、小木曽は」\k\n「…ぇ？」\k\n　でも彼は知っている。いや、初めて話したときから知っていた。\k\n　雪菜の、無意識なまでに残酷なこの仕打ちを。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0064>, 58, 1)  ; 「春希のこととなるといきなり性格変わるんだな。他の奴がどう思うかとか、本気で眼中にないんだな」\k\n「え？　え？」\k\n　けれど雪菜にとっては、自分が“酷い”と罵られるなどとは全く想定の範囲外で…\k\n　ずっと春希を呪うために繰り返してきたその言葉が、呪いの言葉ゆえにそっくりそのまま自分に返ってきたことを、ただ突き刺さるままに受け止めるしかなかった。\k\n「よくそんなんで人気者やってるよ…」\k\n「………春希くんが、どうしたの！？」\k\n「…はいはい」\k\n　雪菜は変わった。\k\n　………けれど、本質のところだけがどうしても変われなかった、らしかった。\k\n　いい意味でも、悪い意味でも。
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1030
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
PUSH INT 6000
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

@VCALL SetMessageE(RES<0065>, 59, 1)  ; 　友近が四月から大学に来なくなったのには訳があった。\k\n　いや、もともと二月のゼミ合宿に来られなかったのにも訳があった。\k\n　…病気の母の手術の日取りが決まったから。\k\n　それも、ゼミ合宿出発の日に入院、翌日に手術というかなり急なスケジュールで。\k\n　時間、金、覚悟、将来…多すぎる問題に困り果てた彼は、“あの夜”に出会ってしまってお互い気まずい思いを抱えているはずの春希に頼るしか方法がなかった。\k\n　春希は、電話をしたら三十分でやって来た。\k\n　いつも通り、冷静で、仕切り屋で、説教臭くて、あの夜のことなど何もなかったかのように友近のことを叱咤激励し、そしてすぐに動き始めた。\k\n　まずは直近の対応として入院の準備、費用の調達、そして合宿のフォロー。\k\n　…つまり合宿の時、春希が助けたのは、やはり雪菜ではなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0066>, 60, 1)  ; 　どれだけ深く、どうしようもなく、そして彼らしい事情があったとしても、その事実だけは揺るぎようがなかった。\k\n　手術がめでたく成功し、ようやく友近も安堵したその晩、春希が合宿から帰ってきた。\k\n　成功の報を聞いて彼も安堵すると、なぜか足を骨折した先輩の入院の手続きを始めた。\k\n\n　友近の母の経過は順調で、三月の中旬にはとうとう退院となった。\k\n　その間、春希も忙しい合間を縫って、何度も見舞いに訪れた。\k\n　そんなこんなで、友近にとって悲願だった母の全快の日に大きく近づいていく。\k\n　けれど二人とも、これからが本当の戦いだということはわかっていた。\k\n　今までの手術費、入院費、そして今後の通院、リハビリ、薬にかかる費用…\k\n　保険が適用できるとは言え、賄いきれない範囲の金額は膨大で、そこに友近の授業料が割り込む余地と、友近家がバイト程度で生活できる余裕はどこにもなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 61, 1)  ; 　だから友近は、当然のように大学をやめ、働くことを決意した。\k\n　…けれど、その尊い決心に猛烈に異を唱えたのが他ならぬ春希だった。\k\n　春希は友近の才能を惜しみ、かつて一年かけて進学を勝ち取った努力を惜しみ、今を乗り切れば将来的には必ずプラスに転じるからと、三日三晩も説教を重ねた。\k\n　そのあまりのしつこさに友近がとうとう折れると、続いて早速行動に移る。\k\n　併用できるありとあらゆる奨学金を調べ上げ、勉学に勤しめる基盤を作り。\k\n　続いて直近の授業料の払い込み締め切りに関しては、今までの二つのバイトに加え、四月から引っ越しのバイトを新たに入れられた。\k\n　もちろん春希も一緒の現場に立ち、力仕事に慣れない友近が挫けそうになるのをずっと監視しつつ叱咤激励した。\k\n　その形相や態度や所業は、春希のことを大恩人と信じて疑わない友近をして、鬼としか思えなかったという…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0068>, 62, 1)  ; 　そして、そんなこんなの日々が一月ほど続き。\k\n　ようやく昨日、友近と春希の二人のバイト代を合わせてなんとか授業料の額に達し。\k\n　昨夜、二人で本当の意味での祝杯を挙げたという。\k\n\n
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
PUSH INT 3006
PUSH INT 60
PUSH INT 1
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1030
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

@VCALL SetMessageE(RES<0069>, 63, 0)  ; 「春希がいなければ、俺はとっくにこの大学をやめてた」\k\n「………」\k\n「ここまで人の事情に介入してくる奴なんていやしない。たとえ見返りがあったとしても、普通ここまでやるわけない」\k\n「………」\k\n「馬鹿で、鬱陶しくて、そして最高の親友だと思ってた」\k\n「………」\k\n　また、雪菜が沈黙に戻る。\k\n　揺れる瞳を、必死にそらす。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0070>, 64, 1)  ; 「だから、俺はあいつに…」\k\n
PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0071>, 65, 0)  ; 「………おめでとうっ」\k\n「小木曽？」\k\n　けれど、今度ばかりは無関心を貫くわけにはいかなくて。\k\n「お母さんのこと、おめでとう…早く完治するといいね」\k\n「あ、ああ…ありがとう。それで…」\k\n「うん、心からよかったって思ってる。これだけは本当だよ？」\k\n「小木曽…」\k\n「ごめんね友近君。わたし、小さいことにこだわって、あなたに嫌な思いさせて」\k\n「いや、そんなことないよ。空気読んでなかったのは俺の方だし。でさ…」\k\n「だから…もう行くね。本当にごめんなさい」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0072>, 66, 1)  ; 　心が…折れてしまいそうだった。\k\n　二月のあの日から、自分の心は折れたと思っていた。\k\n　だけど違った。\k\n　全てを相手のせいにして、折れたと思い込んでいただけだった。\k\n　だって、悪いのは春希じゃなかった。酷いのは彼じゃなかった。\k\n　悪いのも酷いのも、本当は、二人のうちのもう一人だと思い知った…\k\n「いや、待ってくれよ小木曽。まだ話は…」\k\n　雪菜が絶望した理由は、友近の話の本質とはずれていた。\k\n　彼が友達のためにしたことを知り、事情も知らずに憎んだことを恥じたからじゃない。\k\n「ごめんなさい…もう勘弁して」\k\n　そんな彼の本当の強さを、尊さを聞かされても…\k\n　それでも、友近と、彼の母に嫉妬してしまった自分の醜さを知ってしまったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0073>, 67, 1)  ; 「…聞かないと後悔すると思うけど？」\k\n　友近の話を聞いている間中、雪菜は嬉しくて、すごく悔しくて、唇を噛み締めていた。\k\n「これ以上後悔することなんか…もうないよ」\k\n　春希はやっぱり変わってなんかいなかった。\k\n　けれどやっぱりあの時、自分よりも友近を優先した。\k\n　あんな仕方ない事情を聞かされた今でさえ、女のプライドが何もかも許してくれない。\k\n　本当に、酷い“女”だった。\k\n「昨夜、春希と飲んだって言っただろ？」\k\n「だから、もうやめて」\k\n「これで俺もまた復学できるって。あいつ、自分のことのように喜んでくれて」\k\n「やめてってば！」\k\n「で…絶交された」\k\n「だからそんなのわたしにはもう関係な………ぇ？」
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0074>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2091
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

PUSH INT 24
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0075>, 68, 1)  ; 『ちょっと待てよ…何言ってるんだよ春希』\k\n『だから、俺が貸した分は返さなくていい。遠慮せずに使ってくれ』\k\n『いや、そんなの駄目だろ。友達だからこそ金のことはちゃんと…』\k\n『駄目なのは俺の方だ…だって今から俺、お前に最低なことするんだから』\k\n『だから一体なんの…』\k\n『一発だけでいい…殴らせろ』\k\n『………春希？』\k\n\n『ごめん、今さら蒸し返すようで悪いけど、ずっと押さえ込んでた。\k\n　何度も爆発しかけたけど、お前の母親の手術が終わるまではって、我慢してた。\k\n　退院するまではって、授業料を払い終わるまではって、必死で引き延ばしてた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0076>, 69, 1)  ; 　でも…もういいだろ？　これからは俺がいなくても、なんとかなるだろ？\k\n　だから、もういいだろ………てめぇふざけんなよこの野郎っ！\k\n　雪菜のこと、好きになっただろ？\k\n　俺の目の前で、雪菜に告白しやがったよな？\k\n　俺から、奪おうとしやがったよなぁ…っ！？』\k\n\n『だってお前、小木曽のこと避けてたじゃないか』\k\n『それがなんだよ…』\k\n『別れるつもりだったんじゃ…ないのかよ』\k\n『俺たちのことよく知りもしないでわかったふうに言うな！』\k\n『春希…』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0077>, 70, 1)  ; 『俺は、俺はさ…雪菜を裏切ったんだ。\k\n　だから何があっても、雪菜を受け入れられない。許されない。\k\n　けど、俺以外の男が雪菜に…そんなの、許さない』\k\n『彼女に酷くないかそれは？』\k\n『酷いよ。残酷だよ！\k\n　けど、そう思っちまうんだよ。どうしても我慢できないんだよ！』\k\n\n『友近、お前いい奴だよ。凄い奴だよ。\k\n　俺の親友よりも、人間的にはできた奴だと思うよ。\k\n　お前だったら、もしかしたら雪菜を幸せにできるのかもしれない。\k\n　けれど、俺の見てる前で、俺以外の男が雪菜を幸せにするなんて嫌だ…っ』
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0078>, 71, 1)  ; 『これからも、困ったことがあったら言ってくれ。協力は惜しまない。\k\n　でも、俺たちはもう友達じゃない………俺はお前を二度と許さない』\k\n\n
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

ARRAY_S RES<0079>
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
PUSH INT 1030
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

@VCALL SetMessageE(RES<0080>, 72, 0)  ; 「で、本当に殴られた。これがその痕」\k\n「………」\k\n「けどあいつ人を殴ったことがないみたいでさ、ダメージは向こうの拳の方が大きかったと思う」\k\n「………っ」\k\n　両手をぎゅっと握りしめ、膝の上に重ねる。\k\n「ぶっちゃけ、あの時は二人とも相当カッコ悪かったと思う」\k\n　その握り拳を、太股の付け根のところまで寄せて、強く力を込める。\k\n「でも、春希は物凄く真剣だった。だから俺も物凄くショックだった」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0081>, 73, 1)  ; 　感情を抑えるためではなく、もっと即物的な理由で。\k\n「あいつのこと親友だと思ってた。けど、否定された」\k\n　だって今の雪菜には、感情よりも押さえておかなくてはならない部分があった。\k\n「でも、完全に俺のせいだもんな。だからもう戻れない」\k\n　そこから溢れ出そうになるものを留めておかなくてはならなかった。\k\n「つまりそういうことなんだ…あいつ、小木曽のこと、こんなにも…」\k\n「………ごめんなさい」\k\n「え…」\k\n　だって、疼いていたから。\k\n「謝って済むことじゃないけれど、ごめんなさいっ」\k\n　春希の、あまりに身勝手な独占欲を全身に浴びて…\k\n　今にも濡れてしまいそうだったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0082>, 74, 1)  ; 「…そろそろ頭を上げてくれよ」\k\n「………」\k\n　喫茶店の窓際の席に、向かい合わせで座る男女二人。\k\n　そして彼女の方はさっきから深々と頭を下げたまま。\k\n　そんな修羅場っぽい光景は、当然周りの客の視線を一身に集めていた。\k\n「本当は、小木曽が謝るべきことじゃないって言いたいんだけど…」\k\n「ううん、わたしが悪いの」\k\n　けれど雪菜は、それらの奇異の視線すら堂々と受け止める。\k\n「春希くんがあなたに酷いことをしたのは、わたしのせいだから」\k\n「小木曽…」\k\n「わたしが春希くんに、そんな馬鹿なことさせちゃったんだから」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0083>, 75, 1)  ; 　――彼のものであるはずのわたしが、他の男性に言い寄られてしまったせいだ。\k\n　　そう、わたしは彼のものだから、そんなこと許されないんだ。\k\n\n　雪菜のその姿勢はあまりに誇らしくて、とても謝意など感じられなかった。\k\n「だから、謝ってもいいんだよね？」\k\n「君が責任を感じることで、君自身の喜びが満たされるのなら」\k\n　謝られた方としては、馬鹿馬鹿しくてやってられないほどに。\k\n「………ほんとに、ごめんね？」\k\n　ようやく雪菜が顔を上げる。\k\n　ちょっと上目遣いで、ちょっと悪戯っぽく、そして無駄に可愛らしく…\k\n　とびきり可愛い、三年前の、小悪魔の笑みで。\k\n「まいったな…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0084>, 76, 1)  ; 　その笑顔に、友近は、二月のあの夜以上に途方に暮れた。\k\n　雪菜の魅力を未だに測り損ねていたことを思い知ったから。\k\n　いや、大学から彼女を知った者は誰も知らないに違いない。\k\n　“あの”小木曽雪菜に、こんな凄まじい小悪魔的な可愛さまで隠されていたなんて。\k\n　けれどそれは、特定の誰かに恋しているときにしか見られない魅力であり…\k\n　決して自分には届かない、砂漠に浮かんだ蜃気楼のようなものだった。
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
PUSH INT 5000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0085>, 77, 1)  ; 「本当に…ばっかだなぁ、わたし」\k\n　ヒールが軽く地面をこすると、かつんという軽い音が響き、慌てて雪菜はかかとを上げてヒールの無事を確かめる。\k\n　その足には、先月壊して修理から帰ってきたばかりの靴。\k\n　近所のお馴染みの靴屋で、千円で直してもらったその靴は、少しだけ部品が変わっていたけれど、以前と変わらぬ履き心地でしっかり雪菜の全身を支えてくれている。\k\n　友近と別れた喫茶店から家までの徒歩十分。\k\n　…をとっくに過ぎた三十分後も、雪菜は我が家の近所を適当に散策し、遠回りしながら帰途に就く。\k\n　時には自嘲しつつ、時には反省しつつ、常にくすくす笑いながら、ゆっくり歩く。\k\n　別れ際、友近は雪菜に『できれば春希と仲直りしたい』と言っていた。\k\n　そして雪菜は軽く微笑んで『頑張ってね』と答え、さっさと背を向けた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0086>, 78, 1)  ; 　…もしかしたら彼が求めていた橋渡しの役目を、あっさりと無視して。\k\n\n　――ごめんなさい。\k\n　　わたし、酷い女なんだ。\k\n　　性格、歪んじゃってるんだ。\k\n　　…春希くんの、せいで。\k\n\n『…北原くんと話してると、どんどん自分の性格が歪んでいくのがわかるよ』\k\n　三年前、まだ雪菜が春希のことを“北原くん”と、春希が雪菜のことを“小木曽”と呼んでいた頃の自分の言葉を、懐かしさとともに思い出す。\k\n　あの頃の、自分の理不尽な拗ねっぷりを『我ながら可愛いなぁ』と苦笑しつつ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0087>, 79, 1)  ; 　――だってわたし、あなたたちが仲違いしたのが、嬉しい。\k\n　　わたしのために春希くんが道を踏み外したのが、嬉しい。\k\n\n　そんなふうに、可愛い表情で苦笑している雪菜の脳裏に浮かぶ言葉は、彼女を中途半端に知っている者が聞いたら戦慄するほどの黒さに満ちていた。\k\n\n　――春希くんが、暴力を振るった。\k\n　　あのひとだったら絶対にするはずのないことをしでかした。\k\n　　…わたしのせいで。\k\n　　わたしのことで、我を忘れた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0088>, 80, 1)  ; 　雪菜には、もしかしたら本当にアイドルの才覚があるかもしれなかった。\k\n　だって、今なら誰にでも笑顔を向けられる。\k\n　心の底から表層的な作り笑顔で応じられる。\k\n　…たとえ心の中で、彼らのことなどどうでもいいと思っていても。\k\n　その場にいない、たったひとりの男のことしか考えていなくても。\k\n\n　――彼を狂わせることができるのは…\k\n　　道を踏み外させることができるのは、わたしだけだ。\k\n　　わたしと、かずさだけだ…\k\n　　だからわたしは、選ばれてる。\k\n　　彼に特別扱いされてる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0089>, 81, 1)  ; 　それはもう“小木曽さんちの雪菜ちゃん”ではなかった。\k\n　本当の雪菜は、両親に愛情をたっぷり込めて育てられた少女は、素直で、優しくて、誰の幸せをも願ういい子だったはずだった。\k\n\n　――愛されていないかもしれない。嫌われているかもしれない。\k\n　　けれど彼は、わたしに無関心ではいられない。\k\n\n　けれど、『今は酷くてもいい』と雪菜は割り切った。\k\n　誰かを傷つけても、自分を守らなくてはならない。\k\n　間違っているけど、今はこれしかないのだから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0090>, 82, 1)  ; 　――ほんと、なんて自己中なんだろう、わたし…\k\n　　これじゃ、あなたと変わらないね、かずさ…\k\n\n　全ての人の幸せを願うのは。\k\n　周りの人の幸せを願うのは。\k\n　…三人の幸せを願うのは。\k\n\n　――なんてね…怒った？　かずさ。\k\n　　けれど、間違ったことを言ったつもりはないよ？\k\n　　お互い、なりふり構っていられないもんね。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0091>, 83, 1)  ; 　好きな人と結ばれて。\k\n　愛に満たされて。\k\n　そうして初めて祈ることのできる願いなのだから…\k\n\n　――ねぇ、春希くん…\k\n\n　空を見上げたまま、雪菜は歩き続ける。\k\n　もう、雪なんか降るはずのない、温かい風の吹く星空を。\k\n　ただ、目から余計なものが零れないために、見上げている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0092>, 84, 1)  ; 　――わたしのこと、ずっと苦しめ続けてる、酷いひと。\k\n　　なのに、他人がわたしを苦しめることは、許さないんだね。\k\n　　わたしのこと、ずっと受け入れてくれない、臆病なひと。\k\n　　なのに、わたしのこと、自分のものみたいに扱うんだね。\k\n\n　――言っとくけどわたし、モテるんだよ？\k\n　　言い寄ってくる男の人、いっぱいいるんだよ？\k\n　　なのに、こんなに堅物で、けれど浮気者のあなたが。\k\n　　…ううん、わたしなんかに目もくれていないはずの、あなたが。\k\n　　わたしじゃない女の子を、ずっと本気で愛し続けてるあなたが。\k\n　　そんなあなたが、わたしのこと、手放そうとしないんだね…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0093>, 85, 1)  ; 　そのとき雪菜は、春希の一番嫌なところを、とうとう見つけた。\k\n　…必死で嫌いになろうとしてるのに、全てぶち壊しにするところが、大好きだった。\k\n\n
PUSH INT 15
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0094>, 86, 0)  ; 　その夜、雪菜は数か月ぶりに自分にご褒美をあげた。\k\n　大きく漏れそうになる声をシーツを噛んで殺し、身体を極限まで苛めた。\k\n　乳首をつまむ指を強く挟み潰し、なかに入れた指を激しくかき回し。\k\n　零れ出る液をシーツにまき散らし、爪先をぴぃんと天まで伸ばし。\k\n　足が吊るのもお構いなしに、全身を激しく痙攣させ、何度も絶頂を迎えた…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT -1
PUSH INT 0
CALL WR
OPERATOR POP

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

ARRAY_S RES<0095>  ; 5104
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
