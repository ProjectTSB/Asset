#> asset:artifact/0911.reactive_armor_head/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0911.reactive_armor_head/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く
# 爆発で周囲にダメージを与える
    function asset:artifact/0911.reactive_armor_head/trigger/3.1.explosion

# 同一tickで1回しか爆発させないためにeffectをつけてもう発動したことをマーク
    data modify storage api: Argument.ID set value 306
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
