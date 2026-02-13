#> asset:object/1137.light_orb/tick/boom
#
#
#
# @within function asset:object/1137.light_orb/tick/

#> Private
# @private
    #declare score_holder $UserID

# vfx
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    particle end_rod ~ ~ ~ 0 0 0 0.2 40 normal @a
    particle end_rod ~ ~ ~ 0 0 0 0.25 40 normal @a
    particle electric_spark ~ ~ ~ 0 0 0 0.2 120 normal @a
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.7 1.2
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.7 1.4

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-2 ~-2 ~-2 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=3,dy=3,dz=3] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
