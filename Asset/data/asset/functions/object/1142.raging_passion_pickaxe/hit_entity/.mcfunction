#> asset:object/1142.raging_passion_pickaxe/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1142/hit_entity

#> Private
# @private
    #declare score_holder $UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
