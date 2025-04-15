#> asset:artifact/0771.milk_pack/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0771.milk_pack/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクト消す
    effect clear @s
# Assetのバフ/デバフを消去する
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset

# ちょっとだけ満腹度を回復させる
    effect give @s saturation 1 1
