#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/prediction_a
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning_b/attack_main

# 回転
    tp @s ~ ~ ~ ~ 0

# 演出
    particle flash ^ ^ ^ 0.6 0.6 0.6 0.1 1 force

# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 290
    function api:object/summon

# 次の攻撃のために回転
    execute at @s run tp @s ~ ~ ~ ~180 ~
