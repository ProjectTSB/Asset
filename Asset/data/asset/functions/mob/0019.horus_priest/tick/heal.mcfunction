#> asset:mob/0019.horus_priest/tick/heal
#
# 回復
#
# @within function asset:mob/0019.horus_priest/tick/

# 演出
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..10] at @s run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 10
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1

# 回復
    data modify storage api: Argument.Heal set value 100f
    function api:heal/modifier
    execute as @e[tag=Enemy,tag=!Uninterferable,distance=..10] run function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset @s General.Mob.Tick
