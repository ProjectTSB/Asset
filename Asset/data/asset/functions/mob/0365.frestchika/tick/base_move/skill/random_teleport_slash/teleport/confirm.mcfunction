#> asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/confirm
#
# テレポートを確定
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/random_teleport_slash/teleport/spread

# 移動
    tp @s ~ ~ ~

# 演出
    particle dust 0.0 0.7 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 25 normal @a
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1.7
