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
@backlay
@image left="743" visible="1" page="back" opacity=0 layer="1" top="125" storage="id2_01"
@trans time="200" method="crossfade"
@wt canskip="false"
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
@image visible="1" page="back" layer="0" opacity=0 pos="center" storage="kami_01"
@trans time="1000" method="crossfade"
@wt canskip="false"
@chara
莊旭偉[endchara]
上面有一顆愛心和一條龍......我知道了，看來是要我們攻略龍，對吧！[w]
@chara
周曉昀[endchara]
呃......怎麼想都不對吧。[w]
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
@charaimage time="200" storage="id1_02"
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
@image visible="1" page="back" layer="0" opacity=0 pos="center" storage="id3_01"
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
背後傳來有些甜美而熟悉的聲音。[w]
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
@charavanish time="200" storage="g3_01"
@chara
我[endchara]
...妳還真的相信網路上那種內容農場寫的嗎？[r]
讓我來告訴妳真正的......[w]
@charaimage time="200" storage="g3_01"
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
@charavanish time="200" storage="g3_02"
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
@charaimage time="200" storage="g3_01"
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
@charavanish time="200" storage="g3_02"
@chara
我[endchara]
......[w]
@charaimage time="200" storage="g3_02"
@chara
女三[endchara]
太壞了吧，直接無視我！？嗚嗚......[w]
@jump target="*select_ch1_3_1_common"
;接受她的說詞
*select_ch1_3_1_c
@cm
@charavanish time="200" storage="g3_02"
@chara
我[endchara]
...是嗎？看來是我太大意了，我下次會注意的。[w]
@charaimage time="200" storage="g3_01"
@chara
女三[endchara]
咦！？啊......好喔。總覺得有點不像之前的學長呢。[lr]
有種微妙的、說不出來的溫柔呢！[w]
@jump target="*select_ch1_3_1_common"
*select_ch1_3_1_common
@chara
我[endchara]
比起這件事情，妳又是為甚麼要來這邊找我？[w]
@charaimage time="200" storage="g3_01"
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
@charaimage time="200" storage="g3_02"
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
@charaimage time="200" storage="g3_01"
@chara
女三[endchara] 
總而言之，我想要知道有關這方面的所有知識。[lr]
如果可以的話就連那個數學家的生平都告訴我吧！拜託學長了！[w]
她配上一個非常浮誇的請求姿勢，好像沒有我幫忙就會死一樣。[lr]
@nowait
@link color="0x8888ff" target="*select_ch1_3_2_a"
跟她說自己很忙，請她自己去查找[endlink][r]
@link color="0x8888ff" target="*select_ch1_3_2_b"
詳盡地回答她剛才的問題[endlink][r]
@link color="0x8888ff" target="*select_ch1_3_2_c"
把約翰納許的生平鉅細靡遺地告訴她[endlink][r]
@endnowait
@s
;跟她說自己很忙，請她自己去查找
*select_ch1_3_2_a
@cm
@chara
我[endchara] 
自己去查，我可是也有事情要忙的。[w]
@charaimage time="200" storage="g3_02"
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
;詳盡地回答她剛才的問題
*select_ch1_3_2_b
@cm
@chara
我[endchara]
那好，我就把偏微分方程的詳細全部告訴妳吧！[w]
我開始尋找所有與偏微分方程相關的檔案。[w]
@charaimage time="200" storage="g3_01"
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
;把約翰納許的生平鉅細靡遺地告訴她
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
@charavanish time="200" storage="g1_01"
看著離開的學妹，我搖了搖頭。再看看手錶，才發現時間已經不早了。[w]
@chara
我[endchara]
看來還是去隨便吃個飯、收收回去好了，暫且不管那個瓶...[w]
@quake time=1000 vmax=20 hmax=20
@chara
我[endchara]
...啊啊啊，到底為什麼！不行，在我解開之前我是不會離開的！[w]
於是，我繼續在教室尋找資料，直到被學校警衛趕了出來。[w]
@fadebgm volume="70" time="1500"
@hidemes

@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="black"
@trans time="2000" method="crossfade"
@fadebgm volume="0" time="2000"
@wait canskip="false" time="2000"
[l]
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="court"
@trans time="750" rule="00" method="universal"
@wt canskip="false"
@showmes
@se buf="0" loop="true" storage="Click_Continuous.ogg"
有些人曾說，努力就能克服一切。[lr]
但是我知道，天才和庸才的差距是難以弭平的。[w]
@chara
敵隊球員[endchara]
「「快擋住他！」」[w]
我獨自運球快攻，兩個身高超過我10公分的對手在我面前擺出包夾的守備陣形。[lr]
光看動作就知道這兩人絕對是訓練有素，幾乎找不到任何空隙突破。[lr]
但，這只是一般人的想法罷了。[w]
對我來說，過度訓練就是最大的弱點。[lr]
只要越大量的訓練，動作就會越接近俗稱的標準，[lr]
或可以說是教科書式的防守。[w]
但是，再怎麼完美的動作，只要判斷力不足，都是白搭的。[w]
@chara
控衛學長[endchara]
楊昊，傳球！[lr]
你過不去的！[w]
左後的控衛學長大喊。[lr]
身為一個優秀的控衛，那個學長的判斷有時候連我都會認同，[lr]
但很明顯，這次他太小看我了。[w]
我作勢要把球傳給那名學長，[lr]
但在防守的那兩人被這假動作騙到的一瞬間，我把球收了回來，並從右邊輕鬆地外側過人。[w]
－－這個時候，對方的控球後衛出現在我面前。[lr]
他也和我一樣，具有超乎常人的判斷力。[lr]
不過－－對我來說，從他的動作看出他的意圖根本輕而易舉。[w]
從他的肌肉緊繃程度和他的姿勢，我找到他的防守空隙，並且在他面前輕鬆地帶球上籃。[w]
@chara
敵對球員[endchara]
不可能......[lr]
這是何等的反射速度......[w]
我聽見了對手的呢喃，但是我一點都不在意，立刻回去自己場邊防守。[lr]
然後，再運用對手的一個小失誤輕鬆的抄截、得分。[w]
我無堅不摧的攻勢讓對手戰意全消，[lr]
僅僅只是4分鐘，得分差距早已拉開到了無法逆轉的地步。[w]
@chara
女生們[endchara]
楊昊好厲害！[lr]
今天的你依舊好帥唷！！！[w]
我一下場，旁邊的女生們立刻蜂擁而上，[lr]
每個都像是在發情期一樣瘋癲。[w]
@chara
楊昊[endchara]
嘛嘛，對手只是普通貨色啦。[w]
我接過她們遞上的毛巾和水，同時開始放鬆，[lr]
畢竟接下來大概不用我再度上場了。[w]
@chara
某個女生[endchara]
欸，鶴姐跟我說你們要約在老地方欸，[lr]
你們兩位發展到哪裡了？[w]
鶴姐是黃鶴的代稱，她在女生群裡面似乎十分受歡迎。[w]
@chara
楊昊[endchara]
我沒有義務告訴妳吧！[lr]
妳們還是別跟上來，免得惹鶴姐不開心了！[w]
我把水一飲而盡、然後把毛巾隨便丟在一旁，接著大步離去，[lr]
不顧後面的女生們持續傳來「呀啊啊啊～～沒想到已經發展到連一秒都等不下去了嗎！」、「閃開！那條學長的毛巾我要了！」、「別搶呀，那個水壺是屬於我的！」這般語焉不詳的話。[w]

@hidemes
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="black"
@trans time="2000" method="crossfade"
@wt canskip="false"
[l]
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="classroom_04"
@trans time="2000" method="crossfade"
@wt canskip="false"
@showmes


我來到了一個校園的一隅，大樓前綻放著紫色與黃色的花，有種隔世的感覺。[w]
在這棟大樓裡，是各個藝術系的研究或是專屬教室，[lr]
只有被稱為最頂尖的藝術學系的學生才能申請到的房間。[w]
坐落在最裡面的房間，白色的粉塵與水彩的氣息時常從門縫流洩而出，宣告房間主人豐碩的成果。[w]
@charaimage time="200" storage="g1_02"
我輕輕推開了門，看到佇立在一塊石頭面前的黃鶴，雙眼完全沒有看向我的意思。[w]
@chara
黃鶴[endchara]
現在就來了嗎？[lr]
想必這次比賽又是輕鬆打倒對手了？[w]
黃鶴屏氣凝神的望著那塊石頭，左邊的花瓶中放著許多的紫花，右手正在紙上畫著不明的塗鴉，[lr]
簡單來說，就是和平常的她一模一樣。[w]
@chara
楊昊[endchara]
當然！[lr]
除非遇到職業球員，不然我的實力可以輕鬆輾壓任何隊伍。[w]
我尋找一個地方坐下，同時看著周圍的畫與雕塑。[lr]
相較於我上次來訪，這裡又多了不少作品。[w]
@chara
楊昊[endchara]
不過...幾天不見，怎麼又做出了這麼多的作品啦！[lr]
還有這幅畫，不知道為什麼就讓人印象深刻，是仿梵谷的畫風嗎？[w]
@chara
黃鶴[endchara]
沒想到像你這種只會打籃球的過動男竟然可以察覺，[lr]
那看來這種筆觸也算是勉強及格了吧。[w]
黃鶴語氣中帶著開心和一絲絲的輕蔑，繼續打著手上的草稿。[w]
@chara
楊昊[endchara]
別小看我，這種藝術感對我來說只是小cost。[w]
@chara
楊昊[endchara]
倒是桌上這個看起來有很多人蠕動的小裝飾品是什麼？[w]
我端詳著桌上的長方形物體，感覺是某個作品的縮小版[w]
@chara
黃鶴[endchara]
......是case不是cost，你剛才勉強建立的形象可說是蕩然無存了。[w]
黃鶴的手終於停了下來，扶了扶感覺很痛的頭。[w]
@chara
黃鶴[endchara]
這個是羅丹一生中最經典的作品「地獄之門」，是羅丹美術館的鎮館寶之一，[lr]
連那個聞名於世的『沉思者』也不過是這個門的一小部份而已。[lr]
而這個小型的仿製品則是我從某人那邊花了很久的工夫才買到的。[w]
@chara
楊昊[endchara]
妳說那位籃球大帝嗎？[lr]
沒想到他還有這種才華呀！[w]
我一說完就覺得自己好像說錯了什麼，因為我感受到了她既憐憫又輕蔑的眼神往我這邊看來。[w]
@chara
黃鶴[endchara]
那 是 喬 丹 啦 ！[w]
黃鶴轉過身，一個字一個字的唸出來。[w]
@chara
黃鶴[endchara]
明明就有著超乎常人的瞬間判斷能力，為甚麼除了運動之外根本就是個大老粗呢！[w]
@chara
楊昊[endchara]
沒辦法，我覺得把心力用在自己不擅長的地方無疑是浪費才能呀！[lr]
如果我來玩石頭，妳去打籃球，這樣怎麼看都是浪費，妳不這麼覺得嗎！[w]
@chara
黃鶴[endchara]
話不能這樣說，就像是梵谷的畫並不是只有那種深沉的筆觸，如果僅僅只具有一種才能的話，是沒辦法達到頂尖的......[w]
她的語氣突然變得跟剛剛不太一樣。[lr]
接著，就是一片沉默。[lr]
她繼續看著那塊石頭，而我......[w]
@nowait
@link color="0x8888ff" target="*select_ch1_4_1_a"
問她關於雕像的詳細故事[endlink][r]
@link color="0x8888ff" target="*select_ch1_4_1_b"
問她更多有關喬丹的事情[endlink][r]
@link color="0x8888ff" target="*select_ch1_4_1_c"
接受她的說詞[endlink][r]
@endnowait
@s
;問她關於雕像的詳細故事
*select_ch1_4_1_a
@cm
@chara
楊昊[endchara]
所以那個聽起來很帥的地獄之門到底是什麼來頭？[w]
@chara
黃鶴[endchara]
地獄之門不只是單純的一部作品，羅丹還會把它當成靈感來源。[w]
@chara
黃鶴[endchara]
這是羅丹為了法國的美術館做的工藝，但即使他投入了快40年也未能完成，我們現在所看到的也只能說是半成品而已。[w]
@chara
楊昊[endchara]
我本來以為他是天才，結果也只是個半途而廢的人嗎？[w]
@chara
黃鶴[endchara]
......雖然我覺得你應該還不至於笨到這種地步，但我還是強調一下好了：他沒完成的原因是因為他逝世了。[w]
@chara
楊昊[endchara]
啊，原來他是個活不到40歲的人嗎？[w]
@chara
黃鶴:
......為什麼你會覺得他從出生就開始在做這個作品......(扶額)[w]
@jump target="*select_ch1_4_1_common"
;問她更多有關喬丹的事情
*select_ch1_4_1_b
@cm
@chara
楊昊[endchara]
所以我說那個喬丹......[w]
@chara
黃鶴[endchara]
就說是羅丹了！[w]
@chara
楊昊[endchara]
都有個丹字很難分辨呀。[w]
@chara
黃鶴[endchara]
可是你不會把SG和PG搞混吧！[w]
@chara
楊昊[endchara]
當然，這是基本常......對不起我錯了。[w]

感受到黃鶴的莫名殺氣，我只好趕快改口道歉。[w]
@jump target="*select_ch1_4_1_common"
;問她那幅揣摩梵谷畫風的畫
*select_ch1_4_1_c
@cm
@chara
楊昊[endchara]
那幅畫叫什麼名字？[lr]
感覺和平常看到的缺耳自畫像或是星空不太一樣。[w]

我再次拿起了那幅畫。[lr]
畫紙上大部分都被紫色的花所覆蓋，定眼一看，正是黃鶴前面花瓶裡的花。[w]
@chara
黃鶴[endchara]
這幅畫叫做《鳶尾花》，也是裡面紫花的名字，法國的國花。[w]
@chara
黃鶴[endchara]
許多古文明裡面都有關於這種花的記載，因為這樣，鳶尾花有很多不同的花語。[lr]
我覺得，鳶尾花比起那幾幅向日葵更能感覺到那種看似靜謐，卻源源不絕的情感流露而出。[w]
@chara
楊昊[endchara]
喔......我是不太懂啦，不過你喜歡就好。[w]
@chara
黃鶴[endchara]
我覺得，這是你今天最正確的一句話了。[w]

黃鶴看起來很開心的樣子。[lr]
不知道為什麼，總覺得她和鳶尾花擺在一起非常合適。[w]
@jump target="*select_ch1_4_1_common"

*select_ch1_4_1_common
本來只是依舊平凡的相處時光，我卻感受到黃鶴的背影和平常好像有點不太相同。[w]
@chara
楊昊[endchara]
話說...妳完全沒去碰那塊石頭，是發生什麼事了嗎？[w]

儘管自己對雕塑一竅不通，我也可以確定以往都會有的敲打聲不見了。[lr]
定眼一看，石頭依舊持著原本的形狀。[w]
@chara
黃鶴[endchara]
......竟然會被你這樣的大老粗發現，看來我還不夠成熟......[w]

黃鶴的聲音和平常截然不同，[lr]
以往充滿自信的她，此時卻十分低落。[w]
@chara
楊昊[endchara]
雖然我不知道妳為什麼情緒低落，不過妳的才能絕對可以做出很棒的雕塑。[lr]
希望妳趕快打起精神來，繼續創作。放著才能不用可是我最討厭的事情。[w]
@chara
黃鶴[endchara]
還真是一針見血呀......[lr]
看來我是有點累了，還是找個地方休息一下好了。[lr]
你也差不多該離開了吧？下次再來吧。[w]

@chara
楊昊[endchara]
妳這樣子說的話我也不好意思拒絕......[lr]
那我就先走了，如果下次要找我的話再跟我說。[w]
[charavanish time=200 storage="g1_02"]

我離開那個教室，[lr]
薄暮的晚霞映照在外面的紫花上，相較於方才下午的風景又是另一種感覺。[w]

@hidemes
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="black"
@trans time="2000" method="crossfade"
@wt canskip="false"
[l]
@backlay
@image visible="1" page="back" layer="stage" pos="center" storage="classroom_04"
@trans time="2000" method="crossfade"
@wt canskip="false"
@showmes




我從小就很喜歡小丑。[lr]
因為他會帶動整個氣氛、讓他的觀眾不斷歡笑，而觀眾卻不會發現他自己留下的淚水與汗水。[w]
很可惜的，我對我之前的人生幾乎沒有什麼印象。據檢查指出是大腦有點病變。[w]
也許因為如此，我，天生就和別人不太一樣。[w]
對我來說，我現在的最愛，就是像觀眾一樣的看著他人扮演小丑、逐步崩壞，並因此得到滿足。[w]
也許是這樣，一搬到這間宿舍，我就定好目標了。[w]
[chara]我[endchara]
這是今敏的作品嗎？我也常常看呢。[w]
我輕拍了那個正坐在電腦前面、觀賞動畫的肥宅。[w]
[chara]莊旭偉[endchara]
喔～～～沒想到你知道他的動畫呢。[lr]
我覺得比起很火熱的那些主流動畫來說，還是這種動畫讓人心曠神怡呀！[w]
彷彿是在海上漂流ㄧ許久的難民終於遇到大船一般，他用力的握住了我的手。[w]
[chara]莊旭偉[endchara]
我覺得你會是我的知心好友！如何，要不要我推薦給你幾部動畫參考參考呀？[w]
在這個肥宅滔滔不絕的說著自己的珍藏時，我環顧房間四周。[w]
袁御曦正在翻著一本看起來就很難理解的書；[lr]
楊昊一邊舉著啞鈴一邊看著籃球賽轉播，嘴邊振振有詞；[lr]
而任名晃則是玩著自己的...小......小熊？[w]
既然室友們是這個樣子，我馬上就知道自己該擔當什麼樣的角色了。[w]
如果活化能不夠，自己就變成那個酵素。[lr]
讓這群一看就不擅和別人相處的人開始踏出第一步，然後再讓他們像小丑一樣的崩壞。[w]
這就是，我的娛樂。[w]
我把莊旭偉當作主要目標，並且給了他一個可以聊動畫的人。接下來，就是靜待時機成熟了。[w]
本以為即使加了酵素、也需要等待不少時間。[lr]
直到那個自稱神的傢伙出現。[w]
「就讓你們去攻略、實現自己的願望吧。」[w]
神的聲音是另一個出乎意料的催化劑。[w]
我知道，對莊旭偉來說，這是一句會讓他動搖的話。[lr]
思考著是不是應該把自己的想法對姚欣菱表達，卻因為自己以往的經驗而躊躇不前。[w]
於是，我要做的事情就很明顯了......[w]
「怎麼樣呀各位，我們要不要趕快去蒐集那個能量啊？」[w]
神消失之後，我一如往常地扮起領頭者。[w]
而後，眾人各有打算地離開了房間，只剩下我和任名晃。[w]
[chara]我[endchara]
怎麼啦，名晃？你不出去打拼一番嗎？[w]
我再次用平常那種輕浮的語調和任名晃說話。[w]
說真的，他是我最難看透的人。[w]
不只是因為他沉默寡言，他還給我一種奇特的感覺。[lr]
但我至今仍然不知道那種感覺是什麼。[w]
我看著他，而他只是輕輕地搖了搖頭，看起來完全沒有要出去的意思。[w]
[chara]我[endchara]
好吧，那我先走了，你忙完也來攻略吧，一起來看看會發生什麼事。[w]
我正要走出去的時候，後方傳來一句話。[w]
雖然那句話可能只是碎碎念，彷彿一陣微風吹過就會被掩蓋，但仍然讓我的背脊整個發涼了起來。[w]
[font bold=true]你，只是個人間失格，和我一樣呢。[w]
回過頭，任名晃只是一如往常做著自己的事，彷彿根本沒說、甚至是沒聽到這句話。[w]
那麼，那句話到底是誰，又是為何說的呢？[w]
在這樣詭譎的氣氛之下，我馬上離開了這個地方，想要呼吸點新鮮的空氣。[w]



走在校園的路上，我發現莊旭偉和姚欣菱正在討論有關動畫的事情。[lr]
他們兩個笑的很開懷，開懷到我甚至產生了一絲絲的罪惡感......[w]
才怪，是喜悅感。[w]
當初埋下的種子看來就要收割了，心中浮現出來的畫面讓我不禁噗哧一笑。[w]
也許是這樣，我被那個肥宅察覺到了。[w]
[chara]莊旭偉[endchara]
這不是曉昀哥嗎？[lr]
沒想到可以在聊今敏動畫的時候遇到你，看來這都是命X石之門的選擇呀！[lr]
而且竟然看著我們笑，是不是想到了什麼不該想的事情呀？[w]
莊旭偉傻笑著往我這裡走過來。[w]
[chara]我[endchara]
嘛，剛好路過而已，不然我才不想當兩位的電燈泡呢！[w]
我還以招牌的傻笑，腦中卻在不斷思考著要如何彌補這樣的過失。[w]
畢竟，觀眾在表演的途中加入舞台，可以說是禁忌，會讓這齣戲的感覺整個變調。[w]
我正打算用最快的速度離開這邊，但卻被莊旭偉抓住了自己的手。[w]

[chara]莊旭偉[endchara]
等等！分享一下上次的見解吧，大哥！[lr]
我覺得你對於動畫裡某些異常者的心理分析可說是最頂尖的！[w]
[chara]姚欣菱[endchara]
是呀，我也很有興趣呢！畢竟很少有人會去分析動畫角色心理的。[w]
莊旭偉那隻有手汗的手讓我格外反感；[lr]
而一旁的姚欣菱，則用她那雙格外明亮的眼睛盯著我看。[w]
有時候總覺得她的眼睛好像一個瞄準他人內心的掃描器，只要稍微對視就會被看的一覽無遺。[w]
也許是因為不少出乎意料之事，讓我覺得異常緊繃。[lr]
我的背上開始滲出了汗，連自己的回答是什麼都遺忘的一乾二淨，只知道似乎沒有露出馬腳。[lr]
而莊旭偉在大喊新出動畫還沒看之後就跑走了。[w]
雖然因為不明的原因快走了一下之後就坐在大太陽底下，可是我們叫了幾聲後他還是離去了，只留下我和姚欣菱。[w]
[chara]我[endchara]
那麼，反正主角已經跑走了，身為配角的我也一起下場吧。[w]
[chara]姚欣菱[endchara]
先別急著走嘛。[w]
我實在很好奇，你對那些動畫角色分析如此地透徹，讓我認為你實在是這方面的人才。[lr]
你不這麼覺得嗎？[w]
[chara]我[endchara]
哈哈，學姊太抬舉我了，我只是一個什麼都不懂的小鬼啦。[lr]
要是我真的有這個才能的話，一定會好好使用的。[w]
[chara]姚欣菱[endchara]
我認為你真的有在好好使用自己的才能喔。[lr]
我從旭偉那裡得知，你和其他室友可以說相處得很融洽。[w]
[chara]我[endchara]
學姊真是的，我這種會隨便和別人搭訕的才能可以說是可有可無吧。[w]
[chara]姚欣菱[endchara]
可有可無嗎......或許吧。不過比起這個，我是指其他方面的才能喔。[w]
[chara]我[endchara]
嗯？其他方面是指？[w]
我被不安感席捲全身，我覺得眼前的這個女人似乎快要揭露我不被他人知曉的內心了。
[chara]姚欣菱[endchara]
在我看起來，旭偉是個比較懦弱、不擅交際的男孩。[lr]
能夠讓這樣的他主動跟我說話，我覺得你的功勞不小呢。[w]
不過呢，你又是基於怎麼樣的心態對他這麼友好，就很難說了......[w]
[chara]我[endchara]
說什麼傻話，我可是因為知道旭偉不懂得搭訕女生，才用盡全力幫他的。[lr]
畢竟我可完全不能想像沒有女人在旁邊的生活。[w]
言論同時參雜著真實和謊言，這是我的專長，也是一種可以隱藏自己思想、不被他人發現的方式。[w]
[chara]姚欣菱[endchara]
這種虛實交錯的說話方式還真是可怕呢，要是大姊姊我再單純一點還真的會被你矇騙，真是可愛。[w]
我的專長在這個女人面前完全起不了作用。[w]
現在的處境，大概就像如來佛掌上的孫悟空，無論我做什麼，在她的眼中都只是可笑的伎倆罷了......[lr]
就像我平常看他人的態度一樣。[w]
極度尷尬的幾秒鐘之後，姚欣菱笑了出來。[w]
[chara]姚欣菱[endchara]
真可愛...只是因為自己有了一絲絲的劣勢就會開始緊張，簡直就和我認識的某個人一樣。[lr]
難怪他會特別在意你了。[w]
[chara]我[endchara]
妳說的是誰......？[w]
[chara]姚欣菱[endchara]
戴面具的人呀，或者是說...你們今天看到的「神」。[w]
[chara]我[endchara]
！？！？[w]
[chara]我[endchara]
不...不可能，妳為甚麼會知道這件事！？妳到底是什麼人！？[w]
[chara]姚欣菱[endchara]
我奉勸你一句話：好好想想自己想要什麼，不要走錯路了。[lr]
否則－－接下來等待你的，會是個踐踏別人生命的世界喔。[w]
[chara]我[endchara]
別開玩笑了！像妳這種看著別人像小丑一樣跳舞的人，我最厭惡了！[w]
也不管我平常的偽裝已經崩壞，我對著眼前的她咆嘯。[w]

[chara]姚欣菱[endchara]
但我並不討厭你這種傢伙呢。[lr]
那好吧，我就告訴你：你們，現在也只是沈浸在夢裡面罷了(deep in dream)。[w]
[chara]姚欣菱[endchara]
但總有一天，夢會醒過來。[lr]
在夢醒之前，我完全不打算和你起衝突。[w]
[chara]姚欣菱[endchara]
不如說...就當我是個旁觀者吧。[w]
[chara]姚欣菱[endchara]
就聊到這裡吧！我想去喝點小酒，如果你的室友們願意的話請務必邀他們來喝，我會幫忙出錢的。[w]
說出了語焉不詳的話，並塞給我五張奇怪酒店的入場券後，她便默默離去。[w]
[chara]我[endchara]
......可惡！[w]
我本來想把入場券揉爛，但是突然想到，也許在酒店裡我才可以做些會讓自己紓壓的事情。[w]
比如說...破壞其他人的戀愛進展。[w]
於是我默默的收進口袋，鎮定情緒、在大街上徘徊了幾圈後回到房間。[w]



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
