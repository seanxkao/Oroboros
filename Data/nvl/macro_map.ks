;-------------------------------------------------------------------------------------------
;地圖顯示專用宏
;和養成相同
;背景板顯示在layer11層上
;按鈕顯示在message3層上
;可刷新的數值顯示面板顯示在layer12上
;懸停圖片顯示在layer13上

;追加懸停圖片函數,配合新增的參數，鼠標移到按鈕上時可在指定位置額外顯示一張圖片
;使用方式為在如下參數里填入內容:
;鼠標移入：mapshow('圖片名',x,y)
;鼠標移出：maphide()
;-------------------------------------------------------------------------------------------
*start
[iscript]
//------------------------------------------------------------
//讀入地圖配置表
//------------------------------------------------------------
//顯示地圖按鈕
function loadmap(name)
{
	//創建字典並讀入地圖文件信息
	var dic =[];
	dic=Scripts.evalStorage(name);

 if (dic!='')
 {
   //載入背景
	kag.back.layers[11].loadImages(%["storage"=>dic[0].bgd,"visible"=>true,"left"=>0,"top"=>0]);

   //循環描繪按鈕
   for (var i=1;i<dic.count;i++)
   {
	   //定義按鈕位置
	   kag.tagHandlers.locate(%["x" => dic[i]["x"], "y" => dic[i]["y"] ]);
	   //創建按鈕用字典
	   var mapbutton = new Dictionary();
	   //取得數據
	   mapbutton["normal"]=dic[i]["normal"];
	   mapbutton["over"]=dic[i]["over"];
	   mapbutton["on"]=dic[i]["on"];
	   mapbutton["storage"]=dic[i]["storage"];
	   mapbutton["target"]=dic[i]["target"];
	
	   if (dic[i]["exp"]!=void) mapbutton["exp"]=dic[i]["exp"];
	   
		if (dic[i]["enterse"]!=void) mapbutton["enterse"]=dic[i]["enterse"];
		if (dic[i]["clickse"]!=void) mapbutton["clickse"]=dic[i]["clickse"];
		if (dic[i]["onenter"]!=void) mapbutton["onenter"]=dic[i]["onenter"];
		if (dic[i]["onleave"]!=void) mapbutton["onleave"]=dic[i]["onleave"];
	
	   //假如有條件，取得條件表達式
	   if (dic[i]["cond"]!=void) mapbutton["cond"]=dic[i]["cond"];
	   
	       //該據點在本地圖上使用到
	       if (dic[i]["use"]==1)
	      {
	           //滿足條件
	           if (Scripts.eval(mapbutton["cond"])==true) kag.tagHandlers.button(mapbutton);
	           //或者無需條件
	           if (mapbutton["cond"]==void) kag.tagHandlers.button(mapbutton);
	      }
  	 }
 }
}
[endscript]
;------------------------------------------------------------
;地圖懸停顯示圖片用函數（默認為layer13，不過也可以自行傳入參數）
;------------------------------------------------------------
[iscript]
function mapshow(storage,x=0,y=0,num=13)
{
    //讀入圖片
    kag.fore.layers[num].loadImages(%['storage'=>storage,'visible'=>true,'left'=>x,'top'=>y]);
}

function maphide(num=13)
{
	kag.fore.layers[num].visible=false;
}
[endscript]
;------------------------------------------------------------
;顯示地圖
;------------------------------------------------------------
[macro name=map]
[rclick enabled="false"]
[history enabled="false"]
[backlay]
;隱藏一般對話層
[layopt layer="message0" page="back" visible="false"]
;隱藏系統按鈕層
[hidesysbutton]
;設定當前所用消息層
[frame layer="%layer|message3" page="back"]
[current layer="%layer|message3" page="back"]
[er]
;顯示地圖背景和按鈕
[eval exp=&"'loadmap(\''+mp.storage+'\')'"]
[trans * method=%method|crossfade time=%time|300]
[wt]
[s]
[endmacro]
;------------------------------------------------------------
;清除地圖
;------------------------------------------------------------
[macro name=clmap]
[backlay]
[freeimage layer=11 page="back"]
[freeimage layer=13 page="back"]
[current layer="%layer|message3" page="back"]
[er]
[layopt layer="%layer|message3" page="back" visible="false"]
[layopt layer="message0" page="back" visible="true"]
[hidesysbutton]
[trans * method=%method|crossfade time=%time|200]
[wt]
[current layer="message0"]
[rclick enabled="true"]
[history enabled="true"]
[endmacro]
;------------------------------------------------------------
;自製系統用地圖宏（沒有等待指令，可自行插入右鍵設置等）
;------------------------------------------------------------
[macro name=sysmap]
[rclick enabled="false"]
[history enabled="false"]
[backlay]
;隱藏標題按鈕層
[layopt layer="message0" page="back" visible="false"]
;隱藏系統按鈕層
[hidesysbutton]
;設定當前所用消息層
[frame layer="%layer|message3" page="back"]
[current layer="%layer|message3" page="back"]
[er]
;顯示地圖背景和按鈕
[eval exp=&"'loadmap(\''+mp.storage+'\')'"]
[trans * method=%method|crossfade time=%time|300]
[wt]
[endmacro]
;------------------------------------------------------------
;清除自製系統用地圖宏（禁止右鍵菜單，是否消除地圖背景要添加額外參數clbg）
;------------------------------------------------------------
[macro name=clsysmap]
[rclick enabled="false"]
[history enabled="false"]
[backlay]
[freeimage layer=11 page="back" cond="mp.clbg"]
[freeimage layer=13 page="back"]
[current layer="%layer|message3" page="back"]
[er]
[layopt layer="%layer|message3" page="back" visible="false"]
[trans * method=%method|crossfade time=%time|200]
[wt]
[current layer="message0"]
[endmacro]
;------------------------------------------------------------
[return]
