#> asset:object/2001.slash_effect/tick/visible
#
# 可視化させる
#
# @within function asset:object/2001.slash_effect/tick/

# 可視化処理
    data modify entity @s transformation.scale[0] set from storage asset:context this.Scale
    data modify entity @s transformation.scale[1] set from storage asset:context this.Scale
    tag @s remove 2001.Invisible
