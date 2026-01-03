#> asset:object/1110.heavy_lava_bomb/hit/boom
#
#
#
# @within function asset:object/1110.heavy_lava_bomb/hit/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    particle dust 1 0.45 0.1 2.2 ~ ~1.2 ~ 2 2 2 0.2 50 normal @a
    particle gust ~ ~1.2 ~ 2 2 2 0 20 normal @a
    particle flame ~ ~1.2 ~ 0 0 0 0.3 100 normal @a
    particle lava ~ ~1.2 ~ 2 2 2 0.2 50 normal @a
    playsound entity.generic.explode neutral @a ~ ~ ~ 0.8 1
    playsound entity.breeze.death neutral @a ~ ~ ~ 0.5 0.8

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
