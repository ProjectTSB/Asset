#> asset:mob/0341.louvert/tick/general/13.power_sound/m
#
# 溜めサウンド マクロ処理
#
# @input args
#   Num : サウンドのピッチ
# @within function asset:mob/0341.louvert/tick/general/13.power_sound/

$playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 $(Num) 0
