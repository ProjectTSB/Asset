#> asset:object/2279.magic_circle/tick/disappear/apply
#
# 消失時のScaleへ変化する
#
# @within function asset:object/2279.magic_circle/tick/disappear/

# 消失時のScaleを適用する
    data modify entity @s transformation.scale set from storage asset:context this.DisappearScale
