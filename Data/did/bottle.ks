@if exp="typeof(global.bottle_object) == 'undefined'"
@iscript

class Bottle
{
	// 雪粒

	var fore; // 表畫面雪粒
	var back; // 裏畫面雪粒
	var l, t; // 橫位置縱位置
	var owner; // 所有 BottlePlugin 
	var spawned = false; // 雪粒出現
	var window; // 參照

	function Bottle(window, path, order, owner)
	{
		// Bottle 
		this.owner = owner;
		this.window = window;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		fore.absolute = order; // 重合順序履歷奧
		back.absolute = fore.absolute;

		fore.hitType = htMask;
		fore.hitThreshold = 256; // 全域透過
		back.hitType = htMask;
		back.hitThreshold = 256;

		fore.loadImages(path); // 畫像讀迂
		back.assignImages(fore);
		fore.setSizeToImageSize(); // 畫像同
		back.setSizeToImageSize();
	}

	function finalize()
	{
		invalidate fore;
		invalidate back;
	}

	function spawn(l, t)
	{
		// 出現
		this.l = l;
		this.t = t;
		spawned = true;
		fore.setPos(l, t);
		back.setPos(l, t); // 裏畫面位置同
		fore.visible = owner.foreVisible;
		back.visible = owner.backVisible;
		
	}
	
	function setValue(value){
		//this works
		var w = fore.imageWidth;
		var h = fore.imageHeight - value;
		
		fore.setPos(l, t + h);
		fore.setSize(w, value);
		fore.setImagePos(0, -h);
		back.setPos(l, t + h);
		back.setSize(w, value);
		back.setImagePos(0, -h);
		
	}

	function resetVisibleState()
	{
		if(spawned)
		{
			fore.visible = owner.foreVisible;
			back.visible = owner.backVisible;
		}
		else
		{
			fore.visible = false;
			back.visible = false;
		}
	}
	
	function exchangeForeBack()
	{
		// 表裏管理情報交換
		var tmp = fore;
		fore = back;
		back = tmp;
	}
}


class BottlePlugin extends KAGPlugin
{
	// 雪振
	var spawned = false;
	var bottleBack = null; // 雪粒
	var water = null; // 雪粒
	var bottleFront = null; // 雪粒
	var window; // 參照
	var foreVisible = true; // 表畫面表示狀態
	var backVisible = true; // 裏畫面表示狀態

	function BottlePlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize
		if(spawned){
			invalidate bottleFront;
			invalidate bottleBack;
			invalidate water;
		}
		super.finalize(...);
	}

	function init(options)
	{
		// 雪粒作成
		if(!spawned){
			spawned = true;
			bottleFront = new Bottle(window, "bottle_front", 102, this);
			water = new Bottle(window, "bottle_water", 101, this);
			bottleBack = new Bottle(window, "bottle_back", 100, this);
			bottleFront.spawn(100, 100);
			water.spawn(100, 100);
			bottleBack.spawn(100, 100);
			
			foreVisible = true;
			backVisible = true;
			setOptions(options);
		}
	}

	
	function uninit()
	{
		if(spawned){
			invalidate bottleFront;
			invalidate bottleBack;
			invalidate water;
			spawned = false;
		}
	}
	
	function setValue(value){
		water.setValue(value);
	}
	
	function setOptions(elm)
	{
		foreVisible = +elm.forevisible if elm.forevisible !== void;
		backVisible = +elm.backvisible if elm.backvisible !== void;
		resetVisibleState();
	}
	
	function resetVisibleState()
	{
		if(spawned){
			bottleFront.resetVisibleState();
			bottleBack.resetVisibleState();
			water.resetVisibleState();
		}
	}

	function onStore(f, elm)
	{
		// 刊保存
		var dic = f.bottle = %[];
		dic.init = spawned;
		dic.foreVisible = foreVisible;
		dic.backVisible = backVisible;
	}

	function onRestore(f, clear, elm)
	{
		// 刊讀出
		var dic = f.bottle;
		if(dic === void || !+dic.init)
		{
			uninit();
		}
		else if(dic !== void && +dic.init)
		{
			init(%[ forevisible : dic.foreVisible, backvisible : dic.backVisible ] );
		}
	}

	function onStableStateChanged(stable)
	{
	}

	function onMessageHiddenStateChanged(hidden)
	{
	}

	function onCopyLayer(toback)
	{
		if(toback)
		{
			// 表→裏
			backVisible = foreVisible;
		}
		else
		{
			// 裏→表
			foreVisible = backVisible;
		}
		resetVisibleState();
	}

	function onExchangeForeBack()
	{
		if(spawned){
			bottleFront.exchangeForeBack();
			bottleBack.exchangeForeBack();
			water.exchangeForeBack();
		}
	}
}
kag.addPlugin(global.bottle_object = new BottlePlugin(kag));

@endscript
@endif
@macro name="bottleinit"
@eval exp="bottle_object.init(mp)"
@endmacro
@macro name="bottleuninit"
@eval exp="bottle_object.uninit()"
@endmacro
@macro name="bottleopt"
@eval exp="bottle_object.setOptions(mp)"
@endmacro
@macro name="bottlevalue"
@eval exp="bottle_object.setValue(mp.value)"
@endmacro
@return
