#> asset:object/1163.frost_flake_bloom/tick/impact
#
#
#
# @within function asset:object/1163.frost_flake_bloom/tick/
#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound minecraft:block.glass.break player @a ~ ~ ~ 2 1.8
    playsound minecraft:block.glass.break player @a ~ ~ ~ 2 2.0
# 北
    particle minecraft:block white_stained_glass ~ ~0.1 ~-4.0 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~ ~0.1 ~-4.0 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~ ~0.1 ~-4.0 0.5 0.3 0.5 0.1 10 force @a

# 北東
    particle minecraft:block white_stained_glass ~2.83 ~0.1 ~-2.83 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~2.83 ~0.1 ~-2.83 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~2.83 ~0.1 ~-2.83 0.5 0.3 0.5 0.1 10 force @a

# 東
    particle minecraft:block white_stained_glass ~4.0 ~0.1 ~ 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~4.0 ~0.1 ~ 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~4.0 ~0.1 ~ 0.5 0.3 0.5 0.1 10 force @a

# 南東
    particle minecraft:block white_stained_glass ~2.83 ~0.1 ~2.83 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~2.83 ~0.1 ~2.83 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~2.83 ~0.1 ~2.83 0.5 0.3 0.5 0.1 10 force @a

# 南
    particle minecraft:block white_stained_glass ~ ~0.1 ~4.0 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~ ~0.1 ~4.0 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~ ~0.1 ~4.0 0.5 0.3 0.5 0.1 10 force @a

# 南西
    particle minecraft:block white_stained_glass ~-2.83 ~0.1 ~2.83 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~-2.83 ~0.1 ~2.83 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~-2.83 ~0.1 ~2.83 0.5 0.3 0.5 0.1 10 force @a

# 西
    particle minecraft:block white_stained_glass ~-4.0 ~0.1 ~ 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~-4.0 ~0.1 ~ 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~-4.0 ~0.1 ~ 0.5 0.3 0.5 0.1 10 force @a

# 北西
    particle minecraft:block white_stained_glass ~-2.83 ~0.1 ~-2.83 0.3 0.3 0.3 0.25 30 force @a
    particle minecraft:block snow_block ~-2.83 ~0.1 ~-2.83 0.3 0.3 0.3 0.2 30 force @a
    particle minecraft:dust 0.95 0.98 1.0 2.0 ~-2.83 ~0.1 ~-2.83 0.5 0.3 0.5 0.1 10 force @a

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4.5] run function api:damage/
    function api:damage/reset
