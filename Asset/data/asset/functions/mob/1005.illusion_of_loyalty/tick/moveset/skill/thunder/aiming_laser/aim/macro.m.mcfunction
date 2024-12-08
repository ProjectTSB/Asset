#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/aim/macro.m
#
# @input args:
#        X: double
#        Z: double
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/aim/

# 取得した位置を使ってプレイヤーの足元にマーカーを召喚する
    $execute positioned ~$(X) ~1 ~$(Z) if entity @s[distance=..20] run summon marker ~ ~ ~ {Tags:["RX.Marker.Aim"]}
