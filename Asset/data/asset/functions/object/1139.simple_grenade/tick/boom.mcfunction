#> asset:object/1139.simple_grenade/tick/boom
#
#
#
# @within function asset:object/1139.simple_grenade/tick/

#> Private
# @private
    #declare tag 1139.Target
    #declare tag 1139.Already
    #declare score_holder $UserID

# 一度しか爆発しないように
    execute if entity @s[tag=1139.Already] run return fail
    tag @s add 1139.Already

# 演出
    particle flame ~ ~ ~ 0.5 0.5 0.5 0.05 60 normal @a
    particle flame ~ ~ ~ 0.5 0.5 0.5 0.10 60 normal @a
    particle smoke ~ ~ ~ 0 0 0 0.15 40 normal @a
    particle smoke ~ ~ ~ 0 0 0 0.30 40 normal @a
    particle explosion ~ ~ ~ 1.8 1.8 1.8 0 15 normal @a
    playsound entity.generic.explode neutral @a ~ ~ ~ 0.7 1

# 対象選定
# 着弾時にdistanceだとワンチャンすぐ近くの対称に当たらない可能性があるのでdxyzでも判定しておく
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] add 1139.Target
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..4] add 1139.Target

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=1139.Target,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..10] remove 1139.Target

# 消滅
    execute on vehicle run kill @s
    kill @s
