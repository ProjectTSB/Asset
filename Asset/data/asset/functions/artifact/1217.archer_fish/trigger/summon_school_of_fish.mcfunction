#> asset:artifact/1217.archer_fish/trigger/summon_school_of_fish
#
# 魚の群れを召喚する
#
# @within function asset:artifact/1217.archer_fish/trigger/3.main

# ターゲットのIDがあれば入れておく
    execute if score $XT.TargetMobUUID Temporary matches -2147483648..2147483647 store result storage api: Argument.FieldOverride.TargetMobUUID int 1 run scoreboard players get $XT.TargetMobUUID Temporary

# Object召喚
    data modify storage api: Argument.ID set value 1112
    data modify storage api: Argument.FieldOverride.Damage set value 30
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon
