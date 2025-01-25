#> asset:artifact/0557.catastrophe/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/557/equip/


# 演出
    execute unless data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0557.catastrophe/equip/vfx

# フルセット処理
    execute if data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0554.catastrophe/equip/fullset/equip

# 最大体力-10%
    data modify storage api: Argument.UUID set value [I;1,1,557,3]
    data modify storage api: Argument.Amount set value -0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add

# ノクバ耐性+2
    attribute @s generic.knockback_resistance modifier add 00000001-0000-0001-0000-022d00000003 "557.KBResist" 0.2 add
