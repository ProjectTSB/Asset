#> asset:object/1100.conviction_shot/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1100/hit_entity

#> Private
# @private
    #declare score_holder $UserID

# User特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
