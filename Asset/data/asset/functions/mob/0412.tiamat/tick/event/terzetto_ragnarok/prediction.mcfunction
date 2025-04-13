#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction
#
# テルツェット・アライニング
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 回転
    tp @s ~ ~ ~ ~ 0

# 演出
    particle flash ^ ^ ^ 0.6 0.6 0.6 0.1 1 force

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 275
    function api:object/summon
