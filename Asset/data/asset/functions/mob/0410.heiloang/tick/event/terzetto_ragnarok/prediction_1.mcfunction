#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/prediction_1
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack_main

# 演出
    particle flash ^ ^ ^ 0.6 0.6 0.6 0.1 1 force
    particle flash ^ ^ ^ 0.6 0.6 0.6 0.1 1 force
# 魔法陣召喚
    data modify storage api: Argument.ID set value 2130
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    data modify storage api: Argument.FieldOverride.Color set value 16762434
    data modify storage api: Argument.FieldOverride.RemoveTimer set value 60
    function api:object/summon

# 次の攻撃用に回転
    tp @s ~ ~ ~ ~180 ~
