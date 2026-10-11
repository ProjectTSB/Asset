#> asset:object/1200.starlight_circle/tick/spin
#
# 親とPassengerを90度回転させる
#
# @within function asset:object/1200.starlight_circle/tick/

# 回転段階を進める
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin

# 親とPassengerに回転を適用する
    function asset:object/1200.starlight_circle/tick/spin/apply
    execute on passengers run function asset:object/1200.starlight_circle/tick/spin/apply

# 回転段階をリセットする
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
