;-------------------------------------------------------------------------------------------
;SAVE、LOAD系統通用的宏
;layer 14 背景
;message4 按鈕
;15 狀態
;16 懸停顯示
;17 截圖
;-------------------------------------------------------------------------------------------
*start
;------------------------------------------------------------
;返回檔案名/確認檔案是否存在
;------------------------------------------------------------
[iscript]
function storagedata(num)
{
	var sd=kag.saveDataLocation+'/data'+num+'.bmp';
	return sd;
}
function checkdata(num)
{
	var cd=Storages.isExistentStorage(kag.saveDataLocation+'/data'+num+'.bmp');
	return cd;
}
[endscript]
;------------------------------------------------------------
;在存取按鈕上描繪文字的函數
;------------------------------------------------------------
[iscript]
function drawbuttontext(button,style,mytext)
{
	//取得傳入的字體樣式參數和文字內容參數
	button.font.height=style.height;

	var sha=style.sha;
	var shac=style.shac;
	var edg=style.edg;
	var edgc=style.edgc;
	var normal=style.normal;
	var over=style.over;
	var on=style.on;

	var x=mytext.x;
	var y=mytext.y;
	var str=mytext.str;

	if (sha)
	{
		button.drawText(x,                    y, str, normal,255,true,255,shac,0,2,2);
		button.drawText(x+button.width,y, str, on,255,true,255,shac,0,2,2);
		button.drawText(x+button.width+button.width, y, str, over,255,true,255,shac,0,2,2);
	}
	else if (edg)
	{
		button.drawText(x,                           y, str, normal,255,true,255,edgc,1,0,0);
		button.drawText(x+button.width,              y, str, on,255,true,255,edgc,1,0,0);
		button.drawText(x+button.width+button.width, y, str, over,255,true,255,edgc,1,0,0);
	}
	else
	{
		button.drawText(x,                           y, str, normal);
		button.drawText(x+button.width,              y, str, on);
		button.drawText(x+button.width+button.width, y, str, over);
	}
}
[endscript]
;------------------------------------------------------------
;根據設置，在按鈕上描繪相應文字
;------------------------------------------------------------
[iscript]
function slbuttontitle(button,num)
{
	//公用樣式1
	button.font.face=kag.fore.messages[0].userFace;
	button.font.bold=f.config_slpos.pagefont.bold;
	button.font.italic=f.config_slpos.pagefont.italic;

	var style=new Dictionary();

	//公用樣式2
	style.sha=f.config_slpos.pagefont.shadow;
	style.shac=f.config_slpos.pagefont.shadowcolor;
	style.edg=f.config_slpos.pagefont.edge;
	style.edgc=f.config_slpos.pagefont.edgecolor;
	
	var mytext=new Dictionary();

	//檔案編號
	if (f.config_slpos.num.use)
	{
		style.height=f.config_slpos.num.height;
		style.normal=f.config_sl.num.normal;
		style.over=f.config_sl.num.over;
		style.on=f.config_sl.num.on;

		mytext.x=(int)f.config_slpos.num.x;
		mytext.y=(int)f.config_slpos.num.y;
		mytext.str=f.config_slpos.num.pre+(num*1+1)+f.config_slpos.num.after;
		
		drawbuttontext(button,style,mytext);
	}

	//章節名
	if (f.config_slpos.bookmark.use)
	{
		style.height=f.config_slpos.bookmark.height;
		style.normal=f.config_sl.bookmark.normal;
		style.over=f.config_sl.bookmark.over;
		style.on=f.config_sl.bookmark.on;

		mytext.x=(int)f.config_slpos.bookmark.x;
		mytext.y=(int)f.config_slpos.bookmark.y;
		mytext.str=kag.getBookMarkPageName(num);
		
		drawbuttontext(button,style,mytext);
	}

	//日期
	if (f.config_slpos.date.use)
	{
		style.height=f.config_slpos.date.height;
		style.normal=f.config_sl.date.normal;
		style.over=f.config_sl.date.over;
		style.on=f.config_sl.date.on;

		mytext.x=(int)f.config_slpos.date.x;
		mytext.y=(int)f.config_slpos.date.y;
		mytext.str=kag.getBookMarkDate(num);
		
		drawbuttontext(button,style,mytext);
	}
	
	//最近對話
	if (f.config_slpos.history.use)
	{
		style.height=f.config_slpos.history.height;
		style.normal=f.config_sl.history.normal;
		style.over=f.config_sl.history.over;
		style.on=f.config_sl.history.on;

		mytext.x=(int)f.config_slpos.history.x;
		mytext.y=(int)f.config_slpos.history.y;
		
		//取得歷史記錄
		var his;
		if (sf.歷史[num]!=void) {his=sf.歷史[num];}
		else { his="……"; }
		//切掉不必要的字數
		var str=his.substring(0,f.config_slpos.history.num);
		str+="……";

		mytext.str=str;
		
		drawbuttontext(button,style,mytext);
	}
}
[endscript]
;------------------------------------------------------------
;懸停
;------------------------------------------------------------
[iscript]
function slshow(num)
{
	if (kag.getBookMarkDate(num)!=void)
	{
	    //清空描繪層
	    kag.fore.layers[16].loadImages(%['storage'=>'empty','visible'=>true,'left'=>0,'top'=>0]);

		var setting=new Dictionary();
		//複製字體設定
		(Dictionary.assign incontextof setting)(f.config_slpos.pagefont);
		//其他參數設定
		setting.layer="16";
		setting.face=kag.fore.messages[0].userFace;

	   //描繪章節名
	   if (f.config_slpos.drawmark.use)
	   {
	      //設定其他參數
	      setting.text=kag.getBookMarkPageName(num);
	      setting.x=f.config_slpos.drawmark.x;
	      setting.y=f.config_slpos.drawmark.y;
	      setting.size=f.config_slpos.drawmark.size;
	      setting.color=f.config_sl.draw.bookmark;   
	      kag.tagHandlers.ptext(setting);
	   }
	   
	   //描繪日期時間
	   if (f.config_slpos.drawdate.use)
	   {
	      //設定其他參數
	      setting.text=kag.getBookMarkDate(num);
	      setting.x=f.config_slpos.drawdate.x;
	      setting.y=f.config_slpos.drawdate.y;
	      setting.size=f.config_slpos.drawdate.size;
	      setting.color=f.config_sl.draw.date;   
	      kag.tagHandlers.ptext(setting);
	   }
	   
	   //描繪對話
	   if (f.config_slpos.drawtalk.use)
	   {
	        if (sf.歷史[num]!=void)
	      {
	           var talk=sf.歷史[num];
	           talk+="……";
	           var t_linecount=talk.length\f.config_slpos.drawtalk.count;
	           if  (talk.length%f.config_slpos.drawtalk.count>0) {t_linecount++;}

	      		//設定其他參數
				setting.size=f.config_slpos.drawtalk.size;
				setting.color=f.config_sl.draw.talk;
	            setting.x=(int)f.config_slpos.drawtalk.x;

	           //開始描繪
	            for (var i=0; i<t_linecount; i++)
	               {
	      			   //改變坐標和描繪內容
	                   setting.y=(int)i*f.config_slpos.drawtalk.space+(int)f.config_slpos.drawtalk.y;
	                   setting.text=talk.substring(i*f.config_slpos.drawtalk.count,f.config_slpos.drawtalk.count);

	                   kag.tagHandlers.ptext(setting);
	               }
	        }
	    }
	
	   //描繪截圖
	   if (checkdata(num)) kag.fore.layers[17].loadImages(%[
	      'storage'=>storagedata(num),
	      'visible'=>f.config_slpos.snapshot.visible, //假如設定visible=0，這個功能照樣在但是不顯示
	      'left'=>f.config_slpos.snapshot.x,
	      'top'=>f.config_slpos.snapshot.y
	     ]);
	 
	 }
}

function slhide()
{
	kag.fore.layers[16].visible=false;
	kag.fore.layers[17].visible=false;
}
[endscript]
;------------------------------------------------------------
;描繪單個按鈕
;------------------------------------------------------------
[iscript]
function slbutton(num)
{
	//創建數據
	var savebutton = new Dictionary();

	//複製按鈕設定
	(Dictionary.assign incontextof savebutton)(f.config_sl.button);
	
	savebutton.onenter='slshow('+num+')';
	savebutton.onleave="slhide()";
	savebutton.exp='tf.最近檔案='+num;
	savebutton.target="*存取遊戲";

	//檢查字典裡是否有空字符串，如有的話，強制設定為void
	foreach(savebutton,checkdict);
	//創建按鈕
	kag.tagHandlers.button(savebutton);
	//創建按鈕後描繪文字
	slbuttontitle(kag.current.links[kag.current.links.count-1].object,num);

}
[endscript]
;------------------------------------------------------------
;批量描繪
;------------------------------------------------------------
[iscript]
function drawslbutton(page="fore")
{
	var layer;

	//載入空白圖片,用於顯示狀態
	  if (page=="fore") layer=kag.fore.layers[15];
	  else layer=kag.back.layers[15];
	  layer.loadImages(%['storage'=>'empty', 'visible'=>true,'left'=>0,'top' =>0]);
	
	//描繪其他按鈕

	//返回
	if (f.config_slpos.back[2])
	{
	      kag.tagHandlers.locate(
	      %[
	        "x" => f.config_slpos.back[0],
	        "y" => f.config_slpos.back[1]
	      ]);
	
		//創建數據
		var mybutton = new Dictionary();
		//複製按鈕設定
		(Dictionary.assign incontextof mybutton)(f.config_sl.back);
		
		mybutton.target="*返回";

		//刪除字典內的空值
		foreach(mybutton,checkdict);
		kag.tagHandlers.button(mybutton);
	
	}
	//上翻
	if (f.config_slpos.up[2])
	{
	      kag.tagHandlers.locate(
	      %[
	        "x" => f.config_slpos.up[0],
	        "y" => f.config_slpos.up[1]
	      ]);
	
	
			//創建數據
			var mybutton = new Dictionary();
			//複製按鈕設定
			(Dictionary.assign incontextof mybutton)(f.config_sl.up);
			
			mybutton.target="*刷新畫面";
			mybutton.exp="sf.最近存儲頁-- if (sf.最近存儲頁>1)";

			//刪除字典內的空值
			foreach(mybutton,checkdict);
			kag.tagHandlers.button(mybutton);
	}
	//下翻
	if (f.config_slpos.down[2])
	{
	      kag.tagHandlers.locate(
	      %[
	        "x" => f.config_slpos.down[0],
	        "y" => f.config_slpos.down[1]
	      ]);
	
			//創建數據
			var mybutton = new Dictionary();
			//複製按鈕設定
			(Dictionary.assign incontextof mybutton)(f.config_sl.down);
			
			mybutton.target="*刷新畫面";
			mybutton.exp="sf.最近存儲頁++ if (sf.最近存儲頁<(kag.numBookMarks/f.config_slpos.locate.count))";

			//刪除字典內的空值
			foreach(mybutton,checkdict);
			kag.tagHandlers.button(mybutton);
	
	}
	//循環描繪存取按鈕及按鈕上的小截圖、最新檔標記等
	for (var i=0;i<f.config_slpos.locate.count;i++)
	  {
	      var number=i*1+(sf.最近存儲頁-1)*(f.config_slpos.locate.count);
	      kag.tagHandlers.locate(
	      %[
	        "x" => f.config_slpos.locate[i][0],
	        "y" => f.config_slpos.locate[i][1]
	      ]);

	      slbutton(number); 

	      //當前編號==sf.最近檔案，且的確存在檔案時，描繪狀態標記
	      if (number==sf.最近檔案 && f.config_slpos.lastsavemark.use==1 && checkdata(sf.最近檔案)==true)
	      {
	           kag.tagHandlers.pimage(
	           %[
	              "layer"=>"15",
	              "page"=>page,
	              "storage"=>f.config_sl.lastsavemark,
	              "dx"=> (int)f.config_slpos.lastsavemark.x+(int)f.config_slpos.locate[i][0],
	              "dy"=>(int)f.config_slpos.lastsavemark.y+(int)f.config_slpos.locate[i][1]
	           ]);
	      }

	      //有用到，進行遊戲截圖描繪
	      if (f.config_slpos.smallsnap.use==1 && checkdata(number))
	      {
	         var snap=new Dictionary();
	         snap.layer="15";
	         snap.page=page;
	         snap.storage=storagedata(number);
	         snap.dx=(int)f.config_slpos.smallsnap.x+(int)f.config_slpos.locate[i][0];
	         snap.dy=(int)f.config_slpos.smallsnap.y+(int)f.config_slpos.locate[i][1];
	         kag.tagHandlers.pimage(snap);
	      }
	  }

}
[endscript]
;------------------------------------------------------------
[return]
