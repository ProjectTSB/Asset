#> asset:mob/1004.tultaria/tick/base_move/regenerate_platform/teleport
#
# プレイヤーをテレポートさせる
#
# @within function asset:mob/1004.tultaria/tick/base_move/regenerate_platform/as_platform

playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1
tp @s ~ ~1 ~
