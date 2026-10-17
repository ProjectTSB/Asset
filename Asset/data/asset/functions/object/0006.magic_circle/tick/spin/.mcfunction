#> asset:object/0006.magic_circle/tick/spin/
#
# 本体とPassengerを90度回転させ、最初に出現時の変化を適用する
#
# @within function asset:object/0006.magic_circle/tick/

# 回転段階を進める
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin

# 回転段階に応じた補間時間を設定する
    data modify storage asset:context this.SpinInterval set from storage asset:context this.SpinDuration
    execute if data storage asset:context this{FirstSpin:true} run data modify storage asset:context this.SpinInterval set from storage asset:context this.AppearDuration

# 親とPassengerに回転を適用する
    function asset:object/0006.magic_circle/tick/spin/apply
    execute on passengers run function asset:object/0006.magic_circle/tick/spin/apply
# 裏面の局所回転を反転し、表面と同じ向きに回す
    execute on passengers store result entity @s transformation.right_rotation[2] float -0.000001 run data get entity @s transformation.right_rotation[2] 1000000

# 最初の回転に合わせて出現時のScaleへ変化する
    execute if data storage asset:context this{FirstSpin:true} run function asset:object/0006.magic_circle/tick/spin/appear
    execute if data storage asset:context this{FirstSpin:true} on passengers run function asset:object/0006.magic_circle/tick/spin/appear
    data modify storage asset:context this.FirstSpin set value false

# 回転段階をリセットする
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
