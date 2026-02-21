#> asset:object/1081.barrel/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1081/hit_entity

#> Private
# @private
    #declare score_holder $UserID
    #declare tag 1081.Hit

# 対象特定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,dy=0.02,dz=0,sort=random,limit=1] run tag @s add 1081.Hit
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    execute if entity @e[type=#lib:living,tag=1081.Hit,tag=ExtendedCollision,distance=..10] store result storage api: Argument.Damage double 0.0125 run data get storage asset:context this.Damage 10
    data modify storage api: Argument.AttackType set value "Physical"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=1081.Hit,dx=0,dy=0.02,dz=0,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=1081.Hit,dx=0,dy=0.02,dz=0,limit=1] run tag @s remove 1081.Hit

# 消滅
    scoreboard players reset $UserID Temporary
    function asset:object/call.m {method:kill}
