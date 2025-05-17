#> asset:mob/0410.heiloang/tick/event/adamant_spike/summon_aec
#
# アダマントスパイク
#
# @within asset:mob/0410.heiloang/tick/event/adamant_spike/

# 一定確率で逆順に召喚
    execute if predicate lib:random_pass_per/50 run return run function asset:mob/0410.heiloang/tick/event/adamant_spike/summon_aec_mirror

# 攻撃位置召喚
    execute positioned ^16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 80
    execute positioned ^16.5 ^2 ^25 run function api:object/summon
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 96
    execute positioned ^10.5 ^2 ^25 run function api:object/summon
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 112
    execute positioned ^3.5 ^2 ^25 run function api:object/summon
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 128
    execute positioned ^-3.5 ^2 ^25 run function api:object/summon
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 144
    execute positioned ^-10.5 ^2 ^25 run function api:object/summon
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 160
    execute positioned ^-16.5 ^2 ^25 run function api:object/summon

# ハード以上の場合、多重召喚
    execute if predicate api:global_vars/difficulty/max/2_hard run return 0

# 攻撃位置召喚
    execute positioned ^16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-3.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-10 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
    execute positioned ^-16.5 ^2 ^25 run summon area_effect_cloud ~ ~ ~ {Duration:320,Tags:["BE.Temp.Adamant.SummonPosition"]}
