#> asset:object/0006.magic_circle/tick/disappear/apply
#
# 消失時のScaleへ変化する
#
# @within function asset:object/0006.magic_circle/tick/disappear/

# 現在の回転先を保ち、消失時のScaleへ補間する
    data modify entity @s start_interpolation set value 0
    data modify entity @s interpolation_duration set from storage asset:context this.DisappearDuration
    data modify entity @s transformation.scale set from storage asset:context this.DisappearScale
