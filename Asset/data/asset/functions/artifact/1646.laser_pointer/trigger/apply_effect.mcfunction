#> asset:artifact/1646.laser_pointer/trigger/apply_effect
#
#
#
# @within function asset:artifact/1646.laser_pointer/trigger/*

# Effect420
    data modify storage api: Argument.ID set value 420
    data modify storage api: Argument.Duration set value 0
    #初回はDurationとMP回復量を設定
    execute if entity @s[tag=!0420.Target] run data modify storage api: Argument.Duration set value 30
    execute if entity @s[tag=!0420.Target] run data modify storage api: Argument.FieldOverride.MPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.Damage set value 15
    execute store result storage api: Argument.FieldOverride.OriginID int 1 run scoreboard players get @p[tag=this] UserID
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 判定用のタグ
    tag @s remove 1646.Hit
    tag @s add 0420.Target

# プレイヤーに1646.LockOn付与
    tag @p[tag=this] add 1646.LockOn
