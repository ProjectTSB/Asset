#> asset:object/1200.starlight_circle/tick/spin
#
# 親とPassengerを90度回転させ、最初に拡大、最後に縮小する
#
# @within function asset:object/1200.starlight_circle/tick/

# 残り回転回数と回転段階を進める
    execute store result storage asset:context this.SpinCount int 0.9999999999 run data get storage asset:context this.SpinCount
    execute store result storage asset:context this.Spin int 0.9999999999 run data get storage asset:context this.Spin
    data modify storage asset:context this.SpinInterval set value 16

# 親とPassengerに回転を適用する
    function asset:object/1200.starlight_circle/tick/spin/apply
    execute on passengers run function asset:object/1200.starlight_circle/tick/spin/apply

# 最初の回転に合わせて拡大する
    execute if data storage asset:context this{SpinCount:3} run function asset:object/1200.starlight_circle/tick/transform/0
    execute if data storage asset:context this{SpinCount:3} on passengers run function asset:object/1200.starlight_circle/tick/transform/0
    execute if data storage asset:context this{SpinCount:3} run data modify storage asset:context this.SpinInterval set value 7

# 最後の回転に合わせて縮小する
    execute if data storage asset:context this{SpinCount:0} run function asset:object/1200.starlight_circle/tick/transform/1
    execute if data storage asset:context this{SpinCount:0} on passengers run function asset:object/1200.starlight_circle/tick/transform/1
    execute if data storage asset:context this{SpinCount:0} run scoreboard players set @s General.Object.Tick 0

# 回転段階をリセットする
    execute if data storage asset:context this{Spin:0} run data modify storage asset:context this.Spin set value 4
