#> asset:object/0006.magic_circle/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/6/tick

#> Private
# @private
    #declare score_holder $0006.DisappearRemaining
    #declare score_holder $0006.DisappearDuration

# 消滅までの残り時間を進める
    execute store result storage asset:context this.RemainingTick int 0.9999999999 run data get storage asset:context this.RemainingTick
    execute if data storage asset:context this{RemainingTick:0} run return run function asset:object/0006.magic_circle/tick/kill

# 消失開始までの残り時間を求める
    execute store result score $0006.DisappearRemaining Temporary run data get storage asset:context this.RemainingTick
    execute store result score $0006.DisappearDuration Temporary run data get storage asset:context this.DisappearDuration
    scoreboard players operation $0006.DisappearRemaining Temporary -= $0006.DisappearDuration Temporary
    scoreboard players reset $0006.DisappearDuration Temporary

# 消失中は回転先を更新せず、指定時刻での消滅を優先する
    execute if score $0006.DisappearRemaining Temporary matches 0 run function asset:object/0006.magic_circle/tick/disappear/
    execute if score $0006.DisappearRemaining Temporary matches ..0 run return run scoreboard players reset $0006.DisappearRemaining Temporary
    scoreboard players reset $0006.DisappearRemaining Temporary

# 次の回転までの待ち時間を進める
    execute store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} run function asset:object/0006.magic_circle/tick/spin/
