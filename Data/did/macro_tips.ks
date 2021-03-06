;-------------------------------------------------------------------------------------------
;音樂鑒賞界面相關函數
;-------------------------------------------------------------------------------------------
[iscript]

//載入tips列表
var temp = Scripts.evalStorage("tipslist.tjs");
//var temp = [].load("tipslist.txt");
f.tipslist = [];
f.tipsdict=%[];
for(var i=0;i<temp.length;i++){
	var text = temp[i].split(',');
	f.tipslist[i] = text[0];
	f.tipsdict[text[0]] = text[1];
}
//計算頁數
tf.TIPS頁數=f.tipslist.count\f.config_tipsmode.list.num;
if (f.tipslist.count%f.config_tipsmode.list.num>0) tf.TIPS頁數++;
tf.當前TIPS頁=1;

function TipsButton(key)
{
	var content = f.tipsdict[key];
	//取得顯示名和播放文件名	
	//按鈕設定
	var dic=%[];
	
	var list=f.config_tipsmode.list;

	dic.normal=list.normal; //這裡是設定TIPS按鈕底圖的地方
	dic.over=list.over;
	dic.on=list.on;
	dic.exp="tf.當前TIPS名=\""+key+"\"";
	
	dic.target="*顯示TIPS";
	kag.current.addButton(dic);
	
	//在按鈕上描繪文字

	var x=(int)list.x;//設定按鈕上文字位置的地方
	var y=(int)list.y;
	
	var button=kag.current.links[kag.current.links.count-1].object;
	
	button.font.height=list.size;//設定字體大小
	button.font.italic=list.italic;//是否斜體
	button.font.bold=list.bold;//是否粗體
	
	if (list.edge)
	{
		button.drawText(x,y, key, list.color, 255, true, 255, list.edgecolor, 1, 0, 0);
		button.drawText(x+button.width,y, key, list.color, 255, true, 255, list.edgecolor, 1, 0, 0);
		button.drawText(x+button.width*2,y, key, list.color, 255, true, 255, list.edgecolor, 1, 0, 0);
	}
	else if (list.shadow)
	{
		button.drawText(x,y, key, list.color, 255, true, 255, list.shadowcolor, 0, 2, 2);
		button.drawText(x+button.width,y, key, list.color, 255, true, 255, list.shadowcolor, 0, 2, 2);
		button.drawText(x+button.width*2,y, key, list.color, 255, true, 255, list.shadowcolor, 0, 2, 2);
	}
	else
	{
		button.drawText(x,y,key,list.color);
		button.drawText(x+button.width,y,key,list.color);
		button.drawText(x+button.width*2,y,key,list.color);
	}
	
}

function draw_tipslist()
{
	//簡寫名稱
	var list=f.config_tipsmode.list;

	//載入按鈕圖片確定大小
    var temp = new Layer(kag, kag.fore.base);
	temp.loadImages(list.normal);
	temp.setSizeToImageSize();

	var width=temp.width;
	var height=temp.height;
	
	for (var i=0;i<list.num;i++)
	{
		if ((tf.當前TIPS頁-1)*list.num+i>=f.tipslist.count) break;
		
		if (list.line=="single")
		{
			var btnx=list.left;
			var btny=list.top+(height+(int)list.disy)*i;
			kag.tagHandlers.locate(%["x"=>btnx,"y"=>btny]);
		}
		else
		{
			var btnx=list.left+(width+(int)list.disx)*(i%2);
			var btny=list.top+(height+(int)list.disy)*(int)(i/2);
			kag.tagHandlers.locate(%["x"=>btnx,"y"=>btny]);
		}

		TipsButton(f.tipslist[(tf.當前TIPS頁-1)*list.num+i]);
	}
}

function showTips()
{
	//取得顯示名和播放文件名
	var list = f.config_tipsmode.list;
	var title = f.config_tipsmode.title;
	var content = f.config_tipsmode.content;
	
	var x = (int)title.x;//設定按鈕上文字位置的地方
	var y = (int)title.y;
	
	
	var titleLayer = new Layer(kag, kag.fore.base);
	titleLayer.absolute = 4000;
	titleLayer.loadImages(title.normal);
	titleLayer.setSizeToImageSize();	
	titleLayer.setPos(x, y);
	titleLayer.visible = true;
	
	//標題
	var keyStr = tf.當前TIPS名;
	var contentStr = f.tipsdict[keyStr];
	kag.current.font.height = title.size;//設定字體大小
	kag.current.font.italic = title.italic;//是否斜體
	kag.current.font.bold = title.bold;//是否粗體
	if (title.edge)
	{
		kag.current.drawText(x,y, keyStr, title.color, 255, true, 255, title.edgecolor, 1, 0, 0);
	}
	else if (title.shadow)
	{
		kag.current.drawText(x,y, keyStr, title.color, 255, true, 255, title.shadowcolor, 1, 0, 0);
	}
	else
	{
		kag.current.drawText(x,y, keyStr, title.color);
	}
	
	//內容
	x = (int)content.x;//設定按鈕上文字位置的地方
	y = (int)content.y;
	kag.current.font.height = content.size;//設定字體大小
	kag.current.font.italic = content.italic;//是否斜體
	kag.current.font.bold = content.bold;//是否粗體
	//幹你老師沒有換行
	var textHeight = kag.current.font.getTextHeight(contentStr);    // 文字列の幅を取得します
	var offset = 0;
	for(var i=0;i<contentStr.length;i++){
		if(contentStr[i] == '\n'){
			kag.current.drawText(x, y, contentStr.substr(offset, i-offset), content.color);
			y += textHeight;
			offset = i;
		}
	}
	if(offset<contentStr.length-1){
		kag.current.drawText(x, y, contentStr.substr(offset), content.color);
		y += textHeight;
	}	
}

function tips(name){
	tf.當前TIPS名=name;
	kag.callExtraConductor("tipsmode.ks","*顯示TIPS2");
}

[endscript]
;-------------------------------------------------------------------------------------------
;描繪tips按鈕
;-------------------------------------------------------------------------------------------
[macro name=draw_tipslist]
	;TIPS按鈕
	[eval exp="draw_tipslist()"]
	
	;上翻按鈕
	[mybutton dicname="f.config_tipsmode.up" target=*刷新畫面 exp="tf.當前TIPS頁-- if (tf.當前TIPS頁>1)" cond="tf.TIPS頁數>1"]
	;下翻按鈕
	[mybutton dicname="f.config_tipsmode.down" target=*刷新畫面  exp="tf.當前TIPS頁++ if (tf.當前TIPS頁<tf.TIPS頁數)" cond="tf.TIPS頁數>1"]
	;返回按鈕
	[mybutton dicname="f.config_tipsmode.back" target=*返回]

[endmacro]


[macro name=showtips]
	;TIPS按鈕
	[eval exp="showTips()"]
	;返回按鈕
	[mybutton dicname="f.config_tipsmode.back" target=*返回]
[endmacro]

[macro name=tips]
	[font color=&(mp.color)]
	[link exp=&("tips(\""+mp.name+"\")")]
[endmacro]

[macro name=endtips]
	[endlink]
	[font color=0xffffff]
[endmacro]
;-------------------------------------------------------------------------------------------
[return]
