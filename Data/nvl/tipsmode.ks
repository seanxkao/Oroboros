;------------------------------------------------------------
;非常懶惰的TIPS鑒賞系統
;------------------------------------------------------------
*start
[locksnapshot]
[tempsave]
;------------------------------------------------------------
*window
[history enabled="false"]
[locklink]
[rclick enabled="true" jump="true" storage="tipsmode.ks" target=*返回]

[backlay]
;這裡修改背景圖片
[image layer=11 page=back storage=&"f.config_tipsmode.bgd" left=0 top=0 visible="true"]

[current layer="message4" page="back"]
[layopt layer="message4" visible="true" page="back" left=0 top=0]
[er]
;描繪各種ABC
[draw_tipslist]
[trans method="crossfade" time=300]
[wt]
[s]
;------------------------------------------------------------
*顯示TIPS
;這裡修改背景圖片
[rclick enabled="true" jump="true" storage="tipsmode.ks" target=*刷新畫面]
[current layer="message4"]
[er]
[showtips]
[s]

*顯示TIPS2
[locksnapshot]
[tempsave]
[history enabled="false"]
[locklink]
[backlay]
;這裡修改背景圖片
[image layer=11 page=back storage=&"f.config_tipsmode.bgd" left=0 top=0 visible="true"]
[rclick enabled="true" jump="true" storage="tipsmode.ks" target=*返回]
[current layer="message4"  page="back"]
[layopt layer="message4" visible="true" page="back" left=0 top=0]
[er]
[showtips]
[trans method="crossfade" time=300]
[wt]
[s]
;------------------------------------------------------------
*刷新畫面
[rclick enabled="true" jump="true" storage="tipsmode.ks" target=*返回]
[current layer="message4"]
[er]
;描繪各種ABC
[draw_tipslist]
[s]

;------------------------------------------------------------
*返回
[locklink]
[rclick enabled="false"]
[backlay]
[tempload backlay="true" bgm="false" se="false"]
[trans method="crossfade" time=200]
[wt]
[return]

