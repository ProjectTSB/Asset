#> asset:mob/0264.dark_summoner/tick/vfx/teleport
#
# テレポート時の演出
#
# @within function asset:mob/0264.dark_summoner/tick/teleport

# 演出
    particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0.1 20
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1.5
