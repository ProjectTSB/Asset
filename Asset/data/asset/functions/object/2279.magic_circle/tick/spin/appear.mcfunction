#> asset:object/2279.magic_circle/tick/spin/appear
#
# 出現時のScaleへ変化する
#
# @within function asset:object/2279.magic_circle/tick/spin/

# 出現時のScaleを適用する
    data modify entity @s transformation.scale set from storage asset:context this.AppearScale
