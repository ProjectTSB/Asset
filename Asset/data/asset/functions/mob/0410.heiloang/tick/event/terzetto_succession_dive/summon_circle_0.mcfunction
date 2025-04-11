#> asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/summon_circle_0
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/

# 演出
    particle flash ~ ~ ~ 2 2 2 0 15 force

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16740464
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 170
    function api:object/summon
