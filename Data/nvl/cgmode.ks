;------------------------------------------------------------
;非常懶惰的CG顯示
;------------------------------------------------------------
*start
[tempsave]
;------------------------------------------------------------
*window

[iscript]
//假如是第一次登錄CG，建立空白的CG登陸記錄
if (sf.cglist==void) sf.cglist=%[];

//設定CG列表文件
f.cginfo="cglist.txt";

//根據CG列表文件，載入作為縮略圖的CG圖片文件名稱列表
f.cglist=getThumList();

//根據f.cglist的CG圖片數，計算需要的翻頁數
tf.CG頁數=f.cglist.count\f.config_cgmode.locate.count;
if (f.cglist.count%f.config_cgmode.locate.count>0) tf.CG頁數++;
tf.當前CG頁=1;

[endscript]

[history enabled="false"]

[locklink]
[rclick enabled="true" jump="true" storage="cgmode.ks" target=*返回]

[backlay]
[image layer=11 page=back storage=&"f.config_cgmode.bgd" left=0 top=0 visible="true"]

[current layer="message4" page="back"]
[layopt layer="message4" visible="true" page="back" left=0 top=0]
[er]
;描繪各種ABC
[draw_cglist]
[trans method="crossfade" time=300]
[wt]

[s]
;------------------------------------------------------------
*刷新畫面
[locklink]
[rclick enabled="true" jump="true" storage="cgmode.ks" target=*返回]
;避免按鍵太快，等待100毫秒
[wait time=100]
[current layer="message4"]
[er]
;描繪各種ABC
[draw_cglist]
[s]

*顯示CG
[locklink]
[rclick enabled="true" jump="true" storage="cgmode.ks" target=*消除CG]
;取得CG文件名
[iscript]
tf.當前CG=tf.CG差分[tf.CG編號];
[endscript]

;顯示CG
[backlay]
[image layer=16 storage=&tf.當前CG left=0 top=0 page="back" visible="true"]
[trans method="crossfade" time=100]
[wt]
[waitclick]

;假如還有CG差分，取得下一個差分的編號
[if exp="tf.CG編號<tf.CG差分.count-1"]
[eval exp="tf.CG編號++"]
[jump target="*顯示CG"]
[endif]


*消除CG
[rclick enabled="true" jump="true" storage="cgmode.ks" target=*返回]
[stoptrans]
[backlay]
[freeimage layer=16 page="back"]
[trans method="crossfade" time=100]
[wt]
[jump target=*刷新畫面]
;------------------------------------------------------------
*返回
[locklink]
[rclick enabled="false"]
[backlay]
[tempload backlay="true" bgm="false" se="false"]
[trans method="crossfade" time=200]
[wt]

[return]
