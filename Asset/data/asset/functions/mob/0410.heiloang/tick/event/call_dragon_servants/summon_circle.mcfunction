#> asset:mob/0410.heiloang/tick/event/call_dragon_servants/summon_circle
#
# コール：ドラゴンサーヴァント
#
# @within asset:mob/0410.heiloang/tick/event/call_dragon_servants/

# 角度変更
    tp @s ~ ~ ~ ~ -90

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 2702228
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 150
    execute positioned ^12 ^-0.5 ^12.5 run function api:object/summon
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 6366835
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 150
    execute positioned ^-12 ^-0.5 ^12.5 run function api:object/summon

# 角度戻す
    tp @s ~ ~ ~ ~ 0
