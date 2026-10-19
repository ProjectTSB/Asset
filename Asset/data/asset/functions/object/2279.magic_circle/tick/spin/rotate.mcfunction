#> asset:object/2279.magic_circle/tick/spin/rotate
#
# 本体とPassengerを次の90度へ回転させる
#
# @within function
#   asset:object/2279.magic_circle/tick/spin/
#   asset:object/2279.magic_circle/tick/disappear/

# 回転段階を進める
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin

# 回転を適用する
    function asset:object/2279.magic_circle/tick/spin/apply

# 回転段階をリセットする
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
