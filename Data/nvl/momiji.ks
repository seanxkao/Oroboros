@if exp="typeof(global.momiji_object) == 'undefined'"
@iscript

/*
	雪
*/

class MomijiGrain
{
	// 雪粒

	var fore; // 表畫面雪粒
	var back; // 裏畫面雪粒
	var xvelo; // 橫速度
	var yvelo; // 縱速度
	var xaccel; // 橫加速
	var l, t; // 橫位置縱位置
	var ownwer; // 所有 MomijiPlugin 
	var spawned = false; // 雪粒出現
	var window; // 參照

	function MomijiGrain(window, n, owner)
	{
		// MomijiGrain 
		this.owner = owner;
		this.window = window;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		fore.absolute = 1000-1; // 重合順序履歷奧
		back.absolute = fore.absolute;

		fore.hitType = htMask;
		fore.hitThreshold = 256; // 全域透過
		back.hitType = htMask;
		back.hitThreshold = 256;

		fore.loadImages("momiji_" + n); // 畫像讀迂
		back.assignImages(fore);
		fore.setSizeToImageSize(); // 畫像同
		back.setSizeToImageSize();
		xvelo = 0; // 橫方向速度
		yvelo = n*0.6 + 3.9 + Math.random() * 0.2; // 縱方向速度
		xaccel = Math.random(); // 初期加速度
	}

	function finalize()
	{
		invalidate fore;
		invalidate back;
	}

	function spawn()
	{
		// 出現
		l = Math.random() * window.primaryLayer.width; // 橫初期位置
		t = -fore.height; // 縱初期位置
		spawned = true;
		fore.setPos(l, t);
		back.setPos(l, t); // 裏畫面位置同
		fore.visible = owner.foreVisible;
		back.visible = owner.backVisible;
	}

	function resetVisibleState()
	{
		// 表示?非表示狀態再設定
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

	function move()
	{
		// 雪粒動
		if(!spawned)
		{
			// 出現出現機會
			if(Math.random() < 0.002) spawn();
		}
		else
		{
			l += xvelo;
			t += yvelo;
			xvelo += xaccel;
			xaccel += (Math.random() - 0.5) * 0.3;
			if(xvelo>=1.5) xvelo=1.5;
			if(xvelo<=-1.5) xvelo=-1.5;
			if(xaccel>=0.2) xaccel=0.2;
			if(xaccel<=-0.2) xaccel=-0.2;
			if(t >= window.primaryLayer.height)
			{
				t = -fore.height;
				l = Math.random() * window.primaryLayer.width;
			}
			fore.setPos(l, t);
			back.setPos(l, t); // 裏畫面位置同
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

class MomijiPlugin extends KAGPlugin
{
	// 雪振

	var momijis = []; // 雪粒
	var timer; // 
	var window; // 參照
	var foreVisible = true; // 表畫面表示狀態
	var backVisible = true; // 裏畫面表示狀態

	function MomijiPlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize 
		// 管理明示的破棄
		for(var i = 0; i < momijis.count; i++)
			invalidate momijis[i];
		invalidate momijis;

		invalidate timer if timer !== void;

		super.finalize(...);
	}

	function init(num, options)
	{
		// num 個雪粒出現
		if(timer !== void) return; // 雪粒

		// 雪粒作成
		for(var i = 0; i < num; i++)
		{
			var n = intrandom(0, 5); // 雪粒大 (  )
			momijis[i] = new MomijiGrain(window, n, this);
		}
		momijis[0].spawn(); // 最初雪粒最初表示

		// 作成
		timer = new Timer(onTimer, '');
		timer.interval = 80;
		timer.enabled = true;

		foreVisible = true;
		backVisible = true;
		setOptions(options); // 設定
	}

	function uninit()
	{
		// 雪粒消
		if(timer === void) return; // 雪粒

		for(var i = 0; i < momijis.count; i++)
			invalidate momijis[i];
		momijis.count = 0;

		invalidate timer;
		timer = void;
	}

	function setOptions(elm)
	{
		// 設定
		foreVisible = +elm.forevisible if elm.forevisible !== void;
		backVisible = +elm.backvisible if elm.backvisible !== void;
		resetVisibleState();
	}

	function onTimer()
	{
		// 週期呼
		var momijicount = momijis.count;
		for(var i = 0; i < momijicount; i++)
			momijis[i].move(); // move 呼出
	}

	function resetVisibleState()
	{
		// 雪粒 表示?非表示狀態再設定
		var momijicount = momijis.count;
		for(var i = 0; i < momijicount; i++)
			momijis[i].resetVisibleState(); // resetVisibleState 呼出
	}

	function onStore(f, elm)
	{
		// 刊保存
		var dic = f.momijis = %[];
		dic.init = timer !== void;
		dic.foreVisible = foreVisible;
		dic.backVisible = backVisible;
		dic.momijiCount = momijis.count;
	}

	function onRestore(f, clear, elm)
	{
		// 刊讀出
		var dic = f.momijis;
		if(dic === void || !+dic.init)
		{
			// 雪
			uninit();
		}
		else if(dic !== void && +dic.init)
		{
			// 雪
			init(dic.momijiCount, %[ forevisible : dic.foreVisible, backvisible : dic.backVisible ] );
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
		// 表←→裏情報
		// 情報表示?非表示情報
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
		// 裏表管理情報交換
		var momijicount = momijis.count;
		for(var i = 0; i < momijicount; i++)
			momijis[i].exchangeForeBack(); // exchangeForeBack 呼出
	}
}

kag.addPlugin(global.momiji_object = new MomijiPlugin(kag));
	// 作成、登錄

@endscript
@endif
; 登錄
@macro name="momijiinit"
@eval exp="momiji_object.init(17, mp)"
@endmacro
@macro name="momijiuninit"
@eval exp="momiji_object.uninit()"
@endmacro
@macro name="momijiopt"
@eval exp="momiji_object.setOptions(mp)"
@endmacro
@return

