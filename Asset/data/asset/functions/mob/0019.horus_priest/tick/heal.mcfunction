#> asset:mob/0019.horus_priest/tick/heal
#
# Mobのtick時の処理
#
# @within function asset:mob/0019.horus_priest/tick/

# 効果を発動する
    data modify storage api: Argument.Heal set value 100f
    function api:heal/modifier
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..10] run function api:heal/
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..10] at @s run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 10
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1

# リセット
    function api:heal/reset
    scoreboard players set @s J.HealCool 0
