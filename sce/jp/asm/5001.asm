!RESOURCE "5001.csv"

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
PUSH INT 5001
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
PUSH INT 4301
PUSH INT 30
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

@VCALL SetMessage(RES<0004>, 0, 1)  ; 第一章　春\k\n\n
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

@VCALL SetMessage(RES<0005>, 1, 0)  ; 「冬馬」\k\n「………」\k\n　夢を見ていた。\k\n　二度と思い出したくない過去の記憶が走馬燈のように次々と脳裏を過ぎていくという、最悪とも言っていいほどの嫌な夢だった。\k\n「冬馬…おい…悪いけど、ちょっと起きてくれ」\k\n
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

@VCALL SetMessageE(RES<0006>, 2, 0)  ; 「…んぅ？」\k\n　当然のように目覚めは最悪で、そんな悪夢から目覚めさせてくれた恩人のはずの呼びかけた相手にすら怒りを覚えるほど、その時のかずさの心はささくれ立っていた。\k\n　…とは言ってもここ数年の彼女に、相手に好意を持って相対するなどという殊勝な態度が取れるはずもなかったけれど。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0007>, 3, 1)  ; 「っ…」\k\n「…？」\k\n　顔を上げると、制服姿の男子生徒が目を丸くしてかずさを睨みつけていた。\k\n　…少なくとも、彼女にはそう解釈できるほど、彼は硬い表情をしていた。\k\n「………」\k\n　かずさの頭の中に、現在が夢から二年後の世界であること、ここは今の自分のクラスである普通科三年の教室であること、今の時間が確か六時間目…いや、周囲の喧騒から既に放課後になっているであろうこと等、現実に立ち返るための情報が次々と流れ込んで来た。\k\n
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

@VCALL SetMessage(RES<0008>, 4, 0)  ; 「………すぅ」\k\n　来たけれど、件の男子生徒がその後凍りついたまま立ちすくんでいたので、かずさはせっかく上げた顔をこれ幸いともう一度机に伏せ…\k\n「ああっ！？　ごめんごめん、冬馬かずさ、だよな？」\k\n
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

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0009>, 5, 0)  ; 「…ん～」\k\n　そして瞬時に再び叩き起こされ、ますます機嫌を悪くした。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0010>, 6, 1)  ; 　体調はともかく、夢のせいで気分は最悪だった上に中途半端に目覚めさせられたかずさは、その悪い機嫌を隠そうともせずにやっとその男子生徒の正面を向く。\k\n「始業式からずっと登校してなかったよな？　体調の方、大丈夫か？」\k\n「…はぁ？」\k\n　彼についての第一印象は…正直、なにもなかった。\k\n　特徴のない身長、特徴のない体型、特徴のない髪型、特徴のない容姿。\k\n「全教科の教科書。学生証。諸手続の申請書類。上から提出期限の近い順になってるから」\k\n　唯一、特徴らしきものを挙げるとすれば、他の男子生徒は誰もしていない、きっちり嵌められたワイシャツの第一ボタンくらい。\k\n「冬馬が休んでる間な、授業の方はあんま進んでないけど、連絡事項だけはやたらと多くてさ…」\k\n「………」\k\n　最初のねめつけるような目つきは影を潜め、穏やかで親しげな、相手を気遣う態度を表に出してこちらの警戒を解こうと努力している様が見て取れた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0011>, 7, 1)  ; 　ただ、こちらの瞳を覗き込む視線だけは外そうとしなかったので、今までずっと他人と目を合わさずに生きてきたかずさにとっては相変わらず嫌な感じがした。\k\n「それとこれ…学割の申請書も念のため取っておいた。岩津町だから電車通学だよな？」\k\n「………」\k\n　彼は相変わらずこちらから目を離すことなく、かずさの机の上に次々と本や書類の束を積み上げていく。\k\n
PUSH INT 0
PUSH INT 8209
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0012>, 8, 0)  ; 「で、一番忘れちゃいけないのがこっち。保護者懇談会のプリント。いきなり来週から始まるから今日中に保護者に渡しといてくれ」\k\n「保護者…」\k\n「本当は家に直接届ければよかったんだけど、俺の方も色々あって…悪かった」\k\n「………」\k\n　こちらの事情を何も知らずに無意識に痛いところを突くその言動が癇に障った。\k\n　きっと本人は親切と信じているその押しつけがましい態度が鼻についた。\k\n　そんな押しつけがましさを助長する場当たり的な謝罪が更にムカついた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0013>, 9, 1)  ; 　要するに、目の前の少年の何もかもが気に入らなかった。\k\n「ここまでで何か質問あるか？　わかる範囲で答えるけど」\k\n　そんな次から次へと苛立ちを増幅させてくれる男子生徒の物言いに、けれどかずさは軽く首を横に振るだけで応えた。\k\n　気に入らないことの全てに噛みついていた入学当時と比べて、この二年間で色々と学習したというか、何もかも億劫になっていたから。\k\n「そっか、よかった。じゃ…」\k\n「ふぅ…」\k\n「…次は書類の書き方説明するな。まずこっちのジャージの購入申込書だけど」\k\n「………………」\k\n　なのに、目の前の厚かましい男子と来たら、かずさのありがたい譲歩をあまりにも言葉通りの『問題ない』と受け止めてしまっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0014>, 10, 1)  ; 「…どうした？」\k\n「……ぃ」\k\n「ん？」\k\n「ウザい」\k\n　とても、ウザかった。\k\n　せっかく他人に負の感情をぶつけるのをここ最近やめていたのに。\k\n　たとえ『揉めるのめんどくさい』という後ろ向き一直線の理由だったとしても、ここしばらくはそのお陰で周囲との軋轢を回避できていたのに。\k\n「よく言われるけど、これは必要なことなんだ。俺がウザいなら一回で覚えた方がお得だと思うぞ」\k\n「………」\k\n　なのに、なのに…\k\n　目の前の、まるで空気を読まない無遠慮で横暴で傲慢な彼は、一体何様のつもりなんだろうか。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0015>, 11, 1)  ; 「あ…そっか。初対面だったな。俺、北原春希。一応、Ｅ組の前期クラス委員」\k\n「名前なんか聞いてない」\k\n「さっきから『誰だお前？』って顔してたから」\k\n「…っ」\k\n　名前も知らない、というか今聞いたような気もするが覚える気もない…\k\n「…やっぱりまだ体調悪いのか？　保健室行くか？　付き添うけど？」\k\n「…さわるな」\k\n「？　いや、まだどこも触ってない」\k\n「………」\k\n　そんな路傍の石に過ぎない存在のくせに、思い上がり甚だしくも自分の人生の障害物にでもなろうとしているのだろうか。大きくも重くも鋭くも、道の真ん中に転がっている訳ですらないのに？
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0016>, 12, 1)  ; 　かずさの中に、久々に湧き上がっていくそんな青く純粋な怒りは…\k\n「…わかった。後にする。あ、そうだ。なんならこれ、放課後、家まで届けに…」\k\n「さわるな！」\k\n　あっという間に、限界を超えた。\k\n\n
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

@VCALL SetMessageE(RES<0017>, 13, 0)  ; 「…ふぅ」\k\n　春の温かい陽射しが傾き、徐々に前の季節が冬だったことを思い出させる冷ための空気が辺りを覆う頃、かずさは一人、校門を後にした。\k\n　その表情は先ほどまでの怒りの熱さを未だに保持したままで、きつく結ばれた口と細められた目が、いつも通りの通った鼻筋と相まって近寄りがたい鋭利な美しさを醸し出していた。\k\n　その怖いくらいに美しい表情をさせるきっかけとなった出来事があまりにもくだらなく子供っぽいものだったということは、彼女を避けて通る通行人にとっては知る由もなかったけれど。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0018>, 14, 1)  ; 「全部、あいつのせいだ」\k\n　かずさが扉を叩きつけるように教室を飛び出たとき、件の男子生徒を含め誰もが口を閉ざし、いきなり暴虐な振る舞いをしたかずさを呆然と見送っていた。\k\n　それは、去年までの音楽科の教室に自分がいたときの光景と被るものではあったけれど、今年のかずさにとって本意とは言えない状況でもあった。\k\n　これでは、何のために普通科に転科してきたのかわからない。\k\n　自分を知らない、自分が知らない新しいクラスで、今度こそ何も起こらない退屈な日常を過ごし、あわよくば卒業してやってもいいと考えてあげていたかずさにとって、普通科初登校の一日は不本意極まりない、いつも通りの結果となった。\k\n　だからいつも通りかずさは絶望する。\k\n　結局、何も変わらないのだと。\k\n　峰城大学付属学園という閉じられた世界の中には、自分を理解し、認めてくれた上で正しく放置してくれる人間は誰一人いないのだと。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0019>, 15, 1)  ; 　…その言い草からして周囲と軋轢を生むのが自業自得であることは誰の目から見ても明らかではあったけど、“誰”の中には常にかずさは含まれていなかったので、結局この決裂イベントは改められることなく毎年の恒例行事として多分これからも続いていく。\k\n\n　あの、入学式の空を見上げてからはや二年…\k\n　冬馬かずさは、相変わらず空が嫌いだった。\k\n　こんな春の、薄雲が広がる白っぽい空がずっと嫌いだった。\k\n　教師も、生徒も、周囲の世界の全てが嫌いだった。\k\n　目の中に入るありとあらゆるものに、その時の彼女が憎む十分な理由があった。\k\n　だから冬馬かずさは…今日出会った、馴れ馴れしい男子生徒が、大嫌いになった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
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

PUSH INT 60
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

@VCALL SetMessage(RES<0020>, 16, 1)  ; 　峰城大学付属学園には、音楽室が三つもある。\k\n　本校舎の第一音楽室は、授業中は普通科の音楽の時間に、放課後は音楽系クラブの部活動にと利用されている。\k\n　新校舎の第三音楽室は、音楽科の専用教室として一日中占拠され、普通科からは遠いロケーションの関係もあり一般の生徒が寄りつくことはない。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1005
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

@VCALL SetMessageE(RES<0021>, 17, 0)  ; 　そして第二音楽室。\k\n　第一音楽室の隣にあり、かつて音楽科クラスがまだ本校舎にあった時に専用教室だったこの場所は、現在は授業にも部活にも利用されず、実質上開かずの教室と化している。\k\n　本来なら、複数ある音楽系クラブのためにも放課後くらいは開放されても然るべきところなのに、生徒からも教師からもそんな不満の声が上がらないのには理由がある。\k\n　それは別に、都市伝説とか七不思議とか学校の怪談とかそういう類のものではなく、それぞれの立場による認識の違いが積み重なった結果だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0022>, 18, 1)  ; 　普通科の生徒たちは、未だこの教室が昔通り音楽科専用だと思い込んでいた。\k\n　音楽科の生徒たちは、すでにこの教室の存在価値を認めていなかった。\k\n　そして教師たちは…この教室の現在の利用者についての話題を忌避していた。\k\n
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

PUSH INT 120
CALL MS
OPERATOR POP

PUSH INT 1
PUSH INT 1006
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 80
OPERATOR NEGATE
PUSH INT 0
PUSH FLOAT 1.3
PUSH FLOAT 1.3
PUSH INT 0
PUSH INT 0
CALL B2
OPERATOR POP

PUSH INT 80
PUSH INT 0
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

PUSH INT 0
PUSH INT 9702
PUSH INT 0
PUSH INT 1
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 60
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0023>, 19, 0)  ; 　今日も、そんな開かずの第二音楽室からピアノの音色が響いてくる。\k\n　始業式から一週間。結局、三年になり、普通科に転科した今年度も、かずさは授業中も放課後も問わずこの教室の住人…『第二音楽室の主』のままだった。\k\n\n　ピアノの音色の間隙を縫って『禁じられた遊び』のギターソロが風に乗って流れてきた。\k\n\n　かずさが最初にここに連れてこられたのは二年前の春。\k\n　案内してくれた担任教師を追い払い、教室を占拠し、『親の知名度と寄付金を盾に傍若無人に振る舞う問題児』という自らの評価を決定的なものにした記念すべき日だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0024>, 20, 1)  ; 　それ以来、この教室は関係者の間でも触れてはいけない場所となり、彼女の母が寄付した三百万は下らないと言われる欧州メーカーのグランドピアノも、結局娘専用の玩具に成り果てていた。\k\n　かずさはこの教室の鍵を職員室に返さず、気が向いた時や、逆に気が乗らない時に勝手に入り込み、何時だろうが何時間だろうがピアノを、そして周囲に転がる他の楽器を手当たり次第に弾く。\k\n\n　ギターの音色が『イエスタディ』に変わった。\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1005
PUSH INT 0
PUSH INT 120
PUSH INT 0
PUSH INT 80
PUSH INT 20
PUSH FLOAT 1.3
PUSH FLOAT 1.3
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

PUSH INT 120
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 255
PUSH INT 30
CALL SEV
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0025>, 21, 0)  ; 　二年前のコンクール以来、ピアニストとしてのかずさが表舞台に立つことはなかった。\k\n　何よりあの日から、かずさはピアノを楽しんで弾くことをやめていた。\k\n　だからこれは練習でも遊びでもなく、単なる惰性。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0026>, 22, 1)  ; 　技術を追求することも、ミスを気にすることも、腕が落ちたことを嘆くこともなく、ただ何も考えず、何も考えないためだけに弾く。\k\n　嫌なことも、辛いことも、悲しいことも記憶から全て消してしまおうと、一心不乱に弾く。\k\n　併せて楽しくて嬉しい記憶も消えてしまうけれど、それを気にする必要はない。\k\n　楽しくて嬉しい出来事なんか、ここしばらく遭遇したことなんかないから…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 9723
PUSH INT 0
PUSH INT 1
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 0
PUSH INT 100
PUSH INT 60
CALL SEV
OPERATOR POP

PUSH INT 270
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessage(RES<0027>, 23, 0)  ; 　ギターの音色が『ホワイトアルバム』に…\k\n\n
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
PUSH INT 5910
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

@VCALL SetMessageE(RES<0028>, 24, 0)  ; 「あ～、もうっ！」\k\n　けれどその日のかずさは、何も考えずにいることを諦めたかのように苛つきを鍵盤にぶつけた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0029>, 25, 1)  ; 　もちろん、自分のピアノの腕に絶望した訳ではなく…\k\n「このヘタクソっ！」\k\n　風に乗って聞こえてくるギターの音色の、あまりの未熟さが許せなかっただけだった。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1005
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0030>, 26, 0)  ; 　その音は、ここ数日、夕暮れになると聞こえてきていた。\k\n　吹奏楽部や合唱部の全体練習が終わり第一音楽室が空いた後、誰かが居残りの個人練習をしているらしく、そこから先はミスだらけのギターソロが、かずさの流れるようなピアノに被さってくる。\k\n　正直、うざいことこの上ない。\k\n　多分、進学を機にバンドでも組もうと一念発起し新しくギターを始めた新入生なのだろうが、その技術と素質のなさは、どちらも生まれつき最大限に持ち合わせていたかずさにとってはあまりにも許しがたいものだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0031>, 27, 1)  ; 　おかげで自身のパフォーマンスにさえ悪影響が出てしまい、何度も自分の指先から音が逃げていくのを感じてしまったかずさは、これ以上演奏を続ける気力を失ってしまった。\k\n「帰ろ…」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
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

@VCALL SetMessageE(RES<0032>, 28, 0)  ; 　ギターは、相変わらず間違いだらけの『ホワイトアルバム』を弾いている。\k\n　かずさは、もうその騒音に決して耳を傾けないという強い決意とともに両手を耳に当てると、急ぎ足で校舎を逃げ出した。\k\n　帰り道、無駄に疲れてしまった脳を癒すべく大量に糖分を補給しようと決心しながら…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 1
CALL NB
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

@VCALL SetMessage(RES<0033>, 29, 1)  ; 　冬馬かずさは、なめらかプリンが好きだった。\k\n　というか、なめらかプリンに限らず甘いものは何もかも好きだった。\k\n
PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0034>, 30, 0)  ; 　これまた死ぬほどの甘党である母からの遺伝からか、その母に餌付けされた成果か知らないけれど、子供の頃から現在に至るまでその子供っぽい味覚はずっと変わることなくかずさの歯の健康と壮絶な戦いを繰り広げている。\k\n　いや、ほんの少しだけ変わったところもあった。\k\n　…以前に増して更に甘いものに傾倒するようになったという、呆れた変化だったけれど。\k\n　子供の頃から苦手だった辛いものは当然ながら、苦いもの、酸っぱいものまでもが彼女の嗜好から弾かれていき、ついでに熱いもの、冷たいものまで比較的除かれていくようになった最近では、ただでさえバリエーションの少ない食事の選択肢を更に狭めてしまうことになっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0035>, 31, 1)  ; 　アイスクリームはケーキやプリンに、レモンティーはミルクティーに、炭酸飲料や果汁はそもそも摂らなくなり…\k\n　唯一、コーヒーだけは今でも許容できたけれど、それも多分に周囲へのポーズの意図が強く、大量の砂糖やフレッシュで誤魔化さないと喉に突き刺さる苦味や熱さに耐えられなくなっていた。\k\n　今のところ、かずさ本人は単なる好みの変化と気にも留めていない。\k\n　けれどもし、カウンセラーか精神科医が彼女を診察したならば、その心の闇が味覚に深刻な影響を与えていたことに気づいたかもしれない。\k\n　本人の知らないうちに、かずさの脳はずっと前から悲鳴を上げていた。\k\n　味覚にくらいは刺激を受けたくない、と。\k\n　舌先にくらいは痛みを感じたくない、と。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 3000
PUSH INT 60
PUSH INT 1
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2031
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

@VCALL SetMessageE(RES<0036>, 32, 1)  ; 「同じの、もう一つ」\k\n「………か、かしこまりました」\k\n　と、今はそんな兆候とは無縁に、かずさは二つ目のなめらかプリンを平らげ、平然と三つ目をオーダーする。\k\n　プリンは種類や材料や値段に関わらず好物だったが、この店…グッディーズ南末次店においては、当店オススメメニューのなめらかプリンが一番のお気に入りだった。\k\n　何しろこの店のなめらかプリンは他店のそれと比べ甘過ぎてくど過ぎてどう考えても一見さんお断りでどこがオススメやねん的な濃厚さを誇っていたので、かずさはなかなかスプーンを止められず、ついでに満たされた微笑も止められそうにない。\k\n　と、かずさが学園では絶対に見せない、微かな至福の表情を浮かべつつ最後のひとさじを口に運ぼうとした瞬間…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0037>, 33, 1)  ; 「だからそんなに深く考えないでさ。みんなで遊びに行くだけだって」\k\n　自分の真後ろから、つい最近どこかで聞いた声が届いてきた。\k\n「今になってどういう風の吹き回し？　二年の頃までは声かけてくんなかったじゃん飯塚君」\k\n「そりゃ…だって唯ちゃん、高田とつきあってたろ？」\k\n「…詳しいねぇ」\k\n「ずっと狙ってたからね。彼氏いるって聞いたときはショックだったなぁ」\k\n　ついでに、どこかで聞いたような歯の浮く台詞だった。\k\n「なるほど、それで最近、新情報を手に入れたんだ…別れたって」\k\n「…そっちは鋭いねぇ」\k\n　相手に気づかれないよう注意深く後ろを振り向くと、そこには峰城大付の制服を着た一組のカップルが談笑している。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0038>, 34, 1)  ; 　かずさの予想は半分だけ当たっており、男の方に見覚えがあった。\k\n「なに、今なら行けると思った？　誰にでもホイホイついていくって思った？」\k\n「ホイホイついてくる？　なら大歓迎」\k\n「そんな安い女じゃないって言ったら？」\k\n「口説きがいがあるね、大歓迎」\k\n「ほんっと上手いなぁ飯塚君。澤ちゃんから色々聞いてるよ？」\k\n「あいつの言ってることが嘘か本当か試してみない？」\k\n　細身の体、茶色がかったくせ毛、そして何より猫なで声とその口調が、嫌でも昨日の記憶を蘇らせる。\k\n　昨日の帰り道、校門のところからしつこくまとわりついてきた男子だ。
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

PUSH INT 0
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

ARRAY_S RES<0039>  ; sepia.AMP
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 1
PUSH INT 1060
PUSH INT 0
PUSH INT 60
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0040>, 35, 1)  ; 　『Ｅ組の冬馬さんだよね？』\k\n　『俺、Ｇ組の飯塚武也。俺のことは知らないかな？』\k\n　『じゃあ春希…北原春希は知ってるだろ？　ほら、君の隣の席の』\k\n　『俺、あいつの友達でさ、それで君のこと教えてもらってさ』\k\n　『そんな訳でまぁ、お近づきになりたいと思ってこうして話し掛けてみたってワケ』\k\n　『いやびっくりしたよ。ウチの学年に君みたいなレベル高いコがいたなんて…一生の不覚ってやつ？』\k\n　『今からどこ行くの？　時間あるんだったらちょっとお茶してかない？』\k\n　『あ～、別に深い意味に取らなくてもいいから。ちょっと話すだけ』\k\n　『…人見知りするタイプなんだね』\k\n　『去年まで音楽科だったんだって？　普通科に転科って珍しいね』\k\n　『そういえば君って、あの冬馬曜子の…』
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
PUSH FLOAT 1
PUSH FLOAT 1
PUSH FLOAT 0
PUSH INT 1
CALL B2
OPERATOR POP

ARRAY_S RES<0041>
PUSH INT 0
CALL SetEffctMode
OPERATOR POP

PUSH INT 255
PUSH INT 0
CALL SetChromaMode
OPERATOR POP

@VCALL SetMessage(RES<0042>, 36, 1)  ; 　そんな感じでいつ尽きるともないお喋りをかずさに仕掛けてきた彼は、けれどその軽い口をそこで塞がざるをえなくなった。\k\n　…かずさの鋭い回し蹴りによって。\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 3
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 2031
PUSH INT 0
PUSH INT 90
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0043>, 37, 0)  ; 「ん～、そだなぁ、最初から二人きりじゃなかったら考えてもいいよ」\k\n「お、それはこっちも大歓迎。ワイワイやんのも大好きだしね」\k\n「じゃあ、どする？　ゴールデンウィークのどっかがいいよね？」\k\n　それでも今日は、昨日の釣果に比べるとかなり期待が持てそうな手応えのようだった。\k\n　彼の向かいに座っている―それこそが半分外れた方の予想で、見ず知らずと思っていたら実はかずさの二つ前の席だった―女子生徒は、彼と丁々発止のやり取りを続けながら、その状況を楽しんでいるかのように声を弾ませていた。\k\n　要するに、どう見ても脈ありだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0044>, 38, 1)  ; 「それじゃ三日ってことで。朝１０時に南末次の改札前でどう？」\k\n「じゃあ、誰か一人誘っとくね。決まったら電話するから」\k\n「おっけ、携帯番号交換しよ」\k\n　軽薄な男と女のくだらない会話を聞かされて、とても居心地と機嫌の悪くなったかずさは仕方なしに場所を移動しようと後ろの二人に見つからないようにゆっくりと席を立ち…\k\n「え～北原君？　それはちょっとなぁ…」\k\n　そして、最近聞き慣れてしまったその名前に足止めを喰らった。\k\n「え、なんで？」\k\n「だって北原君って…いいんちょ君のことだよね？」\k\n　昨日に続いて、またしてもその名前を聞かされてしまった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0045>, 39, 1)  ; 　クラスで最初に話し掛けてきた男子生徒。\k\n　あまりにも空気を読まない押し付けがましい委員長。\k\n　クラスで孤立したはずの自分へと未だにしつこく話し掛けてくる唯一の同級生。\k\n　目の前の軽薄な男の友達。\k\n　この男に自分を売ったタレコミ屋。\k\n　自分が元音楽科で冬馬曜子の娘であることを調べ上げた覗き趣味の権化。\k\n　知っていたからこそ自分に近づいてきた嫌らしく計算高い最低の人間。\k\n　そんなこんなでかずさの怒りは、目の前の男よりも、完全に覚えてしまった『北原春希』という名前の方へと溜まっていく。\k\n　最初会ったときの第一印象そのままに『全部、あいつのせいだ』と…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0046>, 40, 1)  ; 「だってさぁ、彼だと誘ったコが可哀想だよ」\k\n「どうして？　何がマズいかな？」\k\n「…わかるでしょ？」\k\n　―とてもよくわかる。\k\n「見た目そんな悪くないだろ？　大丈夫、服だって俺がなんとかしてくるから」\k\n「いや、確かに見た目は悪くないよ？　けどさぁ、ウザくない彼？」\k\n「………」\k\n　―ウザい。あからさまにウザい。\k\n「この前なんかさぁ、いきなりウチに来たんだよ？　住所録で調べたって言って」\k\n　―あいつならやりそうなことだ。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0047>, 41, 1)  ; 「その日休んでたんじゃないのか？　それとも、なんか忘れ物してたとか」\k\n「まぁ確かに休んでたよ。前の日にライブでアリーナまで行っててさぁ」\k\n「見舞いじゃねえか、それ」\k\n「にしてもさぁ、デリカシーってもんがあるじゃない？」\k\n　―そう、あの男にはそういった人に遠慮する心が致命的に欠けている。\k\n「上がってったか？　茶でも出せって言ったのか？」\k\n「すぐ帰ったけどさぁ…それにしてもねぇ」\k\n　―それにしても、だ。\k\n　人に対する度を越した干渉は、嫌悪しか生み出さないというのに…\k\n
PUSH INT 60
CALL MS
OPERATOR POP

PUSH INT 0
PUSH INT 8166
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

@VCALL SetMessageE(RES<0048>, 42, 0)  ; 「………悪い、用事できた、帰るわ」\k\n「え？」\k\n「…ぇ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0049>, 43, 1)  ; 　心の中で呟いていた言葉が、その瞬間思わず口から零れてしまった。\k\n　さっきまで羽のように軽々しく滑っていた彼の口が、急に苦々しい重みを帯びたから。\k\n
PUSH INT 0
PUSH INT 1909
PUSH INT 0
PUSH INT 0
PUSH INT 80
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessage(RES<0050>, 44, 0)  ; 「これ俺の分な。今日は楽しかった、じゃあ」\k\n
PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0051>, 45, 0)  ; 「ちょ、ちょっと待ってよ飯塚君」\k\n　彼女の方も、かずさと同じ重みを感じ取ったのか、少しうろたえつつ彼を引きとめようとする。\k\n「遊びに行く話、まだまとまってないよ？　結局メンバーどうするの？」\k\n「あ～、そんな話もあったかなぁ…」\k\n「あったかなぁ、って…」\k\n「悪い、そっちも用事できた。また今度な」\k\n　けれど彼の方は、もう彼女の言葉を聞く気はさらさらないようだった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0052>, 46, 1)  ; 「…なに怒ってんの？」\k\n「あのさ」\k\n「え…」\k\n「同じクラスになってまだ半月だろ？　その程度でわかったように春希のこと語んな」\k\n「な…何言ってんの？」\k\n　本当に、何を言っているんだろう。\k\n　同じクラスになってまだ半月の人間が欠席したくらいで見舞いに来る方がおかしいのではないだろうか。\k\n「せめて半年あいつと関わってからにしろ。じゃあな」\k\n
PUSH INT 0
PUSH INT 8245
PUSH INT 0
PUSH INT 1
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 10
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

PUSH INT 0
PUSH INT 210
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0053>, 47, 0)  ; 「ちょっと、さっきまでとキャラ違うよ飯塚君？　ねぇ、だから待ってってば！」\k\n「っ…」\k\n　かずさのすぐ横を『飯塚君』が早足で歩き去る。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 1
PUSH INT 1021
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0054>, 48, 1)  ; 　けれど、かずさが隠れなくても彼はまったくこちらに気づかず、完全に相手に興味を失ったような乾いた表情のまま店から出て行った。\k\n　だからこそ、逆にかずさの方が彼から目を離せなかった。\k\n　その人を見下すような表情が自分に向けられているという錯覚に陥ったから。\k\n「…なにそれ、バッカじゃないの！」\k\n　置き去りにされた彼女が発したその罵声は、もしかしたら一日前、かずさが発していたかもしれないものだった。\k\n　だって彼女は、かずさの印象を代弁したに過ぎなかった。彼女の口から出たのは、あまりにもかずさの言葉そのものだった。\k\n　だからこそかずさにはわかる。いや、同じ感覚を味わっている。\k\n　燃え上がるような屈辱と、冷や水を浴びせられたようないたたまれなさ。\k\n　それはまたしても、あの『北原春希』という委員長によってもたらされた感情だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
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

@VCALL SetMessage(RES<0055>, 49, 1)  ; 「冬馬」\k\n「………」\k\n　夢を見ていた。\k\n　一匹の蟻になって蜂蜜の中で溺れるという、最高とも最悪とも取れる微妙な夢だった。\k\n「冬馬…おい…だから起きろっての」\k\n
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

@VCALL SetMessageE(RES<0056>, 50, 0)  ; 「…んぅ？」\k\n　そんな命と糖分との究極の選択から解放されたかずさは、零れかかっていた涙と涎を指でぬぐいつつ、自分を現実へと引き戻した相手に向かい合う。\k\n「おはよ。今日は珍しく始業前に来てるな」\k\n「………はぁ」\k\n「そんなあからさまにため息つかなくても」\k\n　それはため息ではなく、『北原春希』と言いかけて慌てて息を呑んだだけだった。\k\n　人のフルネームを覚えたのなんて何年ぶりのことだろうか。
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

@VCALL SetMessage(RES<0057>, 51, 1)  ; 「………すぅ」\k\n「おはよう！　おはよう冬馬！　もうすぐ予鈴が鳴るからそろそろ起きててくれ」\k\n
PUSH INT 0
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

@VCALL SetMessageE(RES<0058>, 52, 0)  ; 「ん…んぅぅ…」\k\n　だから、話しかけられているのに眠ろうとしたり、億劫そうに伸びをして興味なさそうな態度を取ったりしたのも、半分はブラフだった。\k\n　これ以上干渉も詮索もされたくない思いは確かにあった。\k\n　…けれど、ほんの少しだけこの少年に興味を持ってしまったことに気づかれたくない思いの方が強かった。\k\n「で、寝起きで悪いんだけど、進路希望調査、今日の昼が提出期限なんだよ」\k\n「………はぁ」\k\n「俺先生から回収頼まれててさ。で、多分用紙は捨てたと判断して、これ新しいの。名前とか、俺のわかる範囲のところは書いておいたから」\k\n　あからさまな干渉。鼻につく親切。見え見えのお節介。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0059>, 53, 1)  ; 　今までの経験に照らし合わせると、かずさの、いや、冬馬家の地位や名声や財産に群がる大人たちの下心に一番似ている。\k\n「書いてるところも覗かないし、封筒に入れてから持って行くし、内容は絶対見ない。だから、ま、昼休みまでに記入よろしく」\k\n　なのに、彼の言動のどこにも自分の利益に繋がる線が見えないことが、かずさに言いようのない居心地の悪さをもたらす。\k\n
PUSH INT 0
PUSH INT 8174
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0060>, 54, 0)  ; 「だから丸めるな。ちゃんと書け」\k\n「こんなの興味ない」\k\n　だからついつい反抗的な態度を取ってしまう。\k\n　一月前とは違う、相手の干渉を完全には拒絶しない程度に軽い、反抗的な態度を。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0061>, 55, 1)  ; 「進学でも就職でも未定でも何でもいいから、まず自分が今どう考えてるか、それとも何も考えてないか、それだけは書いてくれってさ」\k\n「大体、あたしに構ってる暇があったら、ちゃんと他の連中の分を集めたら…」\k\n「昨日までに全部集めた。あとは冬馬の提出待ち」\k\n「…昨日、確か三人くらい休んでたんじゃ？」\k\n「ちゃんと事前に電話して回収に行った。みんな熱があってもしっかり書いてくれたぞ」\k\n「…馬鹿？」\k\n　相変わらずやっていることは目眩がするほど鬱陶しかった。\k\n　なのにこの学園一の杓子定規は、学園一の軽薄男に不思議なほど慕われていた。\k\n　そんな、性格的には対極な、まるで接点の見られない親友同士という矛盾が、かずさにとっては未だ理解できていなかった。\k\n「酷いこと言うなぁ。ウチのクラスの連中はみんなしっかりしてるんだよ」\k\n「誰の話だと…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0062>, 56, 1)  ; 　理解できなかったからこそ、これ以上嫌うのがためらわれた。\k\n　もしかしたら自分はとんでもない勘違いをしているのではないかという不安が頭を離れない。\k\n「大体、ウチなんか付属なんだから、とりあえず『<R峰城大|うえ>に進学』って書いておけばいいんだよ。何も書かないよりよっぽど放っておいてくれるぞ」\k\n「行かないし、絶対」\k\n　口答えするふりをしつつ、上目遣いで彼の顔をさり気なく、けどじっくりと覗き込みながら独りごちる。\k\n「嘘はつきたくないのか？　…意外と誠実な奴だな。見直した」\k\n「…勝手に結論づけて勝手に評価上げるな。鬱陶しい」\k\n\n　―じっくり見てもやっぱり普通だ。十人並みだ。\k\n　　目を背けたくなるほど醜くもない、うっかり見とれてしまうほど美しくもない。\k\n　　…なんて、そんな容姿を持った奴なんて男全体の１％にも満たないし。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0063>, 57, 1)  ; 「見直されたくなかったら、周囲と同化して埋没した方がよっぽど効果的だぞ」\k\n「なにそれ？」\k\n\n　―けれど、もしかしたらほんの少しだけ平均より上かもしれない。\k\n　　七人並み、八人並みくらいは行ってるかもしれない。\k\n\n「ほら、『不良が猫に餌やってた』とかいう落差による高評価がなくなるから、みんな普通に評価してくれるだろ？」\k\n「あたしは誰にも評価されるつもりはない」\k\n\n　―その証拠に、見とれたりはしないけれど、ずっと間近で見ていても苦にならない。\k\n　　このまま見つめ続けていても、多分…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0064>, 58, 1)  ; 「授業中に書くのはお薦めしない。できれば予鈴が鳴る前に書いて欲しいんだけど…」\k\n「あんたねぇ…」\k\n\n　―いや、そもそも自分がそういう審査をすること自体が間違いなのかもしれない。\k\n　　同年代の男子…いや、どの年代の男にすら興味を抱いたことなんかない。\k\n　　それが例え、父親かもしれない相手だとしても。\k\n　　そんな、他人どころか自分にすら興味を持てない自分が人を評価しようだなんて…\k\n　　でも、だったら何を見ればいい？\k\n　　こいつの何をもって、良し悪しを判断する？\k\n　　そしてその判断結果は、自分にどんな影響をもたらすと言うんだろうか…？\k\n\n「ま、下手したら一生モノの選択だし、もう少し悩んでくれてもいい。それじゃ頼むな」\k\n「…っ」\k\n　はっと我に返ると、かずさは慌てて紙面に目を落とし一心不乱に鉛筆を走らせる。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8175
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessage(RES<0065>, 59, 1)  ; 「お…感心感心」\k\n　今、自分のしていた行為と思索のあまりのキモさに背筋が寒くなったから。\k\n　目の前の少年をじっと見つめて、彼のことばかり考えるという、まるで女の子のような振る舞いに。\k\n「………北原」\k\n「書き方わかんないところあるか？」\k\n「あんたの言うこと聞いてやるんだから、一つくらい、あたしの言うことを聞け」\k\n「ああ、もちろん。何か困ってることとかあったらいつでも相談に…」\k\n「今後、あたしがあんたのことをシカトしても気にするな。もの凄く鬱陶しくて嫌な思いをしてるだけだから」\k\n「そ………そうか」\k\n\n
PUSH INT 0
PUSH INT 10
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0066>, 60, 0)  ; 　―馬鹿馬鹿しい。自分が他人に興味を持つなんて、\k\n　　本当に、馬鹿馬鹿しい。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 8096
PUSH INT 0
PUSH INT 0
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessageE(RES<0067>, 61, 1)  ; 「ほら書けた。持ってけ」\k\n「うわっと、投げるなよ。ちゃんと裏返して…」\k\n\n　―こいつが、誰に慕われていようが関係ない。\k\n　　人としてどれだけ魅力があろうと意味がない。\k\n　　自分の住む世界には、まったく影響を及ぼすことのない問題だ。\k\n\n「別に、見られたって構わない。あんたの言うとおり『峰城大に進学』って書いただけだから」\k\n「…進学するのか？」\k\n「さあ？」\k\n「…そうか」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0068>, 62, 1)  ; 　―そう割り切っておかなければ自分が酷い目に遭う。\k\n　　何しろ、こいつの馴れ馴れしさは異常だ。\k\n　　少しでも甘い顔を見せたら、どこまで付け込まれるかわかったものじゃない。\k\n\n「これで用は済んだ？　それじゃあたし、寝るから」\k\n「あ、ごめん。最後に一つだけ」\k\n「…なに？」\k\n「わかったよ…今後、冬馬が俺のことシカトしても気にしないから」\k\n「あ…うん」\k\n　割り切った、はずなのに。\k\n　彼の、その諦めの言葉を聞いた瞬間、かずさの表情に微妙に不機嫌さが混じり…\k\n「だから冬馬も、俺がしつこく話しかけても気にするな」\k\n「…はぁぁ？」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0069>, 63, 1)  ; 　割り切った、はずなのに。\k\n　彼の、そのちっとも諦めていない言葉を聞いた瞬間、かずさの表情があからさまに不機嫌だらけに染まる。\k\n「おはよう、冬馬。今日もいい天気だなぁおい」\k\n「ちょっと待て北原。それは約束が…」\k\n「お前の言うことを聞いてやるんだから、一つくらい、俺の言うこと聞いてくれてもいいよな？」\k\n「全然一つじゃない！　なんて厚かましいんだお前は！」\k\n「冬馬…今さらなに言ってんだよ？」\k\n　かずさは呪った。\k\n　こんな鬱陶しくも馴れ馴れしい奴に少しでも甘い顔をしてしまった自分の愚かしさを。
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

PUSH INT 150
PUSH INT 0
PUSH INT 0
CALL Wait
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

@VCALL SetMessageE(RES<0070>, 64, 1)  ; 　それから一月ほど経つと、かずさにも段々わかってきた。\k\n　北原春希を頼る者と避ける者、そのはっきりした二つのグループにははっきりした傾向があることを。\k\n　今年初めて普通科に来た新参者のかずさにとっては、最初は取っ掛かりを掴むのにも苦労したけれど、一度それに気づいてしまえば後は毎年配られる学生名簿を調べるだけで容易にたどり着く結論だった。\k\n　それは性別の差でも成績の差でも性格の差でもなく、去年と一昨年のクラス編成。\k\n　すなわち、一年生や二年生の頃、彼と一回でも同じクラスを経験した者と、そうでない者との温度差だった。\k\n　後者は北原春希との距離感を測りかね、干渉を嫌がり、説教にネガティブな反応を返し、それでも関わってくる彼にほとほと呆れていた。\k\n　そして前者は、最初から北原春希のことを諦め、そして全面的に信じていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0071>, 65, 1)  ; 　その温度差を如実に示したのが、北原が『早坂』と呼ぶ、かずさの前の席の男子生徒との間に起こったあるトラブルの時だった。\k\n　クラスの推薦によって望まぬ体育祭の実行委員に任命されたその早坂は、必要な会合をサボり準備を怠り、本番一週間前になっても各競技の出場選手が決まっていないという惨憺たる状況を作り出してしまった。\k\n　そんなクラスの危機に、北原は慌てず騒がず完璧なフォローをしてみせた。\k\n　いや、フォローと言うにはあまりにも事前の根回しの比率が高かったけれど…\k\n　北原は、早坂の出るはずだった会合に全て代理出席しており、段取りを整え終わっていて、選手選考についても主要なメンバー全員の内諾を得ており、あとはクラス全員の採決だけという段階にまで勝手にこぎ着けていた。\k\n　そして、そこまで黙々と作業をこなしておきながら、最後になって黙ることをやめて、ホームルーム後に早坂に対してくどくどと説教を始めてしまった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0072>, 66, 1)  ; 　そうなると、全面的に悪いにも関わらず収まらないのは完璧に顔を潰された早坂の方で、北原の説教に耳を貸さないどころかことごとく反発し、一人で一触即発の雰囲気を作り出してしまった。\k\n　それでも北原は反発も呆れもせず、ただ一生懸命彼の問題点を指摘し体育祭に向けて一緒に活動していくことを申し出た。\k\n　けれど一度振り上げてしまった拳を振り下ろさずに引っ込めることもできず、早坂はますます反発し…\k\n　そして、そんな一触即発な状況の時でも実に楽観的だったのが前者…北原と以前も同じクラスを経験した“かつての被害者”たちだった。\k\n　彼らは最初から北原との付き合い方をわきまえていた。\k\n　そして北原のことを非常に『わかっていた』。\k\n　だからその時起きたトラブルに対しても慌てることなく、早坂に対しても寛容に…というか適当に接して色々とうやむやにしてしまった。
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

@VCALL SetMessage(RES<0073>, 67, 1)  ; 　曰く『怒るだけ無駄だから』とか、『あいつの言うこと全部真に受けてたらハゲるよ？』とか、『あいつ貧乏くじ引きたがってんだからここは収めてくれよ』とか、フォローになっていないフォローばかりだった。\k\n　そんな問題を抱え、体育祭は一週間後に開かれ…\k\n\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1005
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

@VCALL SetMessage(RES<0074>, 68, 0)  ; 　その日、かずさには、もう一つわかったことが増えてしまった。\k\n　体育祭の全競技をサボり、第二音楽室で暇を潰していた彼女がその窓から夕方の校庭に見たものは…\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 3000
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

@VCALL SetMessageE(RES<0075>, 69, 0)  ; 　体育祭後の校庭に飲み物を持ち込んで騒いでいる三年生たち。\k\n　その中でも大いに盛り上がっている自分たちのクラスであるＥ組。\k\n　そして、その更に中心で最も盛り上がっている早坂と、その早坂に勝手に肩を組まれながら杯（多分お茶の）を酌み交わし、静かに飲んでいる（多分お茶を）北原の姿。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessage(RES<0076>, 70, 1)  ; 　北原の態度は今までと変わらず、まだ何事か説教を垂れているような感じだったけれど、当の早坂の方はたった数日でわきまえてしまったのか、その説教らしき態度を華麗にスルーしてゲラゲラ笑っている。\k\n　『せめて半年あいつと関わってからにしろ』\k\n　あの軽薄な男が口にした言葉を、かずさは思い出したくもないのに思い出していた。\k\n\n
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

@VCALL SetMessageE(RES<0077>, 71, 0)  ; 　その次の週から、クラスの雰囲気は明らかに変わっていった。\k\n　北原と一部の生徒たちとの間にあったギスギスしていた空気は消え去り、皆が彼を気軽に頼るようになり、次から次へと些細な用事までも押しつけては、その都度返ってくる彼の説教を笑って聞き流す。\k\n　それだけなら、彼がクラスの中で単なる便利屋に成り下がったというネガティブな可能性もあったかもしれない。けれど周囲の態度や雰囲気はあくまでも明るく、皮肉も毒も抜かれ、彼の誠意を馬鹿にしたり拒絶したりする空気は一掃されてしまっていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0078>, 72, 1)  ; 　そして何より当事者のうちの片方である早坂は、いつの間にか北原のことを『春希』と呼ぶようになり、それに応えるように北原の方も彼のことを『親志』と呼ぶようになっていた。\k\n　皆は、北原春希のことを『クラスに必要な人間』として認めた。\k\n　いや、認めたとかそんな前向きな感情の変化に気づいた者はいなく、ただ皆、以前から口うるさい委員長を今まで通りにあしらっていると思い込んでいた。\k\n　そんな場の空気を“変化”として感じ取れたのは、かずさだけだった。\k\n　一番クラスに必要とされていない人間だったから。\k\n　唯一、体育祭のあの事件を外から俯瞰していた部外者だったから。\k\n　そして………一番北原春希のことを見ていた女の子、だったから。
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
PUSH INT 2
PUSH INT 60
PUSH INT 0
PUSH INT 50
PUSH INT 20
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0079>, 73, 1)  ; 　だってかずさは、ここしばらく彼から目を離したことがなかった。\k\n　自分がクラスの中で空気扱いされていることを利用して、授業中も休み時間も堂々と机に顔を伏せ居眠りを装い、腕の隙間から彼の横顔を覗き、彼の周りで囁かれる声の全てを拾い上げた。\k\n　…ピアノで培った視界の広さと耳の良さをこんなことに活用していたと知ったら、彼女のこのスキルに大金を注ぎ込んだ母親は一体どう思っただろうか。\k\n　それはともかく、かずさが貴重な睡眠時間を削ってまで得た北原レポートにはこう書かれている…
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

@VCALL SetMessageE(RES<0080>, 74, 1)  ; 　・北原春希は、初対面の人間全てに最悪な第一印象を与える。\k\n　・それは、奴の醜悪な人格を誰もが本能的に忌避するからである。\k\n　　※奴に最初から好印象を持つ人物はよっぽどの物好きか馬鹿。\k\n　　※まず間違いなくそんな変人は現れたことがないし、これからも現れない。\k\n　・それでも奴は、たった数日間でその第一印象を覆し、周囲の支持を集める。\k\n　・それは悪魔のごとき卑劣な策を弄した周到な懐柔工作である。\k\n　・奴は自分を含む集団の中にわざとトラブルを起こす。\k\n　・そしてそれを自分が解決することにより、今までの他者の評価を反転させる。\k\n　・それは『不良が猫に餌やってた』とかいう落差による作られた高評価である。\k\n　・加えて皆、事件の渦中で精神が高揚している時なので冷静な判断ができない。\k\n　・そうして奴は地道に支持者を増やし、いつしかその集団を支配していく。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0081>, 75, 1)  ; 　この恐るべき研究成果を、かずさはどこにも発表する気もなかったし、北原に染まってしまった周囲の者たちを救おうという気もなかった。\k\n　何しろ、かずさが彼のことを研究したのは、単なる暇つぶしだから。\k\n　それは確かに恐ろしい事実だったけれど、自分に粉が降りかからなければかずさにとって何の問題も関係もない。\k\n　これからも校内では大人しく寝続けて、その存在感を限りなく消してみせれば、その影響下に置かれることもないし、彼の信者たちに付け狙われることもない。\k\n　その時は、楽観していた…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 120
CALL MS
OPERATOR POP

PUSH INT 240
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

@VCALL SetMessage(RES<0082>, 76, 1)  ; 「おはよう冬馬。それと誕生日おめでとう」\k\n「っ！？」\k\n「今日、だよな？　五月二十八日」\k\n「………」\k\n「おめでとう。まぁ、俺は四月だから年上として敬うことはしないけどな」\k\n「………っ」\k\n　だから、そう声をかけられた日も、『ど、ど、どこで調べたんだこのストーカー野郎！』と怒鳴ってしまいそうになるのを必死でこらえ、いつも以上に早足でその場をすたすたと歩き去った。\k\n
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

@VCALL SetMessageE(RES<0083>, 77, 0)  ; 　その二日後、別のクラスメイトの誕生日を祝っている北原を見て、彼が誰に対しても同じ態度を取っていることを今さらながらに思い出し、変に自意識過剰なことを言わずに本当に良かったと心の底から安堵した。\k\n　安堵のあまり、教室のゴミ箱を思い切り蹴り飛ばしてしまうくらいに。
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
PUSH INT 90
PUSH INT 0
PUSH INT 50
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

PUSH INT 90
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0084>, 78, 1)  ; 　そうやって目立たぬよう、どれだけ北原に声を掛けられても常にシカトし続けていたはずなのに、事態はかずさの思う通りには進んでくれていなかった。\k\n　彼に洗脳された者たちは、いつしか自分のことを、あの生温かい目で見るようになった。　それどころか実際に『冬馬さんのことは北原君に任せておけばいいから』などというおぞましい言葉が、彼とかずさの周囲で囁かれるようになった。\k\n　特に、彼のことを『いいんちょ君』と蔑んでいたはずのあの女子生徒の口からその台詞が漏れ聞こえてきた時には、孤高のはずのかずさですら、一人だけ取り残された絶望感で夜も眠れなくなってしまった。\k\n　そんなこんなで、自分に話し掛けてくるクラスメイトの数は明らかに減り…\k\n　そんなこんなで、自分に唯一話し掛けてくる、とあるクラスメイトのウザさは飛躍的に増していく。\k\n　北原は、信者たちの押し付けに扮した後押しを得て、それはもう義務感いっぱいに、毎日のようにかずさに話し掛け、干渉し、心配し、忠告し、そして様々な場面で教師や学園から彼女を護ろうとした。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0085>, 79, 1)  ; 　あまりのストレスに『お前はあたしに気でもあるのか！』と、彼のプライドと自分の世間体をズタズタに引き裂く、両者にとって致命的な罵声を浴びせてやろうと思ったことも一度や二度ではないくらい、かずさは切羽詰っていった。\k\n\n　―もう限界だ。\k\n　　一度だけ、あの馬鹿と話そう。\k\n　　二度と干渉しないように。二度と話し掛けてこないように。\k\n　　二度と、あたしを惑わそうとしないように。\k\n　　それでも聞き入れてくれないなら、あとは力で解決するしかない。\k\n　　だって、もう限界なんだ。\k\n　　心の中の何もかも、ぶちまけてしまいそうなんだ、あいつに…
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
CALL SetTimeMode
OPERATOR POP

PUSH INT 1
PUSH INT 1010
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

PUSH INT 8
PUSH INT -2
PUSH INT 1
PUSH INT 255
CALL M
OPERATOR POP

@VCALL SetMessageE(RES<0086>, 80, 1)  ; 「冬馬、だいたいお前、北原にどれだけ負担を掛ければ気が済むんだ！」\k\n「………ぇ？」\k\n　けれど、そんな思いを抱えていたかずさに、想像もしていなかったところから北原派の横槍が入ることになる。\k\n「あの、諏訪先生…お気遣いはありがたいのですが、ここは担任の私が」\k\n　一学期の期末試験が終わり、学生たちの間につかの間の安堵感が広がっていた<R初夏のあ|しゅうぎょう><Rる日|しき>。\k\n　職員室に呼び出されていたかずさは、そこで予想もしなかった相手から予想もしなかった名前を出されしばし呆然となった。\k\n「いつまでもそうやって特別扱いしてるからこういうことになるんです。もう冬馬は音楽科の特待生なんかじゃない。普通科の落ちこぼれだ！」\k\n「は、はぁ…」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0087>, 81, 1)  ; 　もちろん、呼び出された理由は予想がついていた。\k\n　期末試験の結果が全教科見事に赤点だったのは、クラスどころか学年でもただ一人だと聞いていたから。\k\n「なんでも、何もかも面倒見させてるらしいじゃないか」\k\n「…知らない。頼んだこともない」\k\n　そしてもちろん、そうなる理由もちゃんと理解できていた。\k\n　予習も復習も、それどころか授業を聞くことすらせずに、教室では常に寝ているか、寝ているふりで隣人観察に勤しんでいたかずさが試験で三十点以上取ることなど不可能に決まっていたから。\k\n「この前の進路指導表なんて一人だけ提出が遅れたのを北原に謝らせたらしいな。しかもあいつに自分が提出期限を間違えたなんて嘘をつかせたんだって？」\k\n「だからそんなことしてない…委員長が勝手に言ってるだけで」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0088>, 82, 1)  ; 「そうやって責任転嫁か？　北原が庇ってくれるのをいいことに全部人のせいにして自分は涼しい顔か？」\k\n「っ…」\k\n　しかしそういう意味では、かずさの気を散らせて勉強への意欲を減退させた理由の一つである北原を引き合いに出して責められるのは釈然としなかった。\k\n「大体、志望先が峰城大というのはどんな冗談だ？　お前に推薦なんか出せるとでも思ってるのか？」\k\n「それは…委員長が何でもいいって」\k\n「ほうら、また責任転嫁じゃないか」\k\n「………」\k\n　しかもその相手が指導部長の諏訪という、去年からのかずさの天敵とあっては…
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0089>, 83, 1)  ; 「音楽科の頃と同じ感覚でいてくれたらこちらとしても迷惑なんだよ。いつまで一年の時の栄光を引きずってるつもりだ？」\k\n　音楽科全体がかずさを見放し始めた頃から、目の前の諏訪は何度も彼女と衝突するようになった。\k\n　今までの、一生徒でしかないかずさの顔色を伺い何も言えない教師たちとはある意味一線を画していて、言いたいことはどんな苦言でもハッキリ本人に対して言うし、態度も堂々としていて、さらに内容だって正論に近かった。\k\n　しかし、だからと言ってかずさが支持したり、言われた通り反省するかと言えばそれはまた別の話で…\k\n　苦言は嫌味と、堂々たる態度は傲慢と、正論は揚げ足取りと解釈すれば、そこには一人の最低な中年教師がいるだけで、かずさの逆恨みは根深いものに育っていた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0090>, 84, 1)  ; 「そもそも、ピアノに期待して入学させてやったんだから、転科なんて認めるべきじゃなかったんだ」\k\n「別に退学にしてもいいけど？　ウチからの寄付金いらないんならどうぞご勝手に…」\k\n
PUSH INT 0
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 0
PUSH INT 9
PUSH INT 0
PUSH INT 0
PUSH INT 255
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 1
PUSH INT 16
PUSH INT 30
PUSH INT 0
PUSH INT 32
CALL SetShake
OPERATOR POP

PUSH INT 30
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0091>, 85, 0)  ; 「っ！　それが学生の態度か！」\k\n　―それが聖職者の態度か！\k\n「す、諏訪先生…今日のところはそのくらいで。冬馬も反省しているみたいですし」\k\n「これが反省してる態度ですか！」\k\n　―誰が反省してるって？\k\n\n　別に、言ってしまっても良かったけれど、売り言葉に買い言葉では諏訪にいいように操られているみたいでそれも嫌だった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0092>, 86, 1)  ; 「言われなくたって…っ」\k\n
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

PUSH INT 0
PUSH INT 1012
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

@VCALL SetMessageE(RES<0093>, 87, 0)  ; 　もの凄い勢いで職員室の扉を叩き締めると、かずさは憤懣やるかたない趣でずかずかと廊下を歩く。\k\n　女子にしては長身で、すらりとした手足を持ち、出るところは出て引っ込むところは引っ込んでいるモデル体型のかずさが広いステップで歩くと、普段ならそれだけで彼女の真の姿を知らない下級生などは見とれてしまうほど絵になるけれど、今はその顔に張り付いた表情がとてもそんな優雅さを感じさせてはくれなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0094>, 88, 1)  ; 　『だいたい、音楽室を一人で勝手に使う生徒なんて聞いたことがない』\k\n　―別に頼んだ覚えなんかない。お前らが勝手に差し出したんだ。\k\n　『今のお前を母親が知ったらなんて言うか…』\k\n　―親なんか関係ないだろ。\k\n　『もし俺だったら、先生方や親御さんに申し訳なくていたたまれないな』\k\n　―あたしは、お前なんかとは違う。\k\n　『勉強でも必死で頑張って皆についていくか、それとも…』\k\n　―そう、言われなくたって。\k\n　　こんなところ、もう出てって…
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 15
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 1007
PUSH INT 0
PUSH INT 60
PUSH INT 0
PUSH INT 0
PUSH INT 0
PUSH FLOAT 1280
PUSH FLOAT 720
CALL B
OPERATOR POP

@VCALL SetMessageE(RES<0095>, 89, 1)  ; 「あ、いたいた！　冬馬！」\k\n「っ…」\k\n　そうやって、せっかく近寄りがたい雰囲気を思いっきり醸し出していたのに、相変わらず人の顔を見ず、と空気を読まず、何も考えずに寄って来る。\k\n　今日は終業式だから、普通ならとっくにいないはずの帰宅部員が…\k\n「何言われた？　かなり長い時間絞られてたみたいだけど…」\k\n「………」\k\n　言われたも何も、散々だった。\k\n　後を引き継いだ担任も結局『これ以上北原に迷惑かけるなよ』などと、諏訪の言いなりみたいな態度を取り、かずさの苛つきをますます大きく育ててくれた。\k\n「にしても冬馬さ、本当に俺のノート使ったのか？　八割以上はヤマ当たってたはずなんだけどな」\k\n「………」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0096>, 90, 1)  ; 　職員室の誰もが、目の前の委員長の味方だった。\k\n　かずさがかつて『音楽科の誉れ』だったのと同じように、彼が今の『普通科の誇り』だったから。\k\n「追試、受けるよな？」\k\n「………」\k\n　そしてかずさは、普通科にやってきても結局普通にはなれなかった。\k\n　特別な優等生から、特別な劣等生へ。\k\n　教師も、クラスメイトも、委員長も…\k\n　かずさを普通に無視してくれる相手は一人もいなかった。\k\n「大丈夫、一学期のうちならリカバリ利くって。夏休みもあるしここで挽回すれば。なんなら俺…」
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0097>, 91, 1)  ; 「っ！」\k\n「え…」\k\n　だからかずさは、いつも通り。\k\n　誰にでも、牙を剥く。\k\n「………」\k\n　自分でもあんまりだと思うくらいに冷たい視線で北原を射抜くと、すぐに表情を消し、そこに誰もいないかのように彼の目の前を通り過ぎる。\k\n
PUSH INT 0
PUSH INT 8245
PUSH INT 0
PUSH INT 1
PUSH INT 200
PUSH INT 0
CALL SEP
OPERATOR POP

@VCALL SetMessage(RES<0098>, 92, 0)  ; 「あ、ぁ…冬、馬？」\k\n
PUSH INT 0
PUSH INT 150
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0099>, 93, 0)  ; 　北原は、今度こそ呆然とかずさを見送るしかできなかった。\k\n　あのお節介男が、空気を読まない馬鹿が、初対面の時みたいに凍りついていた。\k\n　だからかずさは、今度こそおしまいだと信じられた。\k\n　もう彼は、二度と声を掛けてくることはないだろう。\k\n　自分で恩だと信じていた好意を、ここまで激しい仇で返されたら、誰だって…
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

@VCALL SetMessage(RES<0100>, 94, 1)  ; 「…馬鹿野郎」\k\n　かずさのその呟きは、彼と自分のどちらに向けられたものか、本人にもわかっていなかった。\k\n\n
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
PUSH INT 9725
PUSH INT 60
PUSH INT 1
PUSH INT 255
PUSH INT 0
CALL SEP
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

@VCALL SetMessageE(RES<0101>, 95, 0)  ; 　その日の第二音楽室では、激しいリサイタルが繰り広げられた。\k\n　開け放たれた窓から校庭の隅々にまで響き渡るデタラメに速いリズムの大音響に、部活中の運動部員たちが何度も足を止め、呆然と三階の窓を見上げていた。\k\n　終業式も済み、夏休みに入っても、かずさは今日までは『第二音楽室の主』だった。\k\n\n　ピアノの大音響に完全に負けていたけれど、『スモーク・オン・ザ・ウォーター』のギターソロが風に乗って微かに流れてきた。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0102>, 96, 1)  ; 　諏訪の言う通り、この第二音楽室はかずさの横暴の象徴だった。\k\n　かずさがここにいてピアノを弾くだけで、反感を覚える人たちが、迷惑を受ける人たちが、損害を被る人たちがいる。\k\n　それでも彼女は、もうここから出て行くことはできない。\k\n　なぜならこの学園の中で、自分の居場所はもうここにしかなかったから。\k\n「………っ」\k\n　気持ちの速さに指が追いつかない。\k\n　鍵盤を叩く強さが調整できず痛覚が麻痺しかけている。\k\n　腕が落ちたせいだけじゃなく、今日のかずさは、明らかに入れ込みすぎだった。\k\n\n　ギターの音色が季節感を無視して『なごり雪』に変わった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessage(RES<0103>, 97, 1)  ; 　明日から夏休み。\k\n　そんな節目の日に、かずさの『独りになりたい』という願いが、やっと叶った。\k\n　唯一、自分に話しかけてきていた鬱陶しい委員長を排除することができたから。\k\n　これで一月以上は顔を合わせることもなく、その間、彼は二人の間にできた溝を埋めることもできず、あとはお互いの距離が開く一方。\k\n　多分、もう卒業まで余計な干渉に煩わされずに済む。\k\n　だからかずさは、今日までのことは綺麗に忘れ、明日からのことに思いを馳せる。\k\n　独りを思う存分満喫できる夏休みに。\k\n\n
PUSH INT 0
PUSH INT 120
CALL SES
OPERATOR POP

@VCALL SetMessageE(RES<0104>, 98, 0)  ; 　―旅に出るのもいいかもしれない。\k\n　　誰も自分を知らない、街とも呼べないようなちっぽけな地で。\k\n　　日がな一日宿に引きこもり、孤独の闇に包まれる。\k\n　　そんないつも通りの、何も変わることのない日常…
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

PUSH INT 1
PUSH INT 1005
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

@VCALL SetMessage(RES<0105>, 99, 1)  ; 　いつの間にか、ピアノの音は止んでいた。\k\n　楽しい楽しい夏休みを思い浮かべていたら、指が止まってしまっていた。\k\n　…なぜか今は、自分の力で手に入れたはずの独りぼっちが、やけに痛かった。\k\n\n
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
PUSH INT 9712
PUSH INT 0
PUSH INT 1
PUSH INT 150
PUSH INT 0
CALL SEP
OPERATOR POP

PUSH INT 270
PUSH INT 0
PUSH INT 0
CALL Wait
OPERATOR POP

@VCALL SetMessageE(RES<0106>, 100, 0)  ; 　ギターの音色がいつも通り『ホワイトアルバム』に…\k\n\n「………へったくそぉ」\k\n　その呟きを発した時、確かにかずさの口元は端が吊り上がっていたけれど、目元の方はとても笑っているとは言い難いほどに歪んでいた。\k\n　それは、一学期の間に何度も聞かされた、なかなか上達しないヘタクソなギター。\k\n　幾たびもかずさの演奏に割り込んできては何度もミスを繰り返し、こちらが止めても諦めず、こちらが続けてる最中に挫け、調和も何もない自己中な個人練習。
PUSH INT 1
CALL EndMessage
OPERATOR POP

@VCALL SetMessageE(RES<0107>, 101, 1)  ; 　こちらにとってみたら明らかに邪魔なのに、たまに向こうの音がこちらに寄り添おうとしていることがあり、あまりの身勝手ぶりに呆れたことも数知れない。\k\n　でも…\k\n「もうちょっとだ…」\k\n\n　今日の『ホワイトアルバム』は、ギリギリノーミスで続いていた。\k\n\n　動かなくなっていた指に、また少しずつ力がこもる。\k\n　こちらも、もう一曲くらいなら弾けそうな気がしてくる。\k\n　今、かずさの側にいてくれるのは、隣の拙いギターだけだった。
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

@VCALL SetMessageE(RES<0108>, 102, 1)  ; 　冬馬かずさは、空が嫌いだった。\k\n　梅雨明け直後の、入道雲が湧き昇る濃い青空が大嫌いだった。\k\n　教師も、生徒も、周囲の世界の全てが嫌いだった。\k\n　今日からしばらく会えなくなる、馴れ馴れしい男子生徒が、大嫌いだった。\k\n　だけど冬馬かずさは…この小さな騒音だけは、そんなに嫌いじゃなかった。
PUSH INT 1
CALL EndMessage
OPERATOR POP

PUSH INT 30
PUSH INT 1
CALL NB
OPERATOR POP

PUSH INT 1
PUSH INT 180
CALL SES
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

ARRAY_S RES<0109>  ; 5002
PUSH INT 0
CALL SLoad
OPERATOR POP

STATEMENT HALT
