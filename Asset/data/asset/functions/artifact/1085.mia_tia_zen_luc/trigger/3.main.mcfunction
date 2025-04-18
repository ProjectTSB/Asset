#> asset:artifact/1085.mia_tia_zen_luc/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1085.mia_tia_zen_luc/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle dragon_breath ~ ~0.5 ~ 2 0 2 0 100
    playsound entity.ravager.death player @a ~ ~ ~ 1 2

# 魔法攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,1,1085,2]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/magic/add

#移動速度下げる
    attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-43d00000002 "1085" -0.5 multiply_base
