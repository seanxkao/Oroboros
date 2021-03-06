@if exp="typeof(global.oldMovie_object) == 'undefined'"
@iscript

/*
	古效果
*/

class OldMovie
{
	// 效果

	var fore; // 表畫面效果
	var back; // 裏畫面效果
	var l, t; // 橫位置縱位置
	var ownwer; // 所有
	var spawned = false; // 效果出現
	var window; // 參照
    var type; // 效果種類。0縱線、1

	function OldMovie(window, tp, h, opa, opa2, owner)
	{
        var opac;

		// OldMovie 
		this.owner = owner;
		this.window = window;

		fore = new Layer(window, window.fore.base);
		back = new Layer(window, window.back.base);

		fore.hitType = htMask;
		fore.hitThreshold = 256; // 全域透過
		back.hitType = htMask;
		back.hitThreshold = 256;
        fore.face = dfBoth;
        back.face = dfBoth;
        type = tp;
        if(type == 0) {
            fore.setSize(2, window.primaryLayer.height);
            back.setSize(2, window.primaryLayer.height);
            fore.fillRect(0, 0, 2, h, 0xFF000000);
    		opac = opa;
        }
        else {
            fore.setSize(1,1);
            back.setSize(1,1);
            fore.fillRect(0, 0, 1, 1, 0xFFFFFFFF);
    		opac = opa2;
        }
		back.assignImages(fore);
		fore.opacity = opac;
		back.opacity = opac;
        fore.parent = window.fore.base;
        back.parent = window.back.base;

		fore.absolute = 1000 - 1; // 重合順序指定
		back.absolute = fore.absolute;
	}

	function finalize()
	{
		invalidate fore;
		invalidate back;
	}

	function spawn(nl,nt,nw,nh)
	{
		// 出現
		l = Math.random() * nw; // 橫初期位置
        var tt = nt;
        if(type == 1) tt += Math.random() * nh;
		spawned = true;
		fore.setPos(nl + l, tt);
		back.setPos(nl + l, tt); // 裏畫面位置同
		fore.visible = owner.foreVisible;
		back.visible = owner.backVisible;
	}

	function resetVisibleState()
	{
		// 表示・非表示狀態再設定
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

	function move(nl,nt,nw,nh)
	{
		l = Math.random() * nw; // 橫初期位置
        var tt = nt;
        if(type == 1) tt += Math.random() * nh;
		fore.setPos(nl + l, tt);
		back.setPos(nl + l, tt); // 裏畫面位置同
	}

	function exchangeForeBack()
	{
		// 表裏管理情報交換
		var tmp = fore;
		fore = back;
		back = tmp;
	}
}

class OldMoviePlugin extends KAGPlugin
{
	// 效果

	var noises = []; // 縱線
    var pnoises = []; // 
	var timer; // 
	var window; // 參照
	var foreVisible = true; // 表畫面表示狀態
	var backVisible = true; // 裏畫面表示狀態
	var l = 0; // 描畫範圍 ( 指定可能 )
    var t = 0;
	var w; 
    var h;
    var opa = 40; // 縱線透明度
    var opa2 = 240; // 透明度

	function OldMoviePlugin(window)
	{
		super.KAGPlugin();
		this.window = window;
	}

	function finalize()
	{
		// finalize 
		// 管理明示的破棄
		for(var i = 0; i < noises.count; i++)
			invalidate noises[i];
		invalidate noises;
		for(var i = 0; i < pnoises.count; i++)
			invalidate pnoises[i];
		invalidate pnoises;

		invalidate timer if timer !== void;

		super.finalize(...);
	}

	function init(num, num2, options)
	{
    	w = window.primaryLayer.width; 
        h = window.primaryLayer.height;
        l = +options.left if options.left !== void;
        t = +options.top if options.top !== void;
        w = +options.width if options.width !== void;
        h = +options.height if options.height !== void;
    
		// num 個縱線、num2 個出現
		if(timer !== void) return; // 效果

		// 縱線作成
		for(var i = 0; i < num; i++)
		{
			noises[i] = new OldMovie(window, 0, h, opa, opa2, this);
    		noises[i].spawn(l,t,w,h);
		}

		// 作成
		for(var i = 0; i < num2; i++)
		{
			pnoises[i] = new OldMovie(window, 1, h, opa, opa2, this);
    		pnoises[i].spawn(l,t,w,h);
		}

		// 作成
		timer = new Timer(onTimer, '');
		timer.interval = 150;
		timer.enabled = true;

		foreVisible = true;
		backVisible = true;
		setOptions(options); // 設定
	}

	function uninit()
	{
		// 效果消
		if(timer === void) return; // 效果

		for(var i = 0; i < noises.count; i++)
			invalidate noises[i];
		noises.count = 0;
		for(var i = 0; i < pnoises.count; i++)
			invalidate pnoises[i];
		pnoises.count = 0;

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
		var noisecount = noises.count;
		for(var i = 0; i < noisecount; i++)
			noises[i].move(l, t, w, h); // move 呼出
		var pnoisecount = pnoises.count;
		for(var i = 0; i < pnoisecount; i++)
			pnoises[i].move(l, t, w, h); // move 呼出
	}

	function resetVisibleState()
	{
		// 效果 表示・非表示狀態再設定
		var noisecount = noises.count;
		for(var i = 0; i < noisecount; i++)
			noises[i].resetVisibleState(); // resetVisibleState 呼出
		var pnoisecount = pnoises.count;
		for(var i = 0; i < pnoisecount; i++)
			pnoises[i].resetVisibleState(); // resetVisibleState 呼出
	}

	function onStore(f, elm)
	{
		// 刊保存
		var dic = f.noises = %[];
		var dic2 = f.pnoises = %[];
		dic.init = timer !== void;
		dic.foreVisible = foreVisible;
		dic.backVisible = backVisible;
		dic.noiseCount = noises.count;
        dic.l = l;
        dic.t = t;
        dic.w = w;
        dic.h = h;
		dic2.pnoiseCount = pnoises.count;
	}

	function onRestore(f, clear, elm)
	{
		// 刊讀出
		var dic = f.noises;
        var dic2 = f.pnoises;
		if(dic === void || !+dic.init)
		{
			// 效果
			uninit();
		}
		else if(dic !== void && +dic.init)
		{
			// 效果
			init(dic.noiseCount, dic2.pnoiseCount, %[ forevisible : dic.foreVisible, backvisible : dic.backVisible , left : dic.l , top : dic.t , width : dic.w , height : dic.h ] );
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
		// 情報表示・非表示情報
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
		var noisecount = noises.count;
		for(var i = 0; i < noisecount; i++)
			noises[i].exchangeForeBack(); // move 呼出
		var pnoisecount = pnoises.count;
		for(var i = 0; i < pnoisecount; i++)
			pnoises[i].exchangeForeBack(); // move 呼出
	}
}

kag.addPlugin(global.oldMovie_object = new OldMoviePlugin(kag));
	// 作成、登錄

@endscript
@endif
; 登錄
@macro name="oldmovieinit"
@eval exp="oldMovie_object.init(2, 3, mp)"
; 2, 3 數值變、表示縱線數變更。
@endmacro
@macro name="oldmovieuninit"
@eval exp="oldMovie_object.uninit()"
@endmacro
@macro name="oldmovieopt"
@eval exp="oldMovie_object.setOptions(mp)"
@endmacro
@return
