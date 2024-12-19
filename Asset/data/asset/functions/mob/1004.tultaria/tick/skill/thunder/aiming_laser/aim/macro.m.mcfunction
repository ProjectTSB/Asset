#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/aim/macro.m
#
# @input args:
#        X: double
#        Z: double
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/aim/

# 取得した位置を使ってプレイヤー頭上にマーカーを召喚する
# ボスの目線が高く、かつ発射位置が低いのでマーカーは高いくらいがちょうどいい
    $execute positioned ~$(X) ~1.7 ~$(Z) if entity @s[distance=..20] run summon marker ~ ~ ~ {Tags:["RW.Marker.Aim"]}
