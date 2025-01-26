#> asset:object/2151.haruclaire_icewall_center/summon/m
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/2151.haruclaire_icewall_center/summon/

# 元となるEntityを召喚する
    $summon armor_stand ~ ~ ~ {Tags:["ObjectInit","AK.Object"],Rotation:$(Rotation),Marker:1b,Invisible:1b}
