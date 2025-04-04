#> asset:artifact/0707.mage_hat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0707.mage_hat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,1,707,6]
    data modify storage api: Argument.Amount set value 0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/magic/add

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,1,707,6]
    data modify storage api: Argument.Amount set value 0.035
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,707,6]
    data modify storage api: Argument.Amount set value 0.025
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 演出
    particle witch ~ ~1.7 ~ 0.3 0.1 0.3 1 10 normal @a
    particle enchant ~ ~1.7 ~ 0.4 0.1 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 0 0
