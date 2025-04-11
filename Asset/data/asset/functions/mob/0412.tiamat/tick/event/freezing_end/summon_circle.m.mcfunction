#> asset:mob/0412.tiamat/tick/event/freezing_end/summon_circle.m
#
# フリージングエンド
#
# @within asset:mob/0412.tiamat/tick/event/freezing_end/

# 角度用
    tp @s ~ ~ ~ ~ -90

# 魔法陣表示
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 6366835
    $data modify storage api: Argument.FieldOverride.RemoveTimer set value $(Tick)
    $execute rotated ~$(Rotate) 0 positioned ^ ^0.5 ^8 run function api:object/summon
    $execute rotated ~$(Rotate) 0 positioned ^ ^0.5 ^8 run particle flash ~ ~ ~ 1 1 1 0 10

# タグ付与
    $execute rotated ~$(Rotate) 0 positioned ^ ^0.5 ^8 run tag @e[type=item_display,tag=BE.Circle,sort=nearest,limit=1] add BG.Object

# 戻す
    tp @s ~ ~ ~ ~ ~
