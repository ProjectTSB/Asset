#> asset:object/2112.heiloang_thunder_spin/tick/attack.m
#
# Objectのtick時の処理
#
# @within asset:object/2112.heiloang_thunder_spin/tick/

# # 回転
#     execute if entity @s[tag=!2112.IsInverse] run tp @s ~ ~ ~ ~15 ~
#     execute if entity @s[tag=2112.IsInverse] run tp @s ~ ~ ~ ~-15 ~

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [7f,30f]
    $data modify storage api: Argument.FieldOverride.Interpolation set value $(Duration)
    $data modify storage api: Argument.FieldOverride.Tick set value $(KillTick)
    execute positioned ^ ^0.1 ^3 rotated ~0 ~ run function api:object/summon
    #execute at @s run tp @s ~ ~ ~ ~180 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [7f,30f]
    $data modify storage api: Argument.FieldOverride.Interpolation set value $(Duration)
    $data modify storage api: Argument.FieldOverride.Tick set value $(KillTick)
    execute positioned ^ ^0.1 ^3 rotated ~180 ~ run function api:object/summon
    #execute at @s run tp @s ~ ~ ~ ~180 ~

# 攻撃開始
    data modify storage api: Argument.ID set value 2173
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon

# 回転
    execute if entity @s[tag=!2112.IsInverse] run tp @s ~ ~ ~ ~15 ~
    execute if entity @s[tag=2112.IsInverse] run tp @s ~ ~ ~ ~-15 ~

    # scoreboard players set @s 2112.AttackTimer 18
    # $scoreboard players add @s 2112.AttackTimer $(KillTick)
