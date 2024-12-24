#> asset:artifact/0819.swallows_cowry/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0819.swallows_cowry/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く
# 炎耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,816,5]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add
# 水耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,817,6]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
# 物理耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,818,4]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add
# 落下耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,819,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/fall_damage/add

# 音
    playsound ogg:ambient.nether.crimson_forest.shine3 master @a ~ ~ ~ 1 1
    playsound ogg:ambient.nether.crimson_forest.shine1 master @a ~ ~ ~ 1 2
