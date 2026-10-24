#> asset:artifact/1619.volt_rave/using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1619.volt_rave/using_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:electric1 player @a ~ ~ ~ 1 1.2

# スタック表示用エフェクト
    data modify storage api: Argument.ID set value 394
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
