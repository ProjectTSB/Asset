#> asset:object/2001.custom_effect/tick/visible
#
# 可視化させる
#
# @within function asset:object/2001.custom_effect/tick/

# 可視化処理
    data modify entity @s transformation.scale set from storage asset:context this.Scale
    tag @s remove 2001.Invisible
