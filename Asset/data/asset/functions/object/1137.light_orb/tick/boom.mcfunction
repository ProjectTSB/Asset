#> asset:object/1137.light_orb/tick/boom
#
#
#
# @within function asset:object/1137.light_orb/tick/

#> Private
# @private
    #declare score_holder $UserID
    #declare tag Target

# vfx
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    particle end_rod ~ ~ ~ 0 0 0 0.2 40 normal @a
    particle end_rod ~ ~ ~ 0 0 0 0.25 40 normal @a
    particle electric_spark ~ ~ ~ 0 0 0 0.2 120 normal @a
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.7 1.2
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.7 1.4

# ダメージ対象にtagを付与
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ~-2 ~-2 ~-2 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=3,dy=3,dz=3] add Target

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living_without_player,tag=Target,distance=..10] remove Target

# 消滅
    kill @s
