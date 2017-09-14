@call storage="zoom.ks"
@snowinit
@bgm storage="Fatestay night [Realta Nua] (PS Vita) OST - Deep Slumber (2012).ogg" loop="1"
;zoomin + fadein
@bgzoom canskip="false" sl="0" layer="stage" time="1500" dt="0" dw="1280" sh="1440" sw="2560" dh="720" st="0" accel="2.5" storage="prologue_01" dl="0"
@image opacity="255" visible="1" layer="0" pos="center" storage="black"
@action opacity="0" layer="0" time="1500" module="LayerFadeToModeModule"
@wact canskip="false" layer="0"
;color fadein
@backlay layer="stage"
@image visible="1" layer="stage" page="back" pos="center" mopacity="50" storage="prologue_01_a"
@trans time="1000" method="crossfade"
@wt canskip="false"
@scr
■1■
■2■
■3■
■4■
@fadebgm volume="70" time="1500"
@hidemes
;crossfade
@backlay layer="stage"
@image visible="1" layer="stage" page="back" pos="center" storage="black"
@trans time="400" rule="01" method="universal"
@wt
;fadein slash
@backlay layer="stage"
@image visible="1" layer="stage" page="back" pos="center" storage="prologue_02"
@trans time="400" rule="05" method="universal"
@se buf="0" storage="sword-gesture2.ogg"
@wt
;fadeout slash + fadein sparkle
@image opacity="50" visible="1" layer="0" mode="psadd" pos="center" storage="prologue_03"
@action opacity="0" layer="stage" time="50" module="LayerFadeToModeModule"
@action opacity="255" layer="0" time="200" module="LayerFadeToModeModule"
@wact canskip="false" layer="0"
@wact canskip="false" layer="stage"
@se buf="1" storage="sword-clash3.ogg"
@fadebgm volume="100" time="1500"
;fadeout sparkel + fadein white
@image opacity="0" visible="1" layer="stage" pos="center" storage="white"
@action opacity="0" layer="0" time="500" module="LayerFadeToModeModule"
@action opacity="255" layer="stage" time="1000" module="LayerFadeToModeModule"
@wact canskip="false" layer="0"
@wact canskip="false" layer="stage"
@wait canskip="false" time="500"
@showmes
@r
■5■
■6■
■7■
■8■
@r
■9■
■10■
@r
■11■
■12■
■13■
@hidemes
@backlay
@image visible="1" layer="stage" page="back" pos="center" storage="prologue_04"
@trans time="2000" rule="09" method="universal"
@wait canskip="false" time="1000"
@showmes
■14■
