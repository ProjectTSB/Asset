#> asset:mob/0301.karmic/tick/common/shot_strong/main
#
#
#
# @within function asset:mob/0301.karmic/tick/**

# 発砲
    function asset:mob/0301.karmic/tick/common/shot_strong/loop

# 演出
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.8 2
    playsound minecraft:entity.firework_rocket.blast hostile @a ~ ~ ~ 1 0.5

# リセット
    tag @s remove Landing
