#> asset:mob/0420.astro_blaze/tick/pre_bullet
#
# 発射合図の演出
#
# @within function asset:mob/0420.astro_blaze/tick/

playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 1.5 1.8
particle minecraft:witch ~ ~ ~ 0.5 0 0.5 0.5 30 force @a[distance=..64]
