#> asset:object/1217.interferable_slash/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1217/hit_entity

#> Private
# @private
    #declare score_holder $O1217.UserID

# 強化中の処理
    execute if entity @s[tag=O1217.Reinforced] run function asset:object/1217.interferable_slash/hit_entity/reinforced.m with storage asset:context this

# ダメージ処理
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $O1217.UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $O1217.UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset

# 演出
    playsound item.trident.riptide_1 player @a ~ ~ ~ 1.5 2.0

# kill
    function asset:object/call.m {method:kill}

# リセット
    scoreboard players reset $O1217.UserID
