#> asset:mob/0464.drain_plant/tick/move/emerge
#
#
#
# @within function asset:mob/0464.drain_plant/tick/move/

# 出てくる
    tp @s ~ ~0.04 ~ ~-18 ~
    particle block dirt ~ ~0.4 ~ 0.4 0.4 0.4 0 5 normal @a
    #playsound block.gravel.break hostile @a ~ ~ ~ 0.5 0.8
    playsound entity.iron_golem.damage hostile @a ~ ~ ~ 0.1 0.7
    playsound minecraft:block.soul_sand.break player @a ~ ~ ~ 0.5 0.5
