;------------------------------------------------------------
;宏設定主文件，負責：
;DLL和TJS插件載入、層信息設置、其他宏載入、界面配置文件載入
;------------------------------------------------------------
*start
;------------------------------------------------------------
;DLL插件載入
;------------------------------------------------------------
;OGG、MP3播放插件
[loadplugin module="wuvorbis.dll"] 
;[loadplugin module="wump3.dll"]
;切換特效增強插件
[loadplugin module="extrans.dll"]
[loadplugin module="extNagano.dll"]
;------------------------------------------------------------
;層數量
;------------------------------------------------------------
[laycount layers=18]
[laycount messages=5]
;------------------------------------------------------------
;層順位
;------------------------------------------------------------
;背景層
[layopt layer=stage index=100 withback=true]
;立繪
[layopt layer="0" index=200 withback=true]
[layopt layer="1" index=300 withback=true]
[layopt layer="2" index=400 withback=true]
[layopt layer="3" index=500 withback=true]
[layopt layer="4" index=600 withback=true]
[layopt layer="5" index=700 withback=true]
;動態
[layopt layer="6" index=800 withback=true]
[layopt layer="7" index=900 withback=true]
;----------------------------------------------
;預留
;[layopt layer="event" index=1000 withback=true]
;對話框、標題畫面按鈕
[layopt layer="message0" index=1100 withback=true]
;頭像層、標題前景圖層
[layopt layer="8" index=1200 withback=true]
;選擇支
[layopt layer="message1" index=1300 withback=true]
;預留
[layopt layer="9" index=1400 withback=true]
;預留
[layopt layer="10" index=1500 withback=true]
;----------------------------------------------
;系統按鈕(sysbutton)
[layopt layer="message2" index=2000 withback=true]
;----------------------------------------------
;自製系統預留（地圖、養成、EXTRA用）
;----------------------------------------------
;地圖/養成/CG/BGM鑒賞背景
[layopt layer="11" index=3000 withback=true]
;地圖/養成/EXTRA按鈕
[layopt layer="message3" index=3100 withback=true]
;養成畫面的文字、數值、圖像顯示
[layopt layer="12" index=3200 withback=true]
;地圖據點顯示時額外顯示的懸停圖片
[layopt layer="13" index=3300 withback=true]
;----------------------------------------------
;系統菜單背景（MAIN、SAVE、LOAD、OPTION）
;----------------------------------------------
[layopt layer="14" index=3400 withback=true]
;菜單層2
[layopt layer="message4" index=3500 withback=true]
;option畫面高亮效果、存取按鈕新檔標記&截圖顯示
[layopt layer="15" index=3600 withback=true]
;存取畫面懸停文字顯示、CG模式的CG大圖
[layopt layer="16" index=3700 withback=true]
;存取畫面懸停圖片顯示
[layopt layer="17" index=3800 withback=true]
;------------------------------------------------------------
;載入遊戲需要的函數和配置表
;------------------------------------------------------------
[iscript]
//載入自定義SL函數，覆蓋mainwindow.tjs裡的默認函數
KAGLoadScript("MySaveLoadFunction.tjs");

//載入配置文件
f.setting=Scripts.evalStorage("setting.tjs");
f.config_title=Scripts.evalStorage("uititle.tjs");
f.config_dia=Scripts.evalStorage('uidia.tjs');
f.config_menu=Scripts.evalStorage("uimenu.tjs");
f.config_slpos=Scripts.evalStorage("uislpos.tjs");
f.config_option=Scripts.evalStorage("uioption.tjs");
f.config_history=Scripts.evalStorage("uihistory.tjs");
f.config_name=Scripts.evalStorage("namelist.tjs");
f.config_save=Scripts.evalStorage("uisave.tjs");
f.config_load=Scripts.evalStorage("uiload.tjs");
//載入CG界面配置表
f.config_cgmode=Scripts.evalStorage("uicgmode.tjs");
//載入bgm界面配置表
f.config_bgmmode=Scripts.evalStorage("uibgmmode.tjs");
//載入end界面配置表
f.config_endmode=Scripts.evalStorage("uiendmode.tjs");
//載入tips界面配置表
f.config_tipsmode=Scripts.evalStorage("uitipsmode.tjs");
[endscript]
;------------------------------------------------------------
;載入遊戲需要的宏和TJS插件
;------------------------------------------------------------
[call storage="function.ks"]

[call storage="macro_ui.ks"]
[call storage="macro_sl.ks"]

[call storage="macro_play.ks"]
[call storage="macro_name.ks"]
[call storage="macro_map.ks"]
[call storage="macro_edu.ks"]
[call storage="macro_cg.ks"]
[call storage="macro_bgm.ks"]
[call storage="macro_end.ks"]
[call storage="macro_tips.ks"]

;載入自定義宏
[call storage="macro_self.ks"]

;載入插件
[call storage="PicScroller.ks"]
[call storage="AnimPlayer.ks"]
;限時選項時間槽
[call storage=timebar.ks]
;粒子特效
[call storage=oldMovie.ks]
[call storage=snow.ks]
[call storage=rain.ks]
[call storage=fog.ks]
[call storage=sakura.ks]
[call storage=momiji.ks]
[call storage=firefly.ks]
;瓶子
[call storage=bottle.ks]
[call storage=clock.ks]
;----------------------------------------------
;消息層默認定義
;----------------------------------------------
;防止因為Config.tjs裡沒有修改消息層大小導致的顯示錯誤
[frame layer="message0" visible=true]
[frame layer="message1" visible=false]
[frame layer="message2" visible=false]
[frame layer="message3" visible=false]
[frame layer="message4" visible=false]
;------------------------------------------------------------
[return]
