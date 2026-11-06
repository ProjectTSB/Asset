#> asset:object/1116.ember_object/tick/damage
#
#
#
# @within function asset:object/1116.ember_object/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    execute rotated ~ 0 run function asset:object/1116.ember_object/tick/vfx
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1
    playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 0
    playsound minecraft:block.end_portal.spawn neutral @a ~ ~ ~ 1 0
    particle flash ~ ~4 ~ 3 4 3 0 400
    particle lava ~ ~4 ~ 3 4 3 0 700

# User特定
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
