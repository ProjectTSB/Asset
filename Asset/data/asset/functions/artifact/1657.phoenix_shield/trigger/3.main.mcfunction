#> asset:artifact/1657.phoenix_shield/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1657.phoenix_shield/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く
    say a
    scoreboard players reset @s 1A1.DamageSum
    data modify storage api: Argument.ID set value 433
    data modify storage api: Argument.Duration set value 3600
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.StackOperation set value "add"
    #data modify storage api: Argument.FieldOverride set value {…}      # オプション
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
