#> asset:artifact/0557.catastrophe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0557.catastrophe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0557.catastrophe/trigger/vfx

# フルセット処理
    execute if data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0554.catastrophe/trigger/fullset/equip

# 最大体力-10%
    data modify storage api: Argument.UUID set value [I;1,1,557,3]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add

# ノクバ耐性+2
    attribute @s generic.knockback_resistance modifier add 00000001-0000-0001-0000-022d00000003 "557.KBResist" 0.2 add
