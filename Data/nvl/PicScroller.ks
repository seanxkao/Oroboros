;---------------------------------------------------------------------------------------
;PicScroller
;圖片循環移動插件-by VariableD
;---------------------------------------------------------------------------------------
;加工·修改自由
;轉載請註明作者和出處
;---------------------------------------------------------------------------------------
;宏指令

;顯示循環圖片層
;@picscrollerinit
;參數：
;storage-用於循環顯示的圖片文件名（必須）
;direction-left（默認）/right/up/down圖片滾動的方向（暫不支持斜方向）
;left-圖片坐標（默認0）
;top-圖片坐標（默認0）
;width-圖片寬度（默認遊戲分辨率）
;height-圖片高度（默認遊戲分辨率）
;index-圖片層順位（默認100-1）
;interval-移動一像素的間隔時間（默認10毫秒）

;消除循環圖片層
;@picscrolleruninit
;參數：無
;---------------------------------------------------------------------------------------
@if exp="typeof(global.picscroller_object) == 'undefined'"
@iscript
//一個圖層用於載入原圖
//新建一個圖層用於讀取並顯示(支持trans)
//一個timer

class MyScrollLayer
{
    var fore;
    var back;
    
     function MyScrollLayer(window,owner)
    {
        this.owner = owner;
        this.window = window;
        
        fore = new Layer(window, window.fore.base);
        back = new Layer(window, window.back.base);
        
        fore.hitType = htMask;
        fore.hitThreshold = 256; 
        back.hitType = htMask;
        back.hitThreshold = 256;
        
        fore.setSize(window.primaryLayer.width,window.primaryLayer.height); 
        fore.fillRect(0,0,window.primaryLayer.width,window.primaryLayer.height,0x00000000); //清空圖層
        back.assignImages(fore);
        back.setSizeToImageSize();
    }
    
      function finalize()
    {
            invalidate fore;
            invalidate back;
    }

 //可見效果（由plugin控制）
        function resetVisibleState()
        {

            fore.visible = owner.foreVisible;
            back.visible = owner.backVisible;
        }
        
      //表裡交換
              function exchangeForeBack()
        {
                // trans時的表裡頁內容交換
                var tmp = fore;
                fore = back;
                back = tmp;
        }
        
        //向左移動
        function toleft()
        {        	
        	var dleft=owner.pace;
        	var dtop=0;
        	var sleft=0;
        	var stop=0;
        	var src=owner.ml;
        	var sw=src.width;
        	var sh=src.height;
        	
        	fore.copyRect(dleft      , dtop, src, sleft, stop, sw, sh);
		fore.copyRect(sw+dleft, dtop, src, sleft, stop, sw, sh);
		back.assignImages(fore);
        }
        
        //向右移動
        function toright()
        {
		var dleft=owner.pace;
		var dtop=0;
		var sleft=0;
		var stop=0;
		var src=owner.ml;
		var sw=src.width;
		var sh=src.height;
		
        	fore.copyRect(dleft, dtop, src, sleft     , stop, sw, sh);
		fore.copyRect(0    , dtop, src, sw-dleft, stop, sw, sh);
		back.assignImages(fore);
        }
        
        //向上移動
        function toup()
        {
		var dleft=0;
		var dtop=owner.pace;
		var sleft=0;
		var stop=0;
		var src=owner.ml;
		var sw=src.width;
		var sh=src.height;
        	fore.copyRect(dleft      , dtop, src, sleft, stop, sw, sh);
		fore.copyRect(dleft, sh+dtop, src, sleft, stop, sw, sh);
		back.assignImages(fore);
        }
        //向下移動
        function todown()
        {
		var dleft=0;
		var dtop=owner.pace;
		var sleft=0;
		var stop=0;
		var src=owner.ml;
		var sw=src.width;
		var sh=src.height;
		
        	fore.copyRect(dleft, dtop, src, sleft, stop     , sw, sh);
		fore.copyRect(dleft , 0   ,  src, sleft, sh-dtop, sw, sh);
		back.assignImages(fore);
        }
        
       //屬性
	property index
	{
	    setter(x) 
	    	{
			fore.absolute=x;
			back.absolute=x;
		}
	}
	
	property left
	{
	    setter(x) 
	    	{
			fore.left=x;
			back.left=x;
		}
	}
	property top
	{
	    setter(x) 
	    	{
			fore.top=x;
			back.top=x;
		}
	}
	property width
	{
	    setter(x) 
	    	{
			fore.width=x;
			back.width=x;
		}
	}
	property height
	{
	    setter(x) 
	    	{
			fore.height=x;
			back.height=x;
		}
	}
}

class PicScrollerPlugin extends KAGPlugin
{

var timer; // 計時器
var interval=10;

	var window; 
	var foreVisible; 
	var backVisible; 
	
	var scrollLayer;
	var ml;
	var storage;
	
	var left;
	var top;
	var width;
	var height;
	var index;
	
	var direction="left";
	var pace;

       function PicScrollerPlugin(window)
        {
                super.KAGPlugin();
                this.window = window;
                
                foreVisible=true;
                backVisible=true;
                
                left=0;
                top=0;
                width=window.primaryLayer.width;
                height=window.primaryLayer.height;
                index=100-1;
        
        }
        
        function finalize()
        {
                invalidate timer if timer !== void;
                super.finalize(...);
        }
        
        function loadImages(storage,key)
        {
        	//載入二方或四方連續背景圖片
		ml=new Layer(kag,kag.fore.base);
		ml.loadImages(storage);
		ml.setSizeToImageSize();
        }
        
        function init(elm)
        {
		 storage=elm.storage;
		 loadImages(storage);
		
               if (elm.left!==void) this.left=(int)elm.left;
               if (elm.top!==void) this.top=(int)elm.top;
               if (elm.width!==void) this.width=(int)elm.width;
               if (elm.height!==void) this.height=(int)elm.height;
               if (elm.index!==void) this.index=(int)elm.index;
               
               if (elm.interval!==void) this.interval=(int)elm.interval;
               if (elm.direction!==void) this.direction=(string)elm.direction;
               
                scrollLayer=new MyScrollLayer(window,this);
                
                scrollLayer.left=this.left;
                scrollLayer.top=this.top;
                scrollLayer.width=this.width;
                scrollLayer.height=this.height;
                scrollLayer.index=this.index;


                   //計時器的具體設定
                timer = new Timer(onTimer, '');
                timer.interval = this.interval;

                foreVisible =  true;
                backVisible = true;
                resetVisibleState();
                
                dm("開始背景循環");
                
                pace=0;
                timer.enabled = true;
                
        }
        
        function onTimer()
        {
		switch (direction)
		{
			//左右
			case "left":
				pace--;
				scrollLayer.toleft();
				if (pace==-ml.width) pace=1;
				break;
			case "right":
				pace++;
				scrollLayer.toright();
				if (pace==ml.width) pace=-1;
				break;
			//上下
			case "up":
				pace--;
				scrollLayer.toup();
				if (pace==-ml.height) pace=1;
				break;
			case "down":
				pace++;
				scrollLayer.todown();
				if (pace==ml.height) pace=-1;
				break;
			case "leftup":
			
			case "leftdown":
			
			case "rightup":
			
			case "rightdown":
		
		}
		
        }
        
        function uninit()
        {
             if (timer===void) return;
		timer.enabled=false;
		timer=void;
		scrollLayer=void;
        }
        
        function pause()
        {
                timer.enabled=false;
        }
        
        function restart()
        {
                timer.enabled=true;
        }
        
        function resetVisibleState()
        {
                if (timer===void) return;
                scrollLayer.resetVisibleState(); 
        }
        
          function onStore(f, elm)
        {
        	var dic=f.picscrollers=%[];
        	dic.init = timer !== void;
		dic.foreVisible = foreVisible;
		dic.backVisible = backVisible;
		
		dic.storage=storage;
		dic.left=left;
		dic.top=top;
		dic.width=width;
		dic.height=height;
		dic.index=index;
		dic.interval=interval;
		dic.direction=direction;
		
        }
        
           function onRestore(f, clear, elm)
        {
                var dic = f.picscrollers;
                if(dic === void || !+dic.init)
                {
                        uninit();
                }
                else if(dic !== void && +dic.init)
                {
                        init(%[
	                        foreVisible:dic.foreVisible,
	                        backVisible:dic.backVisible,
	                        storage:dic.storage,
	                        left:dic.left,
	                        top:dic.top,
	                        width:dic.width,
	                        height:dic.height,
	                        index:dic.index,
	                        interval:dic.interval,
	                        direction:dic.direction,
                        ]);
                }
        }
        
         function onCopyLayer(toback)
        {
                // 表裡複製的處理
                if(toback)
                {
                        // 表→裡
                        backVisible = foreVisible;
                }
                else
                {
                        // 裡→表
                        foreVisible = backVisible;
                }
                
                resetVisibleState();
                
        }
        
          function onExchangeForeBack()
        {
	           if (scrollLayer==void) return;
	           scrollLayer.exchangeForeBack(); //表裡交換
        }

}
kag.addPlugin(global.picscroller_object = new PicScrollerPlugin(kag));
@endscript
@endif
;---------------------------------------------------------------------------------------
;宏設定

[macro name=picscrollerinit]
[eval exp="picscroller_object.init(mp)"]
[endmacro]

[macro name=picscrolleruninit]
[eval exp="picscroller_object.uninit()"]
[endmacro]

@return
