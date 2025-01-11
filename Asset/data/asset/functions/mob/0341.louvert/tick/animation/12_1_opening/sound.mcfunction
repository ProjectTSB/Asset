#> asset:mob/0341.louvert/tick/animation/12_1_opening/sound
#
# オープニング時演出
#
# @within function asset:mob/0341.louvert/tick/animation/12_1_opening/

particle soul_fire_flame ~ ~1 ~ 2 2 2 0.01 100 normal
particle flame ~ ~1 ~ 2 2 2 0.01 100 normal
playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 2.0 1.5 0.0
playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 2 1.5