#> asset:artifact/1680.pluvia/trigger/summon_object/summon.m
#
#
#
# @within function asset:artifact/1680.pluvia/trigger/summon_object/random_rotate

# 実行者がMobなら、自身のMobUUIDを入れておく
    execute if entity @s[tag=Enemy] store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get @s MobUUID

# 召喚
    data modify storage api: Argument.ID set value 1209
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 60..70
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute as @p[tag=this] store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    $execute rotated $(Yaw) $(Pitch) positioned ^ ^ ^10 facing entity @s eyes run function api:object/summon
