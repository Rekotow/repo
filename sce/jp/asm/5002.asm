!RESOURCE "5002.csv"

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
PUSH INT 5002
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
PUSH INT 4202
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

PUSH INT 210
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0004>, 0, 1)  ; 第二章　夏\k\n\n　八月も中旬に差しかかり、高校野球もベスト８が出揃った頃…\k\n　かずさは日々、クソッタレな夏休みを過ごしていた。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 90
CALL SES
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

PUSH INT 2
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0005>, 1, 0)  ; 　休み前に考えていた一人旅の計画も、結局『めんどくさい』と数秒で廃案になり、今はやりたいこともやらなくてはならないこともなく、冬馬家の広すぎるリビングに独り寝転がり、冷房効率の悪いエアコンをフルパワーでかけ放題にして、適当な時間に眠って適当な時間に起きての怠惰な生活を繰り返している。\k\n　あの、多分倹約家の委員長がこの生活態度と今月の電気代を見たら何と言うだろうと、そんな馬鹿げた妄想までも割り込めるほど、心の底から何も考えることのない日々だった。\k\n　二年前までは、夏休みだろうと平日だろうと一日十時間、毎日休まず続けていたピアノの練習も、今となっては週二回、たったの三、四時間程度にまで規模を縮小しており、とても二十四時間ある自由時間を潰せるレベルではなくなっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0006>, 2, 1)  ; 　それでも七月中はそこそこやることもあった。\k\n　今年の夏休み“も”何もすることがないと早くから見切っていたかずさは、せっかくだから運転免許でも取得しようかと、夏休みの初日から自動車学校に通い始めた。\k\n　最初の予定では順調に行っても一月以上は通う必要があり、本当なら今ごろは路上教習で忙しい日々を過ごしているはず…だったけれど、冬馬かずさという人間は、やっぱり\n『学校』と名がつくところとはとことん相性が悪いらしかった。\k\n　もともと生来のセンスの良さを持つ彼女は、ほとんどの人がクリアできる自動車教習など朝飯前にも程があり、毎回の実習も必ず一発でクリアして、余った時間はさっさと車を降りてしまっていた。\k\n　そんな横暴生徒の身勝手も、専属で担当となった女性教習員の人当たりのよさ…というか気の弱さもあり、しばらくは見過ごされることになる。\k\n　そして第三段階に入って間もないある日、担当の女性教習員が風邪で数日間ダウンしてしまっていたことが、かずさの夏休みの歯車を狂わせていく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0007>, 3, 1)  ; 　代理で就いた中年男性の教習員は、かずさが課題をあっという間にクリアしても、何度も反復練習を要求し、教習時間を残して車を降りることを許さなかった。\k\n　それ自体はどちらかと言うとルール通りで、生徒側に文句を言う筋合いはなかったけれど、それ以外の何もかもが次々とかずさの癇に障っていった。\k\n　運転に問題ないはずなのに何かと難癖をつけてくるその態度。こちらの受け答えの悪さをいちいちあげつらうその口調。そして何よりも我慢できなかったのが、肩や腰や手をやたらと触ってくるその手つき…\k\n　その全ての要素がどこかの学年主任を思わせて、三度目の教習のとき、かずさは残り十分のところでさっさと車を降りてしまった。\k\n　後には助手席でどこかを押さえて悶絶している教習員がいたとかいないとか…はさておき、当然のことながら修了印はもらえず、そしてかずさが二度とその教習所に通うこともなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0008>, 4, 1)  ; 　それでも今、かずさの手元にはちゃんと真新しい運転免許証がある。\k\n　…その一週間後、自主練習と自主学習で一発合格してしまったから。\k\n　実技はともかく、学科で最初から九十点を取ったことをあの教えたがりの委員長が知ったら何と言うだろうと、その時もそんなありえない妄想で少しばかり溜飲を下げた。\k\n　かずさは知っていた。\k\n　自分は、やる気になりさえすれば何でもできると。\k\n　ただ、母に見捨てられたピアノ以外は。\k\n\n
PUSH INT 0
PUSH INT 3902
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

PUSH INT 0
PUSH INT 30
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0009>, 5, 0)  ; 「そろそろ…行くかぁ」\k\n　壁に掛けられた時計が三時を差したのを見ると、かずさはだだっ広いリビングの床から起き上がり、部屋着を脱ぎ始める。\k\n　腰まである長い黒髪が一度巻き上げられ、服が頭から抜けた瞬間、さらさらと裸の背中に流れ落ちる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0010>, 6, 1)  ; 　ブラもつけていない豊かな胸が弾けんばかりに飛び出し、細身の身体とのちょっとしたアンバランスさが絶妙のバランスを醸し出す。\k\n　それから、その裸体をぴんと伸ばしたまま部屋の隅に歩いていき、リビングに畳んで置かれていた衣類の中から下着を取り出し無造作に着けていく。\k\n　もちろんそれはかずさが用意した訳ではなく、週に二度来てくれるヘルパーが洗濯してくれたもの。\k\n　続いて、同じくヘルパーが壁に掛けておいてくれたクリーニング済みの制服をハンガーごと手に取ると、これまた無造作に身体を覆っていく。\k\n「…暑そ」\k\n　あらかた着替えも終わった頃、かずさは陽の照りつける窓の外を見上げて少し眩しそうに目を細める。\k\n　確かに外は暑そうで、実際に三十五度を超えていると天気予報では言っていた。
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
PUSH INT 4202
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

@VCALL SetMessageE(RES<0011>, 7, 1)  ; 　そんな猛暑の中、ちゃんと校則に従い制服に着替え、行っても出席もつけてくれない夏休み中の学園に、かずさは今から向かうつもりだった。\k\n　それは明らかに、彼女にとって面倒で、無駄で、疲れる行為であるのは間違いなかったのに…\k\n「めんどくさ」\k\n　しかもそのことを口に出してまで愚痴っているのに、かずさは惰眠を貪っていた今までよりも、ほんの少しだけ機嫌が良さそうだった。\k\n　なぜなら、今日が火曜日だったから。\k\n　それに、いつもよりほんの少しだけ、いいことがあったから。
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 3001
PUSH INT 30
PUSH INT 1
PUSH INT 100
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 1007
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

PUSH INT 1
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessage(RES<0012>, 8, 1)  ; 　夏休み中の校内は、静まり返るでもなく騒がしくもない、そんな中途半端な喧騒に包まれていた。\k\n　校庭では、部活に励む運動部員たちがそろそろ流し気味に疲れた声を張り上げ、逆に校舎の方からは、少し気温が落ちてきたこれからが本番とばかりに、熱の入った音が響いてきていた。\k\n　生まれてこの方、運動部とは縁のないかずさは当然のようにさっさと校舎の中に逃げ込むと、歩きなれた階段を三階へと上っていく。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 1
PUSH INT 1006
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 9, 0)  ; 　そして三階に辿り着くと、特別教室の並ぶ西側へと廊下を進み、その一番奥の教室…第二音楽室を目指す。\k\n　せっかくの防音装置も窓を全開にしていれば意味はなく、一つ手前の第一音楽室からは、今日はギターとベースとドラムが耳に痛いくらいに響いてくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0014>, 10, 1)  ; 　けれどかずさはその大音響にも反応することなく、周囲を用心深く見回し廊下に自分以外誰もいないことを確認すると、第二音楽室の鍵を開け素早く中に滑り込む。\k\n
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

PUSH INT 0
PUSH INT 8198
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
PUSH INT 1001
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 11, 0)  ; 　一連の流れるような動作はそれに留まらず、今度はすぐに錠を掛け、昼間にもかかわらずカーテンで締めきられ薄暗い部屋の電気をつける。\k\n　『第二音楽室の主』の正体は、今までずっと、こうして隠匿されていた。\k\n\n　締め切られていた教室内はいつも通りあまりにも蒸し暑く、ほんの数秒で全身の毛穴が一気に開くような感覚に襲われる。\k\n　かずさはエアコンのリモコンを手に取ると、家と同様、電気代やエコのことなど何も考えずに風力を最大に、設定温度を最低にしてスイッチを入れる。\k\n　そこからようやく、本来のお目当てのはずのピアノの前に座る。\k\n　コンクールの時にやるように、お尻を突き出すように深く椅子に静め、ぴんと背筋を伸ばす。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0016>, 12, 1)  ; 　けれど、すぐには弾き出したりしなかった。\k\n　鍵盤の上に指を置き、じっと虚空を見つめ、隣の教室の演奏に耳を傾ける。\k\n　別に精神を集中させている訳でも、汗が引くのを待っている訳でもない。\k\n　待っているのは別のもの。\k\n　隣のバンドの練習が終わるはずの午後五時。\k\n\n　力が入りすぎていて他の音を殺し気味なドラム。\k\n　地味ながらいつも安定した音を出すベース。\k\n　ちょっとナルシスト気味なギター。\k\n　経験の浅そうなキーボード。\k\n　そして今日はいないけど、やっぱりいつも休みがちな女性ボーカル。\k\n　多分、軽音楽部か、有志が集まって結成したバンド。\k\n　文化系の祭典である秋の峰城大付属祭のステージに上がるため、こうして夏休みの間も練習に明け暮れているに違いない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0017>, 13, 1)  ; 　とはいえかずさがいつまで経っても弾き出さないのは、彼らの邪魔をしないためでも、彼らの音を堪能するためでもない。\k\n　そもそも、この程度の演奏を聴くのはかずさの耳にとっては時間の無駄だった。\k\n　つまり、かずさが弾き出さないのは…\k\n　家にだって立派なピアノがあるのに、この暑いさなか、わざわざ電車を使ってまでこの場所へとやって来たのは…\k\n　要するに、もっと酷い時間の無駄を満喫するためだった。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
CALL MS
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

@VCALL SetMessage(RES<0018>, 14, 0)  ; 　教室の時計が五時を指してから数分で、予想通り隣の演奏が止まった。\k\n「さて、と」\k\n　と、その終わりの余韻に被せるように、かずさのピアノが静かに始まる。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1005
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

PUSH INT 150
PUSH INT 60
PUSH INT 6500
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 9700
PUSH INT 0
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 180
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 15, 0)  ; 　最初は試運転も兼ねて小さく、遅く。\k\n　隣の彼らにも、校庭の運動部員たちにも、しばらく前から鳴っていたんだと、ただバンドの音にかき消されていたんだと誤解させるくらいにさり気なく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0020>, 16, 1)  ; 　かずさは知っていた。\k\n　火曜と木曜の午後が、彼らの練習時間であることを。\k\n　軽音楽部か、有志が集まって結成したバンド。\k\n　そこそこの腕のメンバーが集まって、三時から五時まで二時間の練習をして、適当に後片づけをして、教室を出て行くのが五時半くらい。\k\n　そして、それからは…\k\n「………へたくそ」\k\n\n　ピアノの音色の間隙を縫って『天国への階段』のギターソロが風に乗って流れてきた。\k\n\n　そう、かずさは知っていた。\k\n　というか、最近になって法則性を割り出した。\k\n　火曜と木曜の午後…\k\n　彼らの練習が終わったあとに、例の『ギター君』の練習が始まることを。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0021>, 17, 1)  ; 　この音の主は多分、あのバンドのメンバーなのだろう。\k\n　けれど全体練習の中に、こんな音色は混じっていない。\k\n　バンドの中のギターは、ほんの少し陶酔気味だけど、それでも割とまともに聴けるレベルに仕上がっていて、少なくともこのギターとは格が違う。\k\n　つまりこの『ギター君』は、きっとあのバンドの中ではセカンドギターで、補欠で、使い走りで、便利屋なのだろう。\k\n　そして周りとの実力差を埋めるため、こうして他のメンバーが帰った後に居残って個人練習に勤しんでいる。\k\n　地道で、真面目で、謙虚で、努力家で…\k\n　だからかずさは、このヘタクソな音の主を『ギター君』と名付け、ひそかに好感…は、やっぱり意地でも持ちたくなかった。\k\n　そういう『頑張ることが美徳』みたいな態度が何故か激烈に気に入らなかったから。\k\n　かずさは、何事も結果が全てだと信じている。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0022>, 18, 1)  ; 　それが努力の上にやっと辿り着いたものでも、才能の上にあぐらをかいて知らないうちにそうなっていたものでも関係ない。\k\n　関係なく、努力したのに届かなかったものよりも遥かに価値があると。\k\n\n　ギターの音色が『精霊流し』に変わった。\k\n\n　だからかずさは、今のヘタクソなこの音に何の価値も見出していない。\k\n　ただ、この絶妙な微妙さ加減が心地良いだけ。\k\n　自らの優越感が満たされるのが気持ちいいだけ。\k\n　嫌いじゃない、だけ…\k\n「あ～あ…」\k\n　ギターの音が外れていくのにため息をつきつつ、自分のピアノはつかず離れず引きずられず、リズムも音も常に正確に刻んでいく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0023>, 19, 1)  ; 　ギターの音色を聴くだけ。\k\n　勝手にピアノを弾くだけ。\k\n　相手が隣の教室にいながら、お互い何の接点も持たない。\k\n\n　ギターの音色が、これなら弾けるぞとばかりに『ホワイトアルバム』に変わった。\k\n\n　かずさは、隣の『ギター君』のことをこれ以上知る気はなかった。\k\n　だって、同級生とさえ接点が持てない自分が、見ず知らずの相手と会話なんか成立するわけがない。\k\n　もし顔を合わせてしまったら、来週からこの音が届かなくなってしまうかもしれない。\k\n　だから今まで通り第二音楽室を締め切り、エアコンを全開にして、けれど窓を開けるという冷房効率と防音効率の悪い環境でただピアノを弾き続け、ただ、ヘタクソなギターを聴き続ける。
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

PUSH INT 0
PUSH INT 8059
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 9900
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH INT 10000
PUSH INT 10000
PUSH INT 10000
PUSH INT 10000
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 5
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 10000
PUSH INT 10000
PUSH INT 10000
PUSH INT 10000
PUSH INT 0
PUSH INT 0
CALL B2
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

PUSH INT 10
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0024>, 20, 1)  ; 　地の底に響くような爆音とともに、星空に新たな星が生まれては一瞬で消えていく。\k\n　冬馬家の二階のバルコニーは、そんな年に一度のビッグバン…隣の市の夏祭りの花火大会を思う存分眺められる特等席だった。\k\n「…怒ってる？」\k\n「今さらなにを気にしてるんだ…」\k\n　けれど今、バルコニーから夜空を見上げているかずさは、そんな空の賑やかさとは対照的な声をようやく振り絞った。\k\n　要するに、いつも以上に重く、暗い声を。\k\n「だから謝ってるじゃない。交渉ごとが思ったより長引いちゃって、<R日本|そっち>に寄れる時間が作れなかったのよ」\k\n「あ、そ」\k\n　そして、かずさが耳に当てている携帯からはちょっと言い訳がましい、けれどこちらはそれほど重くも暗くもない声が流れてくる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0025>, 21, 1)  ; 　その相手側の軽い態度が、かずさの声をますます重く沈める悪循環に陥らせていることを、当の相手は気づいているのだろうか。\k\n「ねぇ、ちゃんと聞いてる？」\k\n「聞いてるし怒ってない。もうそんなに子供じゃない」\k\n　冬馬曜子。かずさの実の母。唯一の肉親。\k\n　一人娘を日本に残し、単身ヨーロッパに移住してしまった、今のかずさを作り上げた全ての元凶。\k\n「…それにもともと、信じてなんかいなかった。あんたの言うことなんか」\k\n　期待なんか、したらいけないってわかっていた。\k\n　期待するほど大したことじゃないと思っていた。\k\n「あ、それとお土産送っておいたから。明日には届くと思うわ」\k\n「そりゃ、どうも」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0026>, 22, 1)  ; 　『中国公演の帰りに一日だけ日本に寄るから、食事でもしない？』\k\n　そんな、親の台詞とも思えない軽い調子の約束は、やっぱりその軽さのままあっさりとすっぽかされた。\k\n　これで、今年に入って三度目の約束違反。\k\n　…裏を返せば、今年に入って一度も果たされていない約束。\k\n「ちゃんと学校行ってる？」\k\n「夏休みだ、今」\k\n　もう、一年半も会っていない。\k\n　顔だって正確に思い出せるか自信がない。\k\n「そっか…ならパリに遊びに来る？　わたしは次のツアーの準備があるから相手できないけど、スタッフの誰かに案内させるわよ？」\k\n「………ご免だね。こっちは忙しいんだ。あんたと同じくらい」\k\n　けれど、会えない方が良かったのかもしれない。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0027>, 23, 1)  ; 　…もし今会ってしまったら、自分がどんな物凄い言葉を実の母親に浴びせることになるのか、かずさには予想もできなかったから。\k\n「そう、それじゃそろそろ切るわね。やっと搭乗手続きも始まったみたいだし」\k\n「じゃあな」\k\n「あ、かずさ、それであなた…」\k\n「っ！」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 8059
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
PUSH INT 8059
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 15
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 2
PUSH INT 8059
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 5
PUSH INT 207
PUSH INT 0
PUSH INT 0
PUSH INT 200
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
PUSH FLOAT 1
PUSH FLOAT 1
PUSH FLOAT 0
PUSH INT 1
CALL B2
OPERATOR POP

PUSH INT 5
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 6
PUSH INT 411
PUSH INT 0
PUSH INT 0
PUSH INT 180
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 10
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
PUSH FLOAT 1
PUSH FLOAT 1
PUSH FLOAT 0
PUSH INT 1
CALL B2
OPERATOR POP

PUSH INT 2
PUSH INT 0
CALL SEW
OPERATOR POP

@VCALL SetMessageE(RES<0028>, 24, 0)  ; 　フィナーレの十連発花火が一斉に空で爆ぜたのと、バルコニーの床に叩きつけられた携帯の破片が飛び散ったのは、ほぼ同時だった。\k\n　けれどもう、壊れても構わなかった。\k\n　だって、この電話に掛けてくるのは、たった今約束をすっぽかして、またしばらく日本に戻ってこない人だけだから。\k\n「は、はは…」\k\n　大空の花火の灯りに照らされたかずさの横顔は、昼間の、ほんの少し上機嫌な表情とは、色んな意味で乖離しすぎていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0029>, 25, 1)  ; 　期待なんか、してなかった。\k\n　期待するほど大したことじゃなかった。\k\n「どうでもいい…」\k\n　なんて、そんな簡単に割り切れるはずがなかった。\k\n　世界は未だ、かずさを傷つけるためだけに存在していた。\k\n　少なくとも、かずさは再びそう信じられるようになった。\k\n　週二回の、あのヘタクソなギターも。\k\n　たった今まで、夜空を明るく彩っていた花火も。\k\n　ただ、今の絶望の落差を大きくするためだけに、神様がかずさに遣わした試練…というよりも、遊び心なのではないだろうかと。\k\n「本当、どうでもいいよ…」\k\n　馬鹿みたいだと思った。\k\n　今日一日、ほんの少しだけ浮かれていた自分が、心の底から馬鹿みたいだと思った。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 26, 1)  ; 　冬馬かずさは、空が嫌いだった。\k\n　花火が終わったあとの、急に寂しくなってしまう星空が大嫌いだった。\k\n　委員長のお節介も。ギター君のヘタクソなプレイも。自分の学習能力のなさも。\k\n　涙が止まらなくなるほどに、大大大嫌いだった。
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
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 1
PUSH INT 120
CALL SES
OPERATOR POP

PUSH INT 2
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

@VCALL SetMessage(RES<0031>, 27, 1)  ; 　二日後、木曜日。\k\n　かずさは、いつもの火、木と同じように制服に着替え家を出た。\k\n　けれどその時間は、いつもの火、木とは違い、昼前の暑い陽射しが降り注ぐ頃だった。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 3104
PUSH INT 60
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 1024
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 30
OPERATOR NEGATE
PUSH INT 10
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 30
PUSH INT 10
PUSH INT 1000
PUSH INT 0
PUSH INT 0
CALL S
OPERATOR POP

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0032>, 28, 0)  ; 　たった十分そこそこの電車の中、何度も眠そうに目をこすり、何度も舟を漕ぎ、危うく南末次駅を乗り過ごしてしまいそうになった。\k\n　二日前の夜、曜子からの電話があって以降、一歩も外に出なかったのに一睡もしていなかったせいで。\k\n　かずさは、あれからずっと三十時間以上も眠っていなかった。\k\n　最初は、色々と頭の中で渦巻くネガティブな気持ちに邪魔されて、目を閉じてもまったく眠気が襲ってこなかった。\k\n　目が冴えてしまっているのに何をする気も起こらず、誰もいないだだっ広い部屋の中で、思想の迷路に入り込んでしまい、まる一日抜け出せずにいた。\k\n　そして、やっとそんな魂の牢獄から抜け出せたのか、それとも単に活動限界が来たのか、昨夜から猛烈な眠気が襲ってきてくれた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0033>, 29, 1)  ; 　なのにかずさは、今度は明確な意志でその睡眠欲を拒絶してしまった。\k\n「あち…」\k\n
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

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 3004
PUSH INT 30
PUSH INT 1
PUSH INT 60
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

@VCALL SetMessage(RES<0034>, 30, 0)  ; 　家を出た時から気づいてはいたけれど、南末次の駅に降り立つと、その陽射しはいつもと比べても際立っていた。\k\n　二日前と違い、そろそろ暑さのピークに差し掛かる時間だったから。\k\n　二徹空けの引きこもりの身体には、この暑さを受け止める体温調節は無理だったから。\k\n
PUSH INT 0
PUSH INT 90
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0035>, 31, 0)  ; 　そして何より、天気予報によれば今日は今年一番の暑さになるとのことだったから…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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

@VCALL SetMessageE(RES<0036>, 32, 0)  ; 　やっとのことで付属に辿り着いたときには既に十二時を超えていた。\k\n　いつもは運動部の邪魔にならないよう隅を遠回りしないといけない校庭も、今は昼休みで誰もいないのをいいことに堂々と一直線に突っ切り、下駄箱に駆け込むと膝に手をついて肩で息をする。\k\n　もう五分この灼熱の屋外を歩かされていたら日射病になっていたかもしれないと思えるくらい体力の限界だった。
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

@VCALL SetMessage(RES<0037>, 33, 1)  ; 　そのまましばらく下駄箱で息を整え、冷水器のペダルを踏むと、それは休憩に入った運動部員にとっくに荒らされていたらしく、普通の水道水と変わらない温さが喉に広がる。\k\n　ひと口目で思いっきりしかめ面になりながらも、背に腹は代えられず、その生温かい水をがぶ飲みすると、続いてポケットに常備している飴を五、六個まとめて口に放り込み、ばりばり噛み砕く。\k\n　そうやって、ほぼ一日半ぶりの水分とエネルギーを補給すると、やっとかずさは両脚を引きずるように三階へと向かい始める。\k\n　実は、校舎に辿り着いた時点でもう階段も上がれないほど消耗していたことに、脳だけが気づいていた。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 90
CALL MS
OPERATOR POP

PUSH INT 1
PUSH INT 1006
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

@VCALL SetMessage(RES<0038>, 34, 0)  ; 「ぁ…」\k\n
PUSH INT 1
PUSH INT 9723
PUSH INT 0
PUSH INT 1
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0039>, 35, 0)  ; 　一歩、また一歩、ひと休みしてもう一歩と、五十段にも満たない階段を十分近くもかけて上り、やっと三階の廊下に降り立ったとき…\k\n　かずさの耳に、今までの苦労を吹き飛ばすほどにキーの外れた音が届いた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0040>, 36, 1)  ; 　それは、いつもの彼女の目的地の一つ前から。\k\n　廊下の一番西の端から一つだけ東側の教室から。\k\n　要するに、第一音楽室から聴こえてくる、ヘタクソなギター。\k\n「………」\k\n　その調子外れの音をゆっくりと耳に馴染ませると、かずさはもう一度全身に力を込め、廊下の床を踏みしめる。\k\n
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
PUSH INT 8249
PUSH INT 0
PUSH INT 1
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 3000
PUSH INT 0
PUSH INT 640
PUSH INT 360
PUSH INT 0
CALL Z
OPERATOR POP

PUSH INT 80
PUSH INT 0
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

@VCALL SetMessageE(RES<0041>, 37, 0)  ; 　もちろん、第二音楽室に向かって、ではない。\k\n　さっきまで全身から噴き出していた汗は、いつの間にか引いている。\k\n　紅潮していた顔は普段どおりの色を取り戻し。\k\n　荒かった息も完璧に整い。\k\n　いつもの『鋭利な刃物のような冬馬かずさ』の出来上がり。\k\n\n　かずさにはわかっていた。\k\n　自分が今日、いつもより早く家を出た理由が。
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

@VCALL SetMessage(RES<0042>, 38, 1)  ; 　そこにいるって、信じていたから。\k\n　だって、バンド練習が終わると、いつも『ギター君』は独りで復習している。\k\n　そして彼なら、復習だけでなく絶対に予習も欠かさないはずだった。\k\n　なぜなら…\k\n
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

PUSH INT 1
PUSH INT 255
PUSH INT 30
CALL SEV
OPERATOR POP

@VCALL SetMessage(RES<0043>, 39, 0)  ; 「北原…？」\k\n
PUSH INT 1
PUSH INT 10
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0044>, 40, 0)  ; 「うお…っと」\k\n　振り向いたその顔に、見覚えがありすぎるから。\k\n\n
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
PUSH INT 1004
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

PUSH INT 16
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0045>, 41, 0)  ; 「…何やってんの？　夏休みに、帰宅部が」\k\n「見てわかんないか？」\k\n　ギター君…北原春希は、かずさの顔を見て一瞬驚いたような表情を浮かべたけれど、すぐにぷいと顔を背け、自らの指先と弦に視線を戻す。\k\n　その態度は、思いもよらない相手に会えて照れているとも、終業式での別れ際の出来事にわだかまりを抱えているとも取れて…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 42, 1)  ; 「ヘタクソだってのはとてもわかるけど…」\k\n　だからかずさは、相手の自分に対する態度の意味を探るため、不器用にも挑発を重ねる。\k\n「冬馬も帰宅部だったよなぁ？　なんで夏休みにわざわざ学校来てんだよ！」\k\n「核心をつかれた瞬間にキレるなんて、なんて小者…」\k\n　…相手の一つ一つの反応に、ほんのちょっとずつ傷つきながらも。\k\n「今年から始めたばかりなんだよ。ちょっとくらい下手でも仕方ないだろ」\k\n「だって…これ、コード押さえてるだけでしょ？　それでミスする理由が理解できない」\k\n「やったことない奴はみんなそう言うんだよ…」\k\n「ふぅん…」\k\n「冬馬さ…そうやって、人が一生懸命努力してるのを鼻で笑う傾向があるけどさ…そういうの、改めた方がいい」\k\n「努力、ねぇ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0047>, 43, 1)  ; 「人間、何だかんだ言って、汗かいてる奴が一番偉いと思うんだ。いや、体使うのも頭使うのも同じ事だけど」\k\n「ふぅん」\k\n　彼の言うことは、いちいちかずさには面白味に欠けていた。\k\n　汗をかく奴なんかよりも、結果を出す奴が一番偉いと思っているから。\k\n　『やったことない奴』と言われるほど、楽器と疎遠になったことなどないから。\k\n　『ちょっとくらい』の下手さ加減じゃないから。\k\n「で、今日はどうしたんだ？　補習とかだったら、後で少しは見てやっても…」\k\n「貸して」\k\n「え…？」\k\n　『今年から始めた』なんて、わかってるから。\k\n「それ、貸してみて」\k\n「いや、けど…」\k\n　だって、彼がギターを始めた頃から、ずっと聴いていんだたから…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0048>, 44, 1)  ; 「ほんのちょっとだけ」\k\n「冬馬…？」\k\n　こちらから手を差し伸べると、北原はやはり戸惑うような反応を返しながらも、ゆっくりと自分のギターを差し出す。\k\n　かずさは無造作に受け取ると、椅子を引き、ピアノの時と同じように深く腰掛けると、ギターの弦に自分の指を絡めていく。\k\n「あ…」\k\n　さっきまで、彼が弾いていたのとまったく同じ曲を。\k\n　それも、まるで別の曲みたいに。\k\n　…彼に、見せつけるために。\k\n「あ、あ…」\k\n　なぜなら、これがかずさの、今日の目的の全てだったから。
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

@VCALL SetMessageE(RES<0049>, 45, 1)  ; 　補習なんかじゃない。\k\n　今日だけは、ピアノを弾きにきた訳でもない。\k\n　ただ、会いにきただけだった。\k\n　ギター君で、委員長な目の前の男の子に。\k\n\n　かずさは、自分にも他人にも、ずっと嘘をついていた。\k\n　『ギター君』の正体なんて、実は初めから知っていた。\k\n　その音色の拙さも真面目さも融通の利かなさも、間違いなく彼のものだとわかっていた。\k\n　だって、初めて彼と出会い、彼に冷たい言葉の刃を突き立てた日の数日後…\k\n　初めて彼の音を聴き、その酷い演奏に呆れ返ったあの春の日…\k\n　夕闇の第一音楽室から出て行く後ろ姿が、あの口うるさい委員長のものだって気づいてしまっていたのだから。
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
PUSH INT 1004
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0050>, 46, 1)  ; 「………」\k\n　『ギター君』が、息を呑んでいる。\k\n　『いいんちょ君』が、かずさの手元と顔を交互に見つめている。\k\n　流れるように動き弦を操る指先の妙を。\k\n　教室のかずさとは全然違う、真剣で、どこか楽しそうな表情を。\k\n\n　それは、かずさがいつも、特別な日にしか見せない表情。\k\n　例えば、委員長の干渉に無視を決め込んだ日。\k\n　例えば、北原の余計な一言に罵詈雑言を浴びせた日。\k\n　例えば、隣席のクラスメイトの馴れ馴れしい態度に冷たい視線で応えた日…\k\n　そんな心にわだかまりを残してしまった日には、いつもこの教室の下手くそなギターの音を、隣の教室で待っていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 47, 1)  ; 　もし願いが叶いギターの音色が聞こえてきたら、自分のピアノをその音に被せ、あるいは向こうが勝手に被せてくるのを許し、二つの音で会話する。\k\n　これは、その時にかずさがしていた表情。\k\n　一方的に仲直りしたと決めつけて、勝手に安心していた時の表情。\k\n\n「ありがと」\k\n「………」\k\n　一通り流し終わりギターを差し出すと、元の持ち主は完全に硬直していた。\k\n「…受け取らないの？」\k\n「っ…」\k\n　いや、ほんの少しだけ動いていた。\k\n「北原…？　あんた、泣いて…」\k\n「………ごめん。俺をこれ以上惨めな気持ちにさせないでくれ」\k\n　全身が、小刻みに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0052>, 48, 1)  ; 「………痛かった？」\k\n「えぐられた…俺の才能のなさに絶望した…」\k\n「才能じゃない。練習。あんたの言うとおり、流した汗の量」\k\n「え…？」\k\n　その、まるで自分が発したかのような説教臭い言葉に、北原ははっと顔を上げる。\k\n「短い期間でも本気で練習すればこれくらいできる。あんた偉そうなこと言ってるけど努力不足」\k\n「そんな…これでも毎日２時間は…」\k\n　けれど、自身の経験から来る重みを備えたその言葉も、今回のかずさに関しては単なるカッコつけの大嘘だった。\k\n　何しろ今披露してみせたギターに関しては、『短い期間』というのが本当に短すぎてあまりにも説得力に欠けてしまっているから。\k\n「こういうのって普通、一日十時間練習するもの」\k\n　確かに、一日十時間練習した。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0053>, 49, 1)  ; 「いや、それプロになれるから」\k\n「…別にならなくてもいい」\k\n　…昨夜だけとはいえ、一日十時間であることは間違いない。\k\n「すげぇなしかし…冬馬、お前ギターやってるのか？」\k\n「やってない。ちょっと前に数日かじってみただけ」\k\n「今自分が言ったいいことを全否定するなよ…」\k\n　なんとかノーミスで弾き終わった後、背中に回した手で小さくガッツポーズを作っていたのは、どうやら彼に見られずに済んでいたらしかった。\k\n「さ、もう一度初めからやってみる。ちょっとしたコツくらいなら教えられるから」\k\n「…いいのか？」\k\n「どうせ暇だし」\k\n「なんで夏休みにわざわざ学校…」\k\n「早く弾け」\k\n「あ、ああ…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1004
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 150
OPERATOR NEGATE
PUSH INT 10
PUSH FLOAT 1.5
PUSH FLOAT 1.5
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 150
PUSH INT 10
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

@VCALL SetMessageE(RES<0054>, 50, 1)  ; 　かずさに促され、もう一度北原が弦に指をかける。\k\n　一度大きく深呼吸して、しっかりと手元を見つめると、もう一度テンポ悪くリズムを刻み始める。\k\n　そこから零れ出る音は、やはりまるで成長の跡を見せてはいなかった。\k\n「最初はゆっくりでいいから」\k\n　それどころか、出だしからトチっていたりした。\k\n「早く弾けと言ったりゆっくりでいいと言ったり」\k\n「その程度のニュアンスの違い、成績優秀な委員長様なら正しく理解できるんじゃない？」\k\n「…当然だろ」\k\n「ならゆっくりと」\k\n「ちぇっ…」\k\n　そして今度は、さっきよりもかなり遅く、けれど確実に音を刻む。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0055>, 51, 1)  ; 「………」\k\n　それでも、そろそろ始めて半年になろうかというそのギターは、かずさの一夜漬けと比べても三枚くらい落ちるレベルのままだった。\k\n「………」\k\n　けど、それはある意味仕方ないのかもしれない。\k\n　生まれた時から音楽の神に愛されていたかずさが、たった十時間とはいえ極限まで集中して祈りを捧げたのだから。\k\n　それも、初めてピアノに触れた日のようなとんでもないモチベーションで。\k\n「そいや…」\k\n「今度はなに？」\k\n　ただ、目の前の委員長との会話のきっかけを作るためだけに。\k\n「冬馬から俺に話しかけたの、ひょっとして初めてじゃないか？」\k\n「………気のせいでしょ」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0056>, 52, 1)  ; 　それほどまでに、今は人に触れていたかった。\k\n　もちろん誰でもいい訳じゃない。\k\n　それどころか、そんな相手は一人しかあり得ない。\k\n　消去法だけでなく、選択式でも…\k\n「ありがとな」\k\n「ヘタクソ」\k\n　もう、認めるしかなかった。\k\n　今のかずさには、目の前の、決して自分を孤独にはしてくれない、このおせっかいな委員長がどうしても必要なんだということを。
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

PUSH INT 2
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 80
PUSH INT 30
PUSH FLOAT 1.2
PUSH FLOAT 1.2
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 80
OPERATOR NEGATE
PUSH INT 20
PUSH INT 4000
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

@VCALL SetMessageE(RES<0057>, 53, 1)  ; 　夜になっても、やっぱりかずさは眠れないままだった。\k\n　身体の疲れはピークを通り越して一歩も歩けなくなってしまい、付属から家までタクシーで帰ってきてそのまま着替えもせずベッドに倒れこんだくせに、脳の方が頑なに睡魔の誘惑を拒絶する。\k\n　考えることが多すぎて、ある程度の方向性がまとまるまではとても眠れそうにない。\k\n　―まずいな、あれは。\k\n　とはいえ、その多すぎる懸案事項の九割以上が三か月後の学園祭のことだったけれど。\k\n\n　結局、かずさが北原にギターを教えたのは、ほんの一時間程度だった。\k\n　向こうは一日中でも教えを請う気満々だったけれど、こっちの方が鬱陶しげに相手の質問を途中で打ち切ってさっさと帰ってしまった。\k\n　何しろ向こうは完全に忘れていたけれどこっちは覚えていたから。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0058>, 54, 1)  ; 　そのままレッスンを続けていれば、彼のバンドのメンバーが練習のためにやってきて、その異様な光景を目撃してしまうということを。\k\n　―どうやったら人並みに持っていけるんだよあの馬鹿を。\k\n　何十回目になるかわからない寝返りを打ちながら、かずさはため息混じりに今日初めて知った衝撃の事実を反芻する。\k\n　世の中には、自分の思い通りに手指を操れない哀れな人間がいるのだと…\k\n　北原…ギター君の演奏のパターンはなんとなくわかった。\k\n　要するに彼は、頭で考えていることにしか指が反応してくれない上に、決して思考速度が速いわけじゃなかった。\k\n　普段の優等生的な言動も思考も成績も熟考を重ねた上でのもので、そこに条件反射の割り込む余地はなかった。\k\n　要するに、頭はいいけどカンは鈍かった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0059>, 55, 1)  ; 　最初のうちは、いつも上から目線の（とかずさは思っている）委員長を完全に見下せるのが痛快で、その優越感のままに手取り足取り教えていたけれど、やがて自分の中にもどかしい気持ちが湧き上がってくるのを止められなくなっていた。\k\n\n　―どうしてうまくいかないんだろう。\k\n　　こいつは、こんなに頑張ってるのに。\k\n　　勉強なら、努力なら、誰にも負けない奴なのに…\k\n　　なのに神様は、なんで報いてやらないんだろう。\k\n\n　かずさは、自分が何もわかっていなかったことを思い知らされた。\k\n　二人の間には、今まで生きてきた十数年の間に培われた、埋めようのない能力の差が横たわっていることを。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0060>, 56, 1)  ; 　彼が毎日十時間机に向かっている間に、かずさは毎日十時間ピアノと向き合ってきた。\k\n　彼が十数年間勉強している間に、かずさは十数年間楽器に触れていた。\k\n　だから、彼はかずさに追いつけない。かずさは彼の背中すら捕らえられない。\k\n　確かに、努力は結果に結びつく。\k\n　かずさが北原に言い放った『努力不足』も、その意味では間違いじゃない。\k\n　けれどかずさの一夜漬けギターは、十年以上、毎日十時間のピアノの下地がある。\k\n　そして彼の半年漬けギターを支える音楽的素養は何もない。\k\n　今まで何ごともセンスで片づけていたせいで論理的思考の素養がないかずさは、今までそんな簡単なことにも気づけなかった。\k\n　だからと言って、今までの十数年を変えられる訳じゃない。\k\n　彼が、そしてかずさが変えられるのは、これからの三か月の方だけだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0061>, 57, 1)  ; 　―なら、どうする？\k\n　　どうすれば、あいつは弾けるようになるんだ…？\k\n\n　だからかずさは考える。\k\n　今までの十数年間で一度もなかったほどに、脳を酷使する。\k\n　それは、北原にやらせれば食後の運動程度の思索でしかなかったのかもしれないけれど。彼なら数秒で思いつく解決策なのかもしれないけれど。\k\n　それでもかずさは、自分で一生懸命考えた。\k\n　ヘタクソなギターを、うまくないギターに変える方法を。\k\n　もし何かの間違いで、補欠の彼が文化祭のステージに上がってしまったとしても、せめて観客に笑われずに終わらせてやれる方法を。\k\n　考えて、悩んで、のたうち回って…\k\n　いつしかピアノのことも、母親のことも、そして自分のことも…\k\n　何もかも忘れ、彼のことだけを考えていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 150
CALL MS
OPERATOR POP

PUSH INT 0
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 0
PUSH INT 0
PUSH INT 150
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

PUSH INT 7
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0062>, 58, 1)  ; 　八月も、もう下旬。\k\n　高校野球は終わり、お盆も、海水浴シーズンもとっくに過ぎ去ってしまった頃…\k\n　かずさは、目が回るほど忙しい時間を過ごしていた。\k\n　あの日…先々週の木曜日以来、かずさの夏休みはなくなった。\k\n　ここ数日、毎日のように重い楽器を抱えては校舎入りし、けれどもちろん補習にも部活にも参加することなく、そのまま一日中第二音楽室に閉じこもる女子生徒のことは、運動部員たちの間で少しずつ噂になりかけていた。\k\n　先週末にはいきなり配送業者のトラックが学園の敷地に乗りつけ、大量の機材を運び込もうとして何も知らない学園側とトラブルになりかけたこともあった。\k\n　そんなこんなで、その用途の割にピアノしか楽器がなく殺風景だった第二音楽室は、いつの間にかとても賑やかなことになっていた。\k\n　ドラムセットにベースにサックス、それ以外にも様々な楽器が増えていて、その品揃えは隣の第一音楽室にも引けを取らないくらいで。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0063>, 59, 1)  ; 　しかも見る人が見れば、それらの楽器は、学校の備品というには一桁ほど値段の違うものばかりだということに気づいたかもしれない。\k\n　それらは全て、冬馬家の私設スタジオという、もはや一般人には何を言っているんだかわからないレベルの物置きから運び込まれたものだった。\k\n\n
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

@VCALL SetMessage(RES<0064>, 60, 0)  ; 　そして今日、今月最後の火曜の午後…\k\n　すっかり様変わりした第二音楽室に、いつも通り椅子に深く腰掛けているかずさの姿があった。\k\n　鍵盤の上に指を置き、じっと虚空を見つめ、じっと動かずに。\k\n　精神を集中させて、けれどリラックスして、待っている。\k\n　だって、そろそろ“予習”の時間だから…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
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

@VCALL SetMessageE(RES<0065>, 61, 0)  ; 　静まり返った廊下から、開いた窓から、ギターソロが風に乗って流れてきた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0066>, 62, 1)  ; 「未だに『コンドルは飛んでいく』かよ…」\k\n　その、今さら初心者向けの選曲にほんの少し目眩を覚えながらも、かずさは待ち望んでいたものがとうとう来た興奮に身を引き締める。\k\n　虚空を見つめていた目を鍵盤に下ろし、軽く腕を上げ、一つ深呼吸をして…\k\n\n　第二音楽室から、ピアノの伴奏を風に乗せて流していく。\k\n\n　もちろん『コンドルは飛んでいく』。\k\n　今までみたいに、ただ音を寄り添わせるのではなく、明確に重ねる。\k\n　相手の音を放っておかない。\k\n\n　と、ギターソロが止まる。\k\n　一拍おいて、ピアノの伴奏も止まる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 63, 1)  ; 　きっと今ごろ、東隣の教室では誰かが窓から西隣の教室を覗き込んで怪訝な表情をしているんだろう。\k\n　けれどこちらの窓は分厚いカーテンに覆われて中を伺うこともできず、彼は首を捻ったままふたたびギターを手に抱え…\k\n\n　ふたたび、『コンドルは飛んでいく』のギターソロが流れ出す。\k\n　一拍おいて、伴奏が始まる。\k\n　まるで、どこかの委員長のようにお節介なピアノの音が、ギターを導く。\k\n\n　今度は、ギターは演奏を止めなかった。\k\n　ただ自分の腕に任せ、テンポも音程もまちまちに、作曲者に顔向けができないくらいに拙いギターを弾き続ける。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0068>, 64, 1)  ; 　だからピアノは…かずさは、音で説教する。\k\n　作曲者の意図を、この曲の本当の素晴らしさを、ギターの数々の間違いを。\k\n　言葉を使わずに、一つ一つ叩き込んでいく。\k\n　ひたすら正しいテンポで、正しい音程で。\k\n　相手が先行すれば引き戻し、遅れれば待ち。\k\n　上に外れれば下に、下に外れれば上に、まるっきり外れれば正解に導き。\k\n　そうやって、相手がついてくるまで我慢強く弾き続ける。\k\n「お前ほんっとヘタクソだなぁ北原…」\k\n　そんな、普段の彼女を知っている人間には誰も信じることのできない献身を一番違和感なく受け入れていたのは、あろうことかかずさ本人だった。\k\n　だって、いたずら半分で繋げた音が、ものすごく気持ちいい。\k\n　自分の音をこれほどまでに貶めるギターの音に、こんなにやりがいを感じる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0069>, 65, 1)  ; 　彼にギターを教えてみて、言葉で教えることの限界を感じた。\k\n　自分なら何も考えずにできることを、どうやって伝えたらいいのかわからない。\k\n　『だって弾けるんだからしょうがない』としか言いようがなかった。\k\n　だから、かずさは音を使うことにした。\k\n　こうすれば、言葉を使わずとも彼の音を矯正することができるから。\k\n　これは、かずさが慣れない思考の上にやっと編み出した練習方法。\k\n　最初は自分の得意なピアノでお互い慣れさせて、徐々にバンドの構成通りの楽器と触れさせていく。\k\n　ギターに、ドラムに、サックスに…\k\n　北原春希を、あと三か月でステージに上げても恥ずかしくないギタリストにする。\k\n　…ただ、そのためだけに。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0070>, 66, 1)  ; 　夏休みも終盤になって、急に忙しくなってしまった日々に、かずさは『やれやれ』と楽しそうなため息をついた。
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

ARRAY_S RES<0071>  ; 5003
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
