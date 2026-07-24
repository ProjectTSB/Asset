#> asset:effect/0374.charge_plasma/end/attack/2
#
# プラズマ攻撃2: 拡散レーザー
#
# @within function asset:effect/0374.charge_plasma/end/**

# 3発撃つ
    data modify storage api: Argument.ID set value 1169
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~-30 ~ run function api:object/summon

    data modify storage api: Argument.ID set value 1169
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~ ~ run function api:object/summon

    data modify storage api: Argument.ID set value 1169
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute rotated ~30 ~ run function api:object/summon

# 演出
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 2
