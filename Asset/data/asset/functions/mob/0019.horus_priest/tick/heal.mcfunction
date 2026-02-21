#> asset:mob/0019.horus_priest/tick/heal
#
# 回復
#
# @within function asset:mob/0019.horus_priest/tick/

# 演出
    execute at @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=5] run particle heart ~ ~1 ~ 0.3 0.3 0.3 0 10
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1

# 回復
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Heal int 50 run data get storage api: Return.Difficulty
    function api:heal/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..10,sort=nearest,limit=5] run function api:heal/
    function api:heal/reset

# リセット
    scoreboard players set @s General.Mob.Tick -160
