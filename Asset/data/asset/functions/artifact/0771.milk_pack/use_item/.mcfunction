#> asset:artifact/0771.milk_pack/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/771/use_item/

# エフェクト消す
    effect clear @s
# Assetのバフ/デバフを消去する
    data modify storage api: Argument.ClearLv set value 3
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset

# ちょっとだけ満腹度を回復させる
    effect give @s saturation 1 1
