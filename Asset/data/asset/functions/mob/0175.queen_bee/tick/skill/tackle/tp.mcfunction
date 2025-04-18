#> asset:mob/0175.queen_bee/tick/skill/tackle/tp
#
# tpさせる
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle/

# 演出
    playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 1 1.4
    execute positioned ^ ^ ^-1.5 run particle minecraft:poof ~ ~1.5 ~ 0.3 0.3 0.3 0 10 force

# 前進
    tp @s ^ ^ ^1.2

# displayの調整
    execute at @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
