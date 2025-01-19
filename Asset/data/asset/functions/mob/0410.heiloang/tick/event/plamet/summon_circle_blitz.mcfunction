#> asset:mob/0410.heiloang/tick/event/plamet/summon_circle_blitz
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 角度決定
    tp @s ~ ~ ~ ~180 ~

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 153
    function api:object/summon

# 角度戻す
    tp @s ~ ~ ~ ~ ~
