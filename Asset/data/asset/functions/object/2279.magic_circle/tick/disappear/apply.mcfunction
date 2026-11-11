#> asset:object/2279.magic_circle/tick/disappear/apply
#
# 両面の消失時のScaleを反映用NBTへ追加する
#
# @within function asset:object/2279.magic_circle/tick/spin/apply

# 両面のScaleを設定する
    data modify storage asset:temp Args.Front.transformation.scale set from storage asset:context this.DisappearScale
    data modify storage asset:temp Args.Back.transformation.scale set from storage asset:context this.DisappearScale
