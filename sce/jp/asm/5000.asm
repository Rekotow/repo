!RESOURCE "5000.csv"

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
PUSH INT 5000
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

ARRAY_G 0
PUSH INT 5
OPERATOR MOV
OPERATOR POP
ARRAY_G 4
PUSH INT 0
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
PUSH INT 9900
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

PUSH INT 1
PUSH INT 9804
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
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1.1
PUSH FLOAT 1.1
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 1
PUSH INT 1
PUSH INT 1800
PUSH INT 0
PUSH INT 640
PUSH INT 360
PUSH INT 0
CALL Z
OPERATOR POP

PUSH INT 210
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

@VCALL SetMessageE(RES<0004>, 0, 1)  ; 序章　二年前\k\n\n　冬馬かずさは、空が嫌いだった。\k\n\n　春、自分がその日から通うことになる峰城大学付属学園の入学式をさぼって近くの河原で寝そべりながら見上げた蒼く澄み切った空が、自分の心のどす黒い曇りようとはあまりにもかけ離れていたことが気に入らなかったから。\k\n　遡ること数日前、かずさは母から別れを告げられていた。\k\n　日本が世界に誇る色情的ピアニストにして自分のたった一人の肉親である曜子は、自分勝手とも思える理由を娘にまくし立てると、活動拠点を欧州に移すために自分ひとりでさっさと飛行機に乗ってパリに飛んでいってしまった。\k\n　子供の頃から、コンクール以外の行事に来てくれたことはなかった。一度たりとも食事を作ってくれたこともなかった。よく演奏旅行と称して家を空けたけれど、本当に演奏会があったのはその半分程度で、あとはその時々の男との蜜月旅行だったことも知っていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0005>, 1, 1)  ; 　それでも今までは、そんな放蕩母について不満を持ったことはなかった。\k\n　一年の半分くらいは同じ家にいて、一緒に食卓を囲み、コンクールで優勝すれば頭を撫でてくれたから。\k\n　自分は母に必要とされていると。愛されていると心の底から信じていたから。\k\n　ところが…\k\n　『今のあなたを連れて行くことに、意味はないの』\k\n　その、自分の母親であるはずの人の口から放たれた無慈悲な言葉を聞いた瞬間、今までの冬馬かずさは消えたんだと、未だに冬馬かずさの名を冠する少女は感じた。\k\n　新しい冬馬かずさは、世界から必要とされていなかった。\k\n　それは事実ではなく、単にかずさ本人の感じ方が変わっただけだったけれど、思春期真っ只中の彼女にとっては、そんな真っ当な理屈なんかクソ喰らえだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 2, 1)  ; 　それ以来、他人がかずさに向けてくる声も、表情も、感情も…\k\n　いや、人ならぬ、生き物ですらない何もかもが向けてくる色も、音も、匂いも、味も、手触りも、表層に表れたものとは異なるもう一つの意味が隠されていて、それらの全ては彼女に悪意をぶつけ、嘲笑い、監視し、なのに無視しようとしていると感じるようになった。\k\n　だから、かずさは自分の周りの全てを…さしあたっては、その時目の前に広がっていた空を憎むことにした。\k\n　母を憎むよりは、その方が楽だったから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
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
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1010
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 50
PUSH INT 40
PUSH FLOAT 1.3
PUSH FLOAT 1.3
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 50
OPERATOR NEGATE
PUSH INT 20
PUSH INT 2000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 3, 1)  ; 　冬馬かずさは、教師が嫌いだった。\k\n\n　入学式の翌日、登校したかずさを待ち構えていた音楽科担任の女性教師は、単なるいち新入生に卑屈な笑顔を振りまくと、放課後、彼女を別棟の三階へと案内した。\k\n　第二音楽室とプレートに書かれたその教室の中央に鎮座していた新品のグランドピアノに彫り込まれていた『寄贈　冬馬曜子』という文字は、かずさを辟易させるに十分なほど金色に輝いていた。\k\n　ため息とともに無言を貫き通すかずさに担任教師は、この峰城大付属学園、特に音楽科がどれだけ一介の新入生に過ぎない彼女に期待しているかを滔々と語り、彼女のこれからの音楽活動を最優先で全面的に支援する、と、公然と他学生との差別を約束した。\k\n　だからかずさは、早速協力してもらうことにした。\k\n　『今から練習するから、すぐにここから出て行け』と…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0008>, 4, 1)  ; 　ここで担任教師が怒ったり、その無作法な言動を注意したりしていれば、かずさは自分が馬鹿馬鹿しい意地を張っていたことを思い知り、昔みたいに素直な反省の態度を見せて、二人の初対面の印象と今後の関係を改善していたかもしれない。\k\n　けれど三十半ばの黒縁眼鏡の女性教師は、一瞬目を丸くした後、すぐに卑屈な笑みを必死で取り戻し『それじゃ、練習が終わったら職員室に来てね。鍵を閉めるから』と、十以上も年下の教え子の暴言を受け容れた。\k\n　だから、かずさはその日から自分の師となった担任を、そして、彼女にそんな『大人の態度』を取らせた私立学園の経営陣を、ついでに何の関係もないはずの学園教師たち全てを憎むことにした。\k\n　いちいち敵と味方を区別するのが、面倒くさかったから。
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
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1008
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 50
OPERATOR NEGATE
PUSH INT 20
PUSH FLOAT 1.3
PUSH FLOAT 1.3
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 50
PUSH INT 20
PUSH INT 2000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0009>, 5, 1)  ; 　冬馬かずさは、同級生が嫌いだった。\k\n\n　入学式からしばらくが経ち、本格的に授業が始まると、ひとりの男子学生が実習時間のたびに親しげに話し掛けてくるようになった。\k\n　松川貴紀と名乗ったそのクラスメイトは、互いが昔からコンクールで何度も優勝を争ってきた間柄であることを誇らしげに語り、翌月の春の全国コンクールにクラスから二人だけが選ばれたことをさらに誇らしげに語ったが、前半は記憶になく、後半は興味がないかずさは心の底から冷淡に彼を扱うようになった。\k\n　“唯一の好敵手”に思いもよらない反応を返された松川は、かずさのその態度を好意の裏返しであると無理やりに解釈し、更に必死に彼女へとまとわりつくようになった。\k\n　何しろかずさが自分を嫌う理由など、彼にはまるで思いつかなかった。\k\n　『一流の人間は一流を知る』という持論を展開する彼にとって彼女は、そして彼女にとって彼も、ピアノの技術だけではなく、人間的にも共に成長できる唯一のパートナーであることは疑いようがなかったから。
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

@VCALL SetMessageE(RES<0010>, 6, 1)  ; 　そんな一方的な時間がしばらく続き、そして事件は起こった。\k\n　夕暮れの校舎、教室に佇む二人…\k\n　そこに至るまでの過程は二人を除いて誰も知ることはなかったけれど、結果として松川は額に脂汗を垂らしながら股間を押さえてのたうち回り、かずさは自分の足先に残った嫌な感触を払いのけるかのように、周囲の机や椅子を蹴り倒して回っていた。\k\n　ちなみにかずさにとって、拳を使わなかったのはピアニストとしての習性だったけれど、股間を狙ったのには大した意味はなかった。\k\n　それはともかく、その夕暮れの騒動は、学園側の“寛大なる裁定”により、両者お咎めなしの小さな出来事として処理された。\k\n　けれど…と言うかそのせいでと言うか、かずさと音楽科のクラスメート全員との間には、出会って一月も経たないうちに修復不可能な傷が刻まれていた。\k\n　だから、かずさは教室にいる全ての人間を平等に憎むことにした。\k\n　松川を特別憎むのも彼の過剰な自意識を満たすようで嫌だったし、何よりもう彼女に話し掛ける人間なんか、その場には一人もいなかったから。
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
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1032
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

@VCALL SetMessageE(RES<0011>, 7, 1)  ; 　そして一月後、春の全国コンクール。\k\n　入学して二月足らずの一年生の優勝という、掛け値なしに学園始まって以来の快挙に、わざわざ会場まで足を運んでいた学園長や理事長、教頭や学年主任はこぞって一人の女子生徒を賞賛した。\k\n　担任教師は相変わらず卑屈な笑顔を貼りつけたまま上司に追従した。\k\n　同じ大会に出場し、最終選考まで残っていた上級生たちは、俯いたまま機械的に拍手をした。\k\n　そして同級生の全国大会出場を応援に来た有志の一年生は…そんな者はただの一人もいなかった。\k\n　たったの二月で、かずさと周囲の世界とは、そこまでに軋み、裂け、そして隔てられていた。\k\n　それでもかずさは、自分の周りのそんな嫌らしい反応にも何処吹く風で、無表情で表彰状を受け取り、無言で賞賛の声を遮り、誰の静止をも無視し、賞状もトロフィーもその場に置き去りにして一人で会場を後にした。
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

@VCALL SetMessage(RES<0012>, 8, 1)  ; 　その時彼女を満たしていたものは、喜びでも、達成感でも、怒りでも、虚無感ですらもない、まったく何でもない、フラットな感情だった。\k\n　だった、はずだった。\k\n\n
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 9, 0)  ; 　その夜、家に帰り着き、扉を開けてからのことをかずさはあまり覚えていない。\k\n　玄関に置いてあった大きな航空便の小包を開けたことも、包みの中から自分の年齢にそぐわない犬のぬいぐるみが出てきたことも、添えられていたカードに母の名と『誕生日おめでとう』のメッセージが書かれていたことも、コンクールの優勝を飾ったその日は自分の誕生日から一週間も過ぎていたことも、真正面から自分を見つめるぬいぐるみの瞳が妙につぶらだったことも…
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

@VCALL SetMessage(RES<0014>, 10, 1)  ; 　いつの間にか自分が叫び出していたことも、母からの一週間遅れのプレゼントを壁に叩きつけたことも、拾い上げまた叩きつけ引きちぎらんばかりに爪を立て振り回したことも、目の前がぼやけて何も見えなくなっていたことも、自分の心から溢れ出てくる醜い感情を制御できないまま言葉にしてしまっていたことも、自分にはもう何も残っていないと思い込んでしまったことも、何もかも、本当に何もかも…\k\n\n　かずさの優勝は、翌日、新聞の地方欄に写真入りで掲載されるほどには話題になっていた。もちろんその記事の中には、見出しを含め五回も『冬馬曜子』という文字列が踊っていたけれど、もう、そんな記事をかずさが見つけることも、見つけようとすることすらなかった。\k\n\n
PUSH INT 120
CALL MS
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 11, 0)  ; 　冬馬かずさは、ピアノが、嫌いになった。\k\n　それはその時の彼女にとって、世界の全てを憎むのと同じことだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

ARRAY_S RES<0016>  ; 5001
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
