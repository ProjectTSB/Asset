#> asset:object/1167.thunderflash/tick/attack/
#
#
#
# @within function asset:object/1167.thunderflash/tick/move

#> Private
# @private
    #declare score_holder $UserID

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2257
    data modify storage api: Argument.FieldOverride.Scale set value 3.5f
    function api:object/summon

# ダメージ
    #function api:damage/single_damage_session/open

    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~ ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,dy=3,dz=0] run function asset:object/1167.thunderflash/tick/attack/check_duplicate
    function api:damage/reset
    #function api:damage/single_damage_session/close

# リセット
    scoreboard players reset $UserID Temporary
