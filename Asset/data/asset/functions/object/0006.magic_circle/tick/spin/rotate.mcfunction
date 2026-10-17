#> asset:object/0006.magic_circle/tick/spin/rotate
#
# 本体とPassengerを次の90度へ回転させる
#
# @within function
#   asset:object/0006.magic_circle/tick/spin/
#   asset:object/0006.magic_circle/tick/disappear/

# 回転段階を進める
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin

# 親とPassengerに回転を適用する
    function asset:object/0006.magic_circle/tick/spin/apply
    execute on passengers run function asset:object/0006.magic_circle/tick/spin/apply
# 裏面の局所回転を反転し、表面と同じ向きに回す
    execute on passengers store result entity @s transformation.right_rotation[2] float -0.000001 run data get entity @s transformation.right_rotation[2] 1000000

# 回転段階をリセットする
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
