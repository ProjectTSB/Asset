#> asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/2.charge_sound.m
#
# チャージサウンドのマクロ
#
# @input args
#   Num : Sound の Pitch
# @within function
#   asset:mob/0365.frestchika_v2/ai/animation/200_0_opening/1.charge_sound_calc

$playsound entity.illusioner.prepare_mirror hostile @a[distance=..32] ~ ~ ~ 0.5 $(Num) 0