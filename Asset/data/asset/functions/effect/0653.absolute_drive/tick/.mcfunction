#> asset:effect/0653.absolute_drive/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0653.absolute_drive/_/tick

effect give @s resistance infinite 6 true
particle dust_color_transition 0 0.75 1 1 1 1 1 ~ ~1 ~ 0.2 0.5 0.2 0 1 force @a[distance=..32]
