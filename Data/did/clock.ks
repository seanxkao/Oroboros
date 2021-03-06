@if exp="typeof(global.clock_object) == 'undefined'"
@iscript

class Clock
{
	// 雪粒
	var msgfore;
	var msgback;
	var fore;
	var back; // 裏畫面雪粒
	var l, t; // 橫位置縱位置
	var owner;
	var spawned = false;
	var window; // 參照

	function Clock(window, path, owner)
	{
		// Clock 
		this.owner = owner;
		this.window = window;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);
		msgfore = new Layer(window, fore);
		msgback = new Layer(window, back);

		fore.absolute = 100; // 重合順序履歷奧
		back.absolute = fore.absolute;
		msgfore.absolute= 101;
		msgback.absolute= msgfore.absolute;

		fore.hitType = htMask;
		fore.hitThreshold = 256; // 全域透過
		back.hitType = htMask;
		back.hitThreshold = 256;
		msgfore.hitType = htMask;
		msgfore.hitThreshold = 256;
		msgback.hitType = htMask;
		msgback.hitThreshold = 256;

		fore.loadImages(path); // 畫像讀迂
		back.assignImages(fore);
		fore.setSizeToImageSize(); // 畫像同
		back.setSizeToImageSize();
		msgfore.setSize(fore.width, fore.height);
		msgback.setSize(back.width, back.height);
	}

	function finalize()
	{
		invalidate fore;
		invalidate back;
		invalidate msgfore;
		invalidate msgback;
	}

	function spawn(l, t)
	{
		// 出現
		this.l = l;
		this.t = t;
		spawned = true;
		fore.setPos(l, t);
		back.setPos(l, t);
		msgfore.setPos(0, 0);
		msgback.setPos(0, 0);
		fore.visible = owner.foreVisible;
		back.visible = owner.backVisible;
		msgfore.visible = owner.foreVisible;
		msgback.visible = owner.backVisible;
	}
	
	function setClock(date, time){
		msgfore.fillRect(0, 0, msgfore.width, msgfore.height, 0x00000000);
		msgback.fillRect(0, 0, msgback.width, msgback.height, 0x00000000);
		msgfore.font.height = 24;
		msgback.font.height = 24;
		msgfore.drawText(20, 20, date, 0xffffff);
		msgback.drawText(20, 20, date, 0xffffff);
		msgfore.drawText(20, 50, time, 0xffffff);
		msgback.drawText(20, 50, time, 0xffffff);
	}
	

	function resetVisibleState()
	{
		if(spawned)
		{
			fore.visible = owner.foreVisible;
			back.visible = owner.backVisible;
			msgfore.visible = owner.foreVisible;
			msgback.visible = owner.backVisible;
		}
		else
		{
			fore.visible = false;
			back.visible = false;
			msgfore.visible = false;
			msgback.visible = false;
		}
	}
	
	function exchangeForeBack()
	{
		// 表裏管理情報交換
		var tmp = fore;
		fore = back;
		back = tmp;
		tmp = msgfore;
		msgfore = msgback;
		msgback = tmp;
	}
}


class ClockPlugin extends KAGPlugin
{
	// 雪振
	var spawned = false;
	var clock = null; // 雪粒
	var window; // 參照
	var foreVisible = true; // 表畫面表示狀態
	var backVisible = true; // 裏畫面表示狀態
	var date = "第一天";
	var time = "00:00 AM";

	function ClockPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize
		if(spawned){
			invalidate clock;
		}
		super.finalize(...);
	}

	function init(options)
	{
		// 雪粒作成
		if(!spawned){
			spawned = true;
			clock = new Clock(window, "clock", this);
			clock.spawn(10, 10);
			
			foreVisible = true;
			backVisible = true;
			setOptions(options);
		}
	}

	function setClock(date, time){
		this.date = date;
		this.time = time;
		clock.setClock(date, time);
	}
	
	function uninit()
	{
		if(spawned){
			invalidate clock;
			spawned = false;
		}
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
			clock.resetVisibleState();
			setClock(date, time);
		}
	}

	function onStore(f, elm)
	{
		// 刊保存
		var dic = f.clock = %[];
		dic.init = spawned;
		dic.foreVisible = foreVisible;
		dic.backVisible = backVisible;
	}

	function onRestore(f, clear, elm)
	{
		// 刊讀出
		var dic = f.clock;
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
			clock.exchangeForeBack();
		}
	}
}
kag.addPlugin(global.clock_object = new ClockPlugin(kag));
@endscript
@endif

@macro name="clockinit"
@eval exp="clock_object.init(mp)"
@endmacro
@macro name="clockuninit"
@eval exp="clock_object.uninit()"
@endmacro
@macro name="clockopt"
@eval exp="clock_object.setOptions(mp)"
@endmacro
@macro name="setclock"
@eval exp="clock_object.setClock(mp.date, mp.time)"
@endmacro
@return
