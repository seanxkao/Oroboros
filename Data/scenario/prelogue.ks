@bgm storage="Fatestay night [Realta Nua] (PS Vita) OST - Deep Slumber (2012).ogg" loop="1"
@fadebgm volume="100" time="100"
;@bgm storage="did_opening.ogg" loop="1"
@snowinit
;flowersea fadein
@image visible="1" opacity="255" layer="stage" pos="center" storage="black"
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="flowersea_00"
@trans time="1000" method="crossfade"
@wt canskip="false"
;show dialog
@dia
我做了一個夢。[w]
一如往常地，天上降下了[tips color=0x8888ff name=嗎哪]嗎哪[endtips]，白色的蜜汁渲染在盛開的鮮花之上。[lr]
花海包圍的中央放著早已準備好的咖啡。[w]
唯一不同的是，這次多了一位戴著面具的訪客。[w]
;神降臨動畫(黑影)
@image left="442" page="back" mopacity="255" opacity="0" visible="1" mcolor="0x000000" layer="0" top="100" storage="kami_01"
@backlay
@image left="442" page="back" mopacity="255" opacity="255" visible="1" mcolor="0x000000" layer="0" top="100" storage="kami_01"
@trans time="500" method="crossfade"
@move page="fore" time="500" path="(442,125,255)" layer="0"
@move page="back" time="500" path="(442,125,255)" layer="0"
@wt canskip="false"
@wm canskip="false"
@wm canskip="false"
;神降臨動畫(現身)
@backlay
@image left="442" page="back" opacity="255" visible="1" layer="0" top="125" storage="kami_01"
@trans time="1500" rule="02" method="universal"
@move page="fore" time="1500" path="(442,200,255)" layer="0"
@move page="back" time="1500" path="(442,200,255)" layer="0"
@wt canskip="false"
@wm canskip="false"
@wm canskip="false"
@chara
戴面具的人[endchara]
你確定要這麼做？[w]
@chara
戴面具的人[endchara]
明明可以繼續維持現狀，要現在就做出這種決定嗎？[w]
@chara
我[endchara]
這不是廢話嗎?[w]
我輕啜一口被嗎哪點綴的咖啡，那熟悉的味道依舊征服我的味蕾......[lr]
不過這應該也是最後一次了。[w]
@chara
我[endchara]
再這樣下去，也只會一起走向滅亡。[lr]
不如現在就放手一博，開誠布公的決定......[w]
@font color="0xff0000" size="48"
決定，誰才是我們的主人。[w]
@chara
戴面具的人[endchara]
......你都這樣說的話，我根本沒權力拒絕你吧。[w]
從我這邊，可以清楚聽到他輕聲地嘆了口氣。[w]
天上落下的嗎哪數量不減反增，花海已蛻變成白靄靄的大地。[lr]
我知道，這是這個夢將要結束的徵兆。[w]
@chara
戴面具的人[endchara]
畢竟，你我其實並無不同。[w]
;神消失動畫(黑影)
@backlay
@image left="442" page="back" mopacity="255" opacity="255" visible="1" mcolor="0x000000" layer="0" top="200" storage="kami_01"
@trans time="600" rule="03" method="universal"
@move page="fore" time="600" path="(442,150,255)" layer="0"
@move page="back" time="600" path="(442,150,255)" layer="0"
@wt canskip="false"
@wm canskip="false"
@wm canskip="false"
;神消失動畫(消失)
@backlay
@image left="442" page="back" mopacity="255" opacity="0" visible="1" mcolor="0x000000" layer="0" top="150" storage="kami_01"
@trans time="300" method="crossfade"
@move page="fore" time="300" path="(442,125,0)" layer="0"
@move page="back" time="300" path="(442,125,0)" layer="0"
@wt canskip="false"
@wm canskip="false"
@wm canskip="false"
語畢，他消失在我的眼前，甚麼也沒有留下。[w]
@backlay
@image page="back" mopacity="128" pos="center" visible="1" mcolor="0xffffff" layer="stage" storage="flowersea_00"
@trans time="1000" method="crossfade"
@wt canskip="false"
世界，成了一片雪白。意識，也隨之逐漸消逝。[w]
@chara
我[endchara]
如果我的意識也如同這個世界一樣消逝，不就好像在說我其實也是這個地方不需要的存在嗎......[w]
@backlay
@image page="back" mopacity="255" pos="center" visible="1" mcolor="0xffffff" layer="stage" storage="flowersea_00"
@trans time="1000" method="crossfade"
@wt canskip="false"
我呢喃著，輕閉上眼。[w]
然後，這就是最後一次了。[w]
當面具被脫下之時，整個世界會變得截然不同，自己可能也不復存在。[w]
@hidemes
@snowuninit
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="black"
@trans time="2000" method="crossfade"
@fadebgm volume="0" time="2000"
@wait canskip="false" time="2000"
@l
@clockinit
@setclock date="第一天" time="08:00 AM"
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="room_01"
@trans time="1500" method="crossfade"
@wt canskip="false"
@l
@showmes
陽光灑進房間中，宣告著今天的好天氣。[lr]
而房間的主人們，也跟之前一樣閒話家常。[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
嘿，我等等就要去比賽了。你們要不要來欣賞我的英姿？[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
依我來看，這場比賽大概會像湘北打津久武一樣---輕鬆獲勝吧！[lr]
比起看這種可想而知的對決，倒不如去看蘿球社。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
楊昊，我今天有其他的事情，可能沒辦法去啦，抱歉。[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
反正又是泡妞什麼的吧，周曉昀哥。[lr]
你管不太住你的下半身可是眾人皆知的事情。[w]
@charaimage time="200" storage="id1_01"
@chara
袁御曦[endchara]
將你們雙方隊員組成的實力進行交叉分析後，我計算出你們有98%的勝率。[lr]
雖然還是有機會打出一場精彩可期的比賽，但那2%的可能性幾乎可以忽略。[lr]
所以比起現場觀摩，我寧可把時間拿來處理別的事，比如說這次作業。[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
作業？好險我和莊旭偉都沒修這門課，不然我們今天大概會全泡湯了。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
雖然這堂課loading很恐怖，但總還是有好處啊。[lr]
畢竟這堂課修的女生不少，可以適時假借教導做一些糟糕的事情...[lr]
...哈哈！你說是吧，任名晃？[w]
@charaimage time="200" storage="main_01"
@chara
任名晃[endchara]
......(點頭)。[w]
@charaimage time="200" storage="id1_01"
@chara
袁御曦[endchara]
對了，任名晃，我記得你昨天有問題想問我，我們約個時間來教你吧！[lr]
是不是跟我的作業一樣是賽局理論？[w]
@charaimage time="200" storage="main_01"
@chara
任名晃[endchara]
......(點頭)。[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
好吧！反正我頂多打個20分鐘就回來，畢竟我可不想和那種練習時都在打屁哈拉的隊伍消磨太久。[lr]
還有莊旭偉呀，別再看奇怪的小說了，何不來打個球？不然你只會變得越來越肥。[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
喔喔，那我等看完這本就去老地方打球......怎麼覺得好像立了奇怪的flag了？[w]
@charaimage time="200" storage="id1_01"
@chara
袁御曦[endchara]
我記得你上次說玩完遊戲就要去讀微積分，然後微積分就被當了。[lr]
明明那次我15分鐘就寫完了。[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
寫你15分鐘才寫完的考卷根本就是拿木刀打最後Boss吧！[lr]
...啊，雖然銀魂裡面有辦法就是了。[w]
稀鬆平常的對話持續進行著。[w]
;神降臨動畫(黑影)
@image left="442" page="back" mopacity="255" opacity="0" visible="1" mcolor="0x000000" layer="0" top="100" storage="kami_01"
@backlay
@image left="442" page="back" mopacity="255" opacity="255" visible="1" mcolor="0x000000" layer="0" top="100" storage="kami_01"
@trans time="500" method="crossfade"
@move page="fore" time="500" path="(442,125,255)" layer="0"
@move page="back" time="500" path="(442,125,255)" layer="0"
@wt canskip="false"
@wm canskip="false"
@wm canskip="false"
;神降臨動畫(現身)
@backlay
@image left="442" page="back" opacity="255" visible="1" layer="0" top="125" storage="kami_01"
@trans time="1500" rule="02" method="universal"
@move page="fore" time="1500" path="(442,200,255)" layer="0"
@move page="back" time="1500" path="(442,200,255)" layer="0"
@wt canskip="false"
@wm canskip="false"
@wm canskip="false"
直到某個瞬間，毫無預警的，房間出現了一個戴著面具的怪人。[lr]
從他的身上傳來一種香甜、讓人成癮的氣味。[w]
@chara
大家[endchara]
!!!???[w]
大家都被憑空出現的來訪者嚇到。[w]
剎那之間，楊昊拿起了身旁的啞鈴，袁御曦把筆電藏到了自己的後面。[lr]
而周曉昀則是跑去了房間角落，和莊旭偉、任名晃站在一起。[w]
@charaimage time="200" storage="kami_01"
@chara
戴面具的人[endchara]
唉呀呀，別這麼激動嘛！我沒有惡意的，在場的各位！冷靜一下！[w]
從面具底下傳來的聲音，若是在旁人耳中根本與普通人無異。[lr]
但對房間內的所有人來說，突如其來的他已經讓他們無法冷靜思考了。[w]
@image left="743" visible="1" page="back" layer="1" top="125" storage="id2_01"
@trans time="200" method="crossfade"
@wt canskip="false"
話還沒說完，楊昊已跑到了蒙面怪客後面，想要先發制人。[lr]
@backlay
@move page="fore" time="1000" path="(443,125,255)" accel="2.5" layer="1"
@move page="back" time="1000" path="(443,125,255)" accel="2.5" layer="1"
@image left="442" page="back" opacity="0" visible="1" layer="0" top="125" storage="kami_01"
@wait canskip="false" time="800"
@trans time="200" method="crossfade"
@wm canskip="false"
@wm canskip="false"
@wt canskip="false"
但出乎預料的，他碰到怪客的那瞬間，怪客就消失了...[w]
...不，並不是消失，而是直接飄在空中。[w]
@chara
戴面具的人[endchara]
唉呀唉呀，真過分。雖然我沒有打招呼，但這種時候應該先確認來訪者的身分吧。[w]
@chara
袁御曦[endchara]
不......不可能，人竟然會飛？[lr]
他一定是擁有什麼裝置，才能夠滯空的......[w]
@chara
戴面具的人[endchara]
是這樣嗎？那我也讓你飛起來感受一下吧。[lr]
喔，還有剛剛那個想拿啞鈴打我的肌肉男，也給你一點小小的處罰。[w]
戴面具者一彈指，袁御曦便直接原地飄了起來。[lr]
而楊昊的毛巾纏住了他的手，開始變得越來越緊......[w]
@chara
袁御曦[endchara]
喔喔喔喔喔喔喔喔！[lr]
呃，什麼？我飛起來了？這...這不可能啊......[w]
@chara
楊昊[endchara]
我的手！......你這傢伙......[w]
@charaimage time="200" storage="kami_01"
@chara
戴面具的人[endchara]
你們這下相信我有超能力了吧？[lr]
事實上......我就是神。[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
喔喔喔！！這種奇怪的超展開！等等要是從天上掉下來美少女我也覺得很正常啦！[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
莊旭偉，先不要說話，不然事情會變得更複雜。[w]
@chara
周曉昀[endchara]
比起確認你是不是神，你可以先把袁御曦和楊昊放開嗎？[lr]
現在這樣我們是沒有辦法好好談話的。[w]
@charaimage time="200" storage="kami_01"
@chara
神[endchara]
唉呀，真是抱歉了，我沒注意到這件事情呢。[w]
語畢，神只是手一揮，前一刻還飄在空中的袁御曦就直接掉了下來，而纏在楊昊手上的毛巾也鬆開來了。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
楊昊，先冷靜一下，就現況來看，這傢伙要把我們全部制服住也是輕而易舉的事情。[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
......嘖。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
好...既然你自稱神的話，你來找我們這5個普通人又是想要什麼？[w]
@charaimage time="200" storage="kami_01"
@chara
神[endchara]
普通人？[lr]
......沒錯！你們就是普通人！所以我才會來找你們的！[w]
@chara
神[endchara]
老實說，我現在很困擾，因為最近都沒什麼好玩的事情，所以我一直在找方法消遣。[lr]
於是，我剛剛想到了:[w]
@chara
神[endchara]
我想找一些人幫我一點忙，[lr]
而幫我最多的那個人呢...我可以幫他達成一個願望！[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
簡單來說就是娛樂你，來換得願望的概念嗎？我們這樣有點像馬戲團小丑啊？[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
...的確，我們這樣有點像小丑。[lr]
不過比起這個，要我們幫忙的話也要先把事情說清楚吧？[w]
@charaimage time="200" storage="kami_01"
@chara
神[endchara]
簡單來說，我會給你們每個人這樣的一個小瓶子......[w]
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="bottlescene"
@trans time="1000" method="crossfade"
@wt canskip="false"
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
上面有一顆愛心和一條龍......我知道了，看來是要我們攻略龍，對吧！[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
呃......怎麼想都不對吧。[w]
@charaimage time="200" storage="kami_01"
@chara
神[endchara]
那個心狀標誌這個確實是愛心，不過這條不是龍，是[font bold=true]銜尾蛇[font bold=false]。[lr]
所以這個瓶子就叫做[font bold=true]銜尾蛇之腹[font bold=false]。[w]
@chara
神[endchara]
只要你們成為了這個瓶子的擁有者，你們在和別人談戀愛的同時，就會有能量滴入瓶子裡面。[lr]
當[font bold=true]銜尾蛇之腹[font bold=false]被裝滿的同時，我就可以幫你們滿足一個願望，就是這麼簡單。[w]
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="room_01"
@trans time="1000" method="crossfade"
@wt canskip="false"
@charaimage time="200" storage="id1_01"
@chara
袁御曦[endchara]
不可能不可能...這個瓶子是用從沒看過的材料做成的，不可能不可能......[lr]
還有剛剛的這種感覺，不可能不可能不可能......[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
先不管這傢伙了，真的只有這樣？[lr]
我們只需要去談戀愛，然後你就會實現我們的願望，沒有其他的附帶條件？[w]
@charaimage time="200" storage="kami_01"
@chara
神[endchara]
沒有。不過就算我說沒有風險，你們也不會相信吧？[lr]
那麼，從另一方面來說，如果我要強迫你們的話，我早就動手了呢...[w]
@chara
神[endchara]
總之呢，你們每個人都會有一個瓶子，要不要蒐集能量就由你們自己決定。[lr]
接下來的時間，就讓你們去攻略、實現自己的願望吧。[w]
語畢，神輕輕彈指，每個人的手中就多了一個[font bold=true]銜尾蛇之腹[font bold=false]。[lr]
與此同時，神也消失的無影無蹤。[w]
眾人面面相覷，陷入了一陣沈默。[lr]
最後，周曉昀率先開口。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
怎麼樣呀各位，我們要不要趕快去蒐集那個能量啊？[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
...所以剛剛那個到底是什麼？我搞不太明白。[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
有一種在蒐集龍珠的感覺呀。看來四個人要開始互相廝殺了...[lr]
...你說為什麼是四個人？因為身為一個肥宅，我根本不可能攻略到人的，嗚嗚。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
欸？我記得不是有個學姐會和你討論動畫嗎？[lr]
而且還是我幫你開啟話題的，連這種事情都忘記了嗎?[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
我...我們才不是這種關係，不要亂說。[w]
@charaimage time="200" storage="id1_01"
@chara
袁御曦[endchara]
你們慢慢聊吧，我要去找個地方好好思考剛才事件的合理解釋......[lr]
周曉昀，有什麼新消息一定要告訴我，我吃完晚餐再回來。[w]
@charaimage time="200" storage="id2_01"
@chara
楊昊[endchara]
我也要去比賽了。[lr]
周曉昀，就交給你調查吧，這種超自然的東西袁御曦是絕對無法理解的。[lr]
我和袁御曦都聽你的。[w]
@charavanish time="200" storage="id2_01"
袁御曦和楊昊離開房間。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
真是協調性低的人......莊旭偉，你知道銜尾蛇是什麼嗎？[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
說到銜尾蛇就不得不提鋼之煉金術師了！[lr]
裡面的人造人都有一個銜尾蛇刺青，因為那個符號就是煉金術、無限的意思。[lr]
所以我認為那個瓶子裏面就是種能量的概念。[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
雖然很想吐槽說前面有點像廢話......不過等等.....原來如此......[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
喔？周曉昀哥想到什麼了？[w]
@charaimage time="200" storage="id4_01"
@chara
周曉昀[endchara]
都變成這樣了，只好來認真攻略一番吧。[lr]
不過我也沒什麼可以正式攻略的對象啦，只好去亂槍打鳥了......[lr]
不過、莊旭偉你先去吧，我還想要留在這裡一下。[w]
@charaimage time="200" storage="id3_01"
@chara
莊旭偉[endchara]
好吧，那我先走了，周曉昀哥保重啊！[w]
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="black"
@trans time="2000" method="crossfade"
@fadebgm volume="0" time="2000"
@wait canskip="false" time="2000"
@l
@setclock date="第一天" time="01:30 PM"
@backlay
;@oldmovieinit
;@image visible="1" rgamma=1.2 bgamma=0.5 ggamma=0.8 mcolor=0x886644 mopacity=192 page="back" layer="stage" pos="center" storage="room_01"
@image visible="1" page="back" layer="stage" pos="center" storage="classroom_04"
@trans time="750" rule="00" method="universal"
@wt canskip="false"
@showmes
@se buf="0" loop="true" storage="Click_Continuous.ogg"
我再次來到這間通常沒有人的教室，打開我的大型筆電查閱資料。[w]
這是我的習慣。[w]
畢竟若在宿舍裡，還得應付其他四個人...應該說三個人，畢竟任名晃不怎麼愛說話。[w]
只是偶爾會分享他看到的書、找我聊天或是拜託我幫忙寫作業。[w]
我並不是討厭他們、或覺得他們很礙事，只是我在專注時並不喜歡和別人說話。[w]
打開了大量的參考資料，以各國語言寫成的學術論文和各式各樣的原文書一覽無遺。[lr]
我從其中篩選出幾篇可能有答案的文章，瀏覽過一遍之後卻仍然沒有解決我心中的疑惑。[w]
@stopse buf="0"
@chara
我[endchara]
...神嗎？[w]
明知不會有任何人聽到，我仍忍不住輕聲呢喃。[w]
@chara
我[endchara]
在房間裡發生的事情可不能完全用幻覺來說明，畢竟如果靠藥物讓我們看到幻覺的話我現在並不可能如此正常的在分析事情......[w]
@chara
我[endchara]
雖然說我本來就不是絕對的唯物論者，但是神這種存在突然出現在我們眼前，保守估計可能性也低於0.00001%吧。[w]
@chara
我[endchara]
而且當時空間也感受不到熱量突然被剝奪或是其他可能造成這種狀態的原因......[w]
@chara
我[endchara]
啊啊啊，這不科學呀！[w]
@charaimage time="200" storage="g3_01"
@chara
???[endchara]
什麼東西不科學呀?[w]
背後傳來有些甜美而熟悉的聲音，[lr]
@chara
我[endchara]
我是在說神......
@se buf="0" storage="clong_2.ogg"
@quake time="500" vmax="20" hmax="20"
嗚哇！[w]
我被突然出現的她嚇了一大跳。[w]
@chara
我[endchara]
是女三嗎？別嚇我呀，妳知道被嚇一次會消耗多少熱量嗎？[w]
我向這位神出鬼沒的學妹抱怨著。[w]
@chara
女三[endchara]
沒關係啦，反正不是聽說被嚇90分鐘消耗的卡路里就和慢跑30分鐘差不多？[w]
@chara
女三[endchara]
這樣一來，如果算學長心跳加速大概10秒好了，那大概就和3.33秒的慢跑消耗一樣多，應該還好吧？[w]
她露出一個看起來完全沒有悔意的微笑。[w]
@chara
我[endchara]
...妳還真的相信網路上那種內容農場寫的嗎？[r]
讓我來告訴妳真正的......[w]
@chara
女三[endchara]
所以說學長，什麼神呀?[w]
我還沒說完就被她打斷了，讓我有一點不悅。[w]
不過比起這個，我還是說些話含糊帶過吧，不然這個學妹會不斷煩我。[w]
@chara
我[endchara]
我是說......[w]
@chara
女三[endchara]
突然出現在你們房間的神嗎？[w]
@chara
我[endchara]
為什麼妳會知道！？......難道說這就是我沒發現的盲點？[lr]
明明就只是個笨蛋學妹，卻擁有我所沒有的知識嗎？[w]
@charaimage time="200" storage="g3_02"
@chara
女三[endchara]
......雖然好像說了很過份的話，但學長你的碎碎念都傳到走廊上去啦，就算我不仔細聽也都聽得到喔！[w]
從她的話語中，我發現了一絲絲的破綻。我應該戳破她的話嗎？[lr]
@nowait
@link color="0x8888ff" target="*select_ch1_3_1_a"
指出話中的破綻[endlink][r]
@link color="0x8888ff" target="*select_ch1_3_1_b"
直接不理她[endlink][r]
@link color="0x8888ff" target="*select_ch1_3_1_c"
接受她的說詞[endlink][r]
@endnowait
@s
;指出話中的破綻
*select_ch1_3_1_a
@cm
@bgm storage="objection.ogg" loop="1"
@fadebgm volume="100" time="100"
@chara
我[endchara]
不對！我特地選擇待在這裡，就是因為這間教室的隔音效果非常的好！[w]
@chara
我[endchara]
妳表示我的聲音可以傳到走廊，但依我的計算，至少要80分貝才有可能響遍整個走廊。[w]
@chara
我[endchara]
但是80分貝大概是高速電車經過的聲音大小！這是不合理的！[w]
我洋洋得意地說道。沒錯，我果然是對的！[w]
@chara
女三[endchara]
嗯，我就知道學長一定會發現這件事情的。所以我就告訴你真正的原因吧－－你的門沒關好。[w]
@fadebgm volume="0" time="10"
@se buf="0" storage="sfx-badum.ogg"
@quake time="500" vmax="20" hmax="20"
@chara
我[endchara]
......[w]
@jump target="*select_ch1_3_1_common"
;直接不理她
*select_ch1_3_1_b
@cm
@chara
我[endchara]
......[w]
@chara
女三[endchara]
太壞了吧，直接無視我！？嗚嗚......[w]
@jump target="*select_ch1_3_1_common"
;接受她的說詞
*select_ch1_3_1_c
@cm
@chara
我[endchara]
...是嗎？看來是我太大意了，我下次會注意的。[w]
@chara
女三[endchara]
咦！？啊......好喔。總覺得有點不像之前的學長呢。[lr]
有種微妙的、說不出來的溫柔呢！[w]
@jump target="*select_ch1_3_1_common"
*select_ch1_3_1_common
@chara
我[endchara]
比起這件事情，妳又是為甚麼要來這邊找我？[w]
@chara
女三[endchara]
喔，也沒什麼啦！就只是又有一些問題想問了。[lr]
不過學長似乎還在忙，就算了吧！[w]
@chara
我[endchara] 
......如果是要問問題的話，我是可以回答啦。[w]
反正也查不到有用的資料，倒不如趕快把這傢伙的問題搞定。[w]
@chara
女三[endchara]
那...學長應該對約翰納許不陌生吧？[lr]
這次作業需要他的生平資料，想聽聽看學長對這個人瞭解多少？[w]
@chara
我[endchara] 
約翰納許？這樣一位對各領域都影響深遠的偉人竟然有人不知道！[lr]
在我看來，我認為這是總白癡化的前兆。[w]
我用誇張的動作來表達我的訝異，雖然這真的讓我很訝異就是了。[w] 
@chara
女三[endchara]
我就是覺得他提出來的偏微分方程式很難嘛......[lr]
明明他還有很多事蹟的，只有我被分到這種主題，學長不覺得很過份嗎？[w]
學妹邊說邊鼓起了臉，似乎想讓我看出她真的很不滿意老師的安排。[w]
@chara
我[endchara] 
偏微分方程這種東西不是基本常識嗎？[w]
@chara
女三[endchara] 
騙人！學長這樣說，大概99%的大學生會想拿球棒打你的。[w]
學妹不知怎麼突然生氣，用拳頭輕輕打著我。明明我說的很對。[w]
@chara
女三[endchara] 
總而言之，我想要知道有關這方面的所有知識。[lr]
如果可以的話就連那個數學家的生平都告訴我吧！拜託學長了！[w]
她配上一個非常浮誇的請求姿勢，好像沒有我幫忙就會死一樣。[w]
@nowait
@link color="0x8888ff" target="*select_ch1_3_2_a"
跟她說自己很忙，請她自己去查找[endlink][r]
@link color="0x8888ff" target="*select_ch1_3_2_b"
直接不理她[endlink][r]
@link color="0x8888ff" target="*select_ch1_3_2_c"
接受她的說詞[endlink][r]
@endnowait
@s
;跟她說自己很忙，請她自己去查找
*select_ch1_3_2_a
@cm
@chara
我[endchara] 
自己去查，我可是也有事情要忙的。[w]
@chara
女三[endchara] 
咦咦！？小氣！明明之前的學長只要隨便問問都可以說上半小時呀！[w]
@chara
我[endchara] 
難得我有不知道的事情，妳還是自己去找吧。[w]
@chara
女三[endchara] 
嗚，好吧......[w]
@jump target="*select_ch1_3_2_common"
;直接不理她
*select_ch1_3_2_b
@cm
@chara
我[endchara]
那好，我就把偏微分方程的詳細全部告訴妳吧！[w]
我開始尋找所有與偏微分方程相關的檔案。[w]
@chara
女三[endchara]
咦咦！？可不可以只告訴我最基本的就好了？[w]
女三驚恐地大力搖著手。[w]
@chara
我[endchara] 
這樣啊...好吧，我就只把這本偏微分方程的重點摘要告訴妳。[w]
@chara
女三[endchara] 
那不是一般人說的重點啦，嗚嗚......[w]
雖然不知為何學妹泫然欲泣，我還是把重點都和女三說了。[w]
過程中，女三不時出現一種厭煩的眼神，但我相信這對她是有幫助的。[w]
@jump target="*select_ch1_3_2_common"
;接受她的說詞
*select_ch1_3_2_c
@cm
@chara
我[endchara] 
比起認識偏微分方程，不如讓我來講講這個偉人的故事吧。[w]
我打開傳記類的文章開始介紹他，從小時候的趣聞一路講到成年後的成就。[lr]
並且打開了"美麗境界"的電影給她看，讓她知道約翰納許大概的人生經歷。[w]
@chara
我[endchara]
哇～總覺得簡單易懂、又很詳細，作業應該沒什麼問題了呢！謝謝學長餒！[w]
@chara
我[endchara]
難得看到妳有這樣的反應......感覺妳有努力過了。[w]
@chara
女三[endchara]
我可是每天都很努力的。[w]
我稍微停頓了一下。[w]
@chara
我[endchara]
還需要我說明嗎？依照我的估計，我還可以再講上大約1小時。[w]
@chara
女三[endchara]
夠了啦、夠了啦！反正這堂課又不是數學課，隨便寫寫就好。[w]
@chara
我[endchara]
要學習就必須全心全意的......別跑呀！喂！[w]
@chara
女三[endchara]
總之，謝謝學長！學長有需要幫忙的地方也可以找我，這可是專屬於你的機會唷。[w]
@jump target="*select_ch1_3_2_common"
*select_ch1_3_2_common
看著離開的學妹，我搖了搖頭。再看看手錶，才發現時間已經不早了。[w]
@chara
我[endchara]
看來還是去隨便吃個飯、收收回去好了，暫且不管那個瓶...[w]
@chara
我[endchara]
...啊啊啊，到底為什麼！不行，在我解開之前我是不會離開的！[w]
於是，我繼續在教室尋找資料，直到被學校警衛趕了出來。[w]
@fadebgm volume="70" time="1500"
@hidemes
;crossfade
@backlay layer="stage"
@image visible="1" page="back" layer="stage" pos="center" storage="black"
@trans time="400" rule="00" method="universal"
@wt
;fadein slash
@backlay layer="stage"
@image visible="1" page="back" layer="stage" pos="center" storage="prologue_02"
@trans time="400" rule="crossfade_slash_01" method="universal"
@se buf="0" storage="sword-gesture2.ogg"
@wt
;fadeout slash + fadein sparkle
@image visible="1" mode="psadd" opacity="50" layer="0" pos="center" storage="prologue_03"
@action time="50" opacity="0" layer="stage" module="LayerFadeToModeModule"
@action time="200" opacity="255" layer="0" module="LayerFadeToModeModule"
@wact canskip="false" layer="0"
@wact canskip="false" layer="stage"
@se buf="1" storage="sword-clash3.ogg"
@fadebgm volume="100" time="1500"
;fadeout sparkel + fadein white
@image visible="1" opacity="0" layer="stage" pos="center" storage="white"
@action time="500" opacity="0" layer="0" module="LayerFadeToModeModule"
@action time="1000" opacity="255" layer="stage" module="LayerFadeToModeModule"
@wact canskip="false" layer="0"
@wact canskip="false" layer="stage"
@wait canskip="false" time="500"
@showmes
@r
但是。[lr]
要貫穿這身體的閃電，[lr]
被想要拯救這身體的月光彈開了。[w]
鏘啷，華麗的聲音。[lr]
@r
不，在眼前落下的聲音，比鋼鐵還要沉重。[lr]
包裹的鎧甲就如同夜晚的空氣一樣冰冷，絲毫談不上華麗。[lr]
@r
響聲是不可能會華麗的[lr]
因為作響的就是鋼鐵。[lr]
只是，那騎士擁有使那聲響變成銀鈴般聲音的美麗。[w]
@hidemes
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="prologue_04"
@trans time="2000" rule="09" method="universal"
@wait canskip="false" time="1000"
@showmes
－－－我問你，你是我的Master嗎[lr]
