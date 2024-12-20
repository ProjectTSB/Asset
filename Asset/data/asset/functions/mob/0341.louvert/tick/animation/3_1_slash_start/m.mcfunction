#> asset:mob/0341.louvert/tick/animation/3_1_slash_start/m
#
# マクロ
#
# @input args
#   Num : VFXのFunction番号
# @within function asset:mob/0341.louvert/tick/animation/3_1_slash_start/sound_set

$playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 $(Num) 0