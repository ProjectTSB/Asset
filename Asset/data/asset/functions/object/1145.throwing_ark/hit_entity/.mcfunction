#> asset:object/1145.throwing_ark/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1145/hit_entity

#> private
# @private
    #declare score_holder $UserID

# ダメージ情報設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    execute positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[type=#lib:living,tag=ExtendedCollision,dx=2,dy=2,dz=2] store result storage api: Argument.Damage double 0.025 run data get storage asset:context this.Damage 10
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# modifier
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
# ダメージ実行
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=2,dy=2,dz=2] run function api:damage/
# リセット
    function api:damage/reset
    scoreboard players reset $UserID Temporary
