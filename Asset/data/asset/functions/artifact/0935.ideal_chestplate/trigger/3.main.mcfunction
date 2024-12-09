#> asset:artifact/0935.ideal_chestplate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0935.ideal_chestplate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 全耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,935,5]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~1.2 ~ run function asset:artifact/0935.ideal_chestplate/trigger/vfx
