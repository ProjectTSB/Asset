#> asset:object/0005.slash_effect_abs/tick/visible
#
# 可視化させる
#
# @within function asset:object/0005.slash_effect_abs/tick/

# 可視化処理
    data modify entity @s transformation.scale[0] set from storage asset:context this.Scale
    data modify entity @s transformation.scale[1] set from storage asset:context this.Scale
    tag @s remove 5.Invisible
