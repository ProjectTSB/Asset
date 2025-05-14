#> asset:mob/0084.falcios_priest/tick/heal
#
# 周囲の敵を回復する
#
# @within function
#   asset:mob/0084.falcios_priest/tick/
#   asset:mob/0084.falcios_priest/tick/shoot

#> Private
# @private
    #declare tag NotTarget

# 周囲のファルシオスの神官にTagを付与
    tag @e[type=wither_skeleton,scores={MobID=84},distance=..10] add NotTarget

# 演出
    particle soul ~ ~1.2 ~ 2.5 0.5 2.5 0.3 200 normal
    playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.8 0 0
    playsound block.fire.ambient hostile @a ~ ~ ~ 1.5 0.8 0
    playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0 0
    execute as @e[type=#lib:living,tag=Enemy,tag=!NotTarget,tag=!Uninterferable,distance=..10,sort=nearest,limit=5] at @s run particle heart ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a

# 回復
# 難易度値によって回復量が変動
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Heal int 400 run data get storage api: Return.Difficulty
    function api:heal/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!NotTarget,tag=!Uninterferable,distance=..10,sort=nearest,limit=5] run function api:heal/
    function api:heal/reset

# リセット
    tag @e[type=wither_skeleton,tag=NotTarget,scores={MobID=84},distance=..10] add NotTarget

# 処理のリセット
# ハード以上では魔法発射側でリセットするためこちらではリセットしない
    execute unless predicate api:global_vars/difficulty/min/3_blessless if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0084.falcios_priest/tick/reset
