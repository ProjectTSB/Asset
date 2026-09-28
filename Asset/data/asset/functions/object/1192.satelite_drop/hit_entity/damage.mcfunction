#> asset:object/1192.satelite_drop/hit_entity/damage
#
#
#
# @within function asset:object/1192.satelite_drop/hit_entity/

#> Private
# @private
    #declare score_holder $UserID

    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.ElementType set from storage asset:context this.ElementType
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
