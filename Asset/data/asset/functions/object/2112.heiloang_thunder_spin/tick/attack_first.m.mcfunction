#> asset:object/2112.heiloang_thunder_spin/tick/attack_first.m
#
# Objectのtick時の処理
#
# @within asset:object/2112.heiloang_thunder_spin/tick/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Item set value "yellow_stained_glass"
    data modify storage api: Argument.FieldOverride.ScaleX set value 5f
    data modify storage api: Argument.FieldOverride.ScaleZ set value 30f
    $data modify storage api: Argument.FieldOverride.Duration set value $(Duration)
    $data modify storage api: Argument.FieldOverride.KillTick set value $(KillTick)
    execute positioned ~ ~0.1 ~ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~180 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Item set value "yellow_stained_glass"
    data modify storage api: Argument.FieldOverride.ScaleX set value 5f
    data modify storage api: Argument.FieldOverride.ScaleZ set value 30f
    $data modify storage api: Argument.FieldOverride.Duration set value $(Duration)
    $data modify storage api: Argument.FieldOverride.KillTick set value $(KillTick)
    execute positioned ~ ~0.1 ~ run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~180 ~

# 攻撃開始
    scoreboard players set @s 2112.AttackTimer 18
    $scoreboard players add @s 2112.AttackTimer $(Duration)
