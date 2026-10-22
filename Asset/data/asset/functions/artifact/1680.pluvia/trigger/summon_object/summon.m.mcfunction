#> asset:artifact/1680.pluvia/trigger/summon_object/summon.m
#
#
#
# @within function asset:artifact/1680.pluvia/trigger/summon_object/random_rotate

# 実行者がMobなら、自身のMobUUIDを入れておく
    execute if entity @s[tag=Enemy] store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get @s MobUUID

# 数値設定
    execute store result storage api: Argument.FieldOverride.Damage int 1 run random value 60..70
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal

# 使用者の体力が最大ならダメージとMP回復量に補正をかける
    execute as @p[tag=this] run function api:entity/player/get_health_per
    execute if data storage api: Return{HealthPer:1.0d} store result storage api: Argument.FieldOverride.Damage double 0.012 run data get storage api: Argument.FieldOverride.Damage 100
    execute if data storage api: Return{HealthPer:1.0d} store result storage api: Argument.FieldOverride.AdditionalMPHeal double 0.012 run data get storage api: Argument.FieldOverride.AdditionalMPHeal 100

# 召喚
    data modify storage api: Argument.ID set value 1209
    execute as @p[tag=this] store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    $execute rotated $(Yaw) $(Pitch) positioned ^ ^ ^10 facing entity @s eyes run function api:object/summon
