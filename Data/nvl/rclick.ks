;------------------------------------------------------------
;右鍵顯示、隱藏對話框
;------------------------------------------------------------
*隱藏對話框
[hidemes]
[rclick enabled="true" jump="true" storage="rclick.ks" target=*顯示對話框]
[eval exp="kag.leftClickHook.add(onLeftClick)"]
[s]

*顯示對話框
[eval exp="kag.leftClickHook.remove(onLeftClick)"]
[showmes]
[rclick enabled="true" call="true" storage="rclick.ks" target=*隱藏對話框]
[eval exp="tf.clicked=System.getTickCount()"]
[return]
