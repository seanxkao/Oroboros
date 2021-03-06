;------------------------------------------------------------
;特別模式
;------------------------------------------------------------
*start
;這裡寫成place=1，是因為更上一層的界面（CG模式啥的）默認把狀態記錄到place=0，但要一層層返回就需要保存多個不同的臨時狀態
[tempsave place="1"]
;------------------------------------------------------------
*window
[history enabled="false"]
[locklink]
;------------------------------------------------------------
;調用地圖作為特別模式的選單，地圖上包含【CG模式、結局收集、音樂鑒賞、返回四個按鈕】
[sysmap storage="omake.map"]
;定義並允許右鍵返回
[rclick enabled="true" jump="true" storage="title_other.ks" target=*返回]
[s]
;------------------------------------------------------------
;CG模式
*cgmode
[clsysmap]
[call storage="cgmode.ks"]
[jump storage="title_other.ks" target="*window"]
;------------------------------------------------------------
;結局收集
*endlist
[clsysmap]
[call storage="endmode.ks"]
[jump storage="title_other.ks" target="*window"]
;------------------------------------------------------------
;音樂鑒賞
*bgmlist
[clsysmap]
[call storage="bgmmode.ks"]
[jump storage="title_other.ks" target="*window"]
;------------------------------------------------------------
*返回
[clsysmap]
[backlay]
[tempload backlay="true" place="1"]
[trans method="crossfade" time=200]
[wt]
[return]
