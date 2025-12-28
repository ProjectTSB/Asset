#> asset:artifact/0769.shaking_splash/trigger/bullet
#
# 非スニーク時に普通の弾を発射する処理
#
# @within function asset:artifact/0769.shaking_splash/trigger/3.main

# Object召喚
    data modify storage api: Argument.ID set value 1022
    data modify storage api: Argument.FieldOverride.Damage set value 320
    data modify storage api: Argument.FieldOverride.Motion set value 1.2
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute anchored eyes positioned ^-0.35 ^-0.35 ^0.5 run function api:object/summon
