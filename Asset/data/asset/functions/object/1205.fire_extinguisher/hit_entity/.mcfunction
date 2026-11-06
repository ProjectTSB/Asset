#> asset:object/1205.fire_extinguisher/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1205/hit_entity

#> Private
# @private
    #declare score_holder $UserID

# UserID取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run function asset:object/1205.fire_extinguisher/hit_entity/check_duplicate
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
