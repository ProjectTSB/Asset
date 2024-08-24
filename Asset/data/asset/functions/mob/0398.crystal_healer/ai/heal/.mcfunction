#> asset:mob/0398.crystal_healer/ai/heal/
#
# 回復処理
#
# @within function asset:mob/0398.crystal_healer/tick/

#> Private
# @private
    #declare tag B2.NotTarget

# 周囲のファルシオスの神官にTagを付与
    tag @e[type=wither_skeleton,scores={MobID=397},distance=..25] add B2.NotTarget
    tag @e[type=wither_skeleton,scores={MobID=398},distance=..25] add B2.NotTarget

# 演出
    particle happy_villager ~ ~2 ~ 0.75 0.5 0.75 0.3 20 force @a[distance=..32]
    playsound entity.arrow.hit_player hostile @a[distance=..32] ~ ~ ~ 1 1.6
    playsound entity.allay.item_thrown master @a[distance=..32] ~ ~ ~ 2 0.5 0.0
    playsound entity.ender_eye.death master @a ~ ~ ~ 2 0.5 0.0
    execute as @e[type=#lib:living,tag=Enemy,tag=!B2.NotTarget,distance=..25,sort=nearest,limit=10] run particle heart ~ ~1.2 ~ 0.4 0.4 0.4 0 5 force @a[distance=..32]

# 回復
# 難易度値によって回復量が変動 150N
    function api:global_vars/get_difficulty
    execute store result storage api: Argument.Heal int 150 run data get storage api: Return.Difficulty
    function api:heal/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!B2.NotTarget,distance=..25,sort=nearest,limit=10] run function api:heal/
    function api:heal/reset

# リセット
    tag @e[type=wither_skeleton,tag=B2.NotTarget,distance=..25] add B2.NotTarget
