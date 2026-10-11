#> asset:object/1200.starlight_circle/tick/spin/
#
# 親とPassengerを90度回転させ、最初に拡大、最後に縮小する
#
# @within function asset:object/1200.starlight_circle/tick/

# 残り回転回数と回転段階を進める
    execute store result storage asset:context this.SpinCount int 0.9999999999 run data get storage asset:context this.SpinCount
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin

# 回転段階に応じた補間時間を設定する
    data modify storage asset:context this.SpinInterval set from storage asset:context this.SpinDuration
    execute if data storage asset:context this{FirstSpin:true} run data modify storage asset:context this.SpinInterval set from storage asset:context this.ExpandDuration
    execute if data storage asset:context this{SpinCount:0} run data modify storage asset:context this.SpinInterval set from storage asset:context this.ShrinkDuration

# 親とPassengerに回転を適用する
    function asset:object/1200.starlight_circle/tick/spin/apply
    execute on passengers run function asset:object/1200.starlight_circle/tick/spin/apply

# 最初の回転に合わせて拡大する
    execute if data storage asset:context this{FirstSpin:true} run function asset:object/1200.starlight_circle/tick/spin/expand
    execute if data storage asset:context this{FirstSpin:true} on passengers run function asset:object/1200.starlight_circle/tick/spin/expand
    data modify storage asset:context this.FirstSpin set value false

# 最後の回転に合わせて縮小する
    execute if data storage asset:context this{SpinCount:0} run function asset:object/1200.starlight_circle/tick/spin/shrink
    execute if data storage asset:context this{SpinCount:0} on passengers run function asset:object/1200.starlight_circle/tick/spin/shrink

# 回転段階をリセットする
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
