#> asset:object/2279.magic_circle/tick/spin/appear
#
# 両面の出現時のScaleを反映用NBTへ追加する
#
# @within function asset:object/2279.magic_circle/tick/spin/apply

# 両面のScaleを設定する
    data modify storage asset:temp Args.Front.transformation.scale set from storage asset:context this.AppearScale
    data modify storage asset:temp Args.Back.transformation.scale set from storage asset:context this.AppearScale
