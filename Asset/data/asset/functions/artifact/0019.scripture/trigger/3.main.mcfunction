#> asset:artifact/0019.scripture/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0019.scripture/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 聖典ギャンブル(ID:324)を付与
    data modify storage api: Argument.FieldOverride.Heal set value 15
    data modify storage api: Argument.ID set value 324
    function api:entity/mob/effect/give
