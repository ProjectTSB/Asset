#> asset:object/1089.cosmo_beam/tick/angel_damage
#
#
#
# @within function asset:object/1089.cosmo_beam/tick/shot

#> Private
# @private
#declare score_holder $UserID
#declare score_holder $Count
#declare score_holder $Damage

# 数をカウントして、ダメージを割る
    execute store result score $Count Temporary positioned ~-8 ~-105 ~-8 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,scores={MobID=0..},dx=16,dy=200,dz=16]
    execute store result score $Damage Temporary run data get storage asset:context this.Damage
    scoreboard players operation $Damage Temporary /= $Count Temporary
# 更に10で割る
    scoreboard players operation $Damage Temporary /= $10 Const
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $Damage Temporary
# 属性とか
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Tunder"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
# ダメージ
    execute positioned ~-8 ~-105 ~-8 as @e[type=#lib:living,tag=Enemy,tag=Enemy.Boss,tag=!Uninterferable,dx=16,dy=200,dz=16] run function api:damage/
# リセット
    function api:damage/reset
    scoreboard players reset $Count
    scoreboard players reset $Damage
