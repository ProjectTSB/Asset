#> asset:object/2279.magic_circle/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/2279/tick

#> Private
# @private
    #declare score_holder $DisappearRemaining
    #declare score_holder $DisappearDuration

# 消滅までの残り時間を進める
    execute store result storage asset:context this.RemainingTick int 0.9999999999 run data get storage asset:context this.RemainingTick
    execute if data storage asset:context this{RemainingTick:0} run return run function asset:object/2279.magic_circle/tick/kill

# 本体の現在位置と向きに裏面のPassengerを揃える
    execute at @s on passengers run tp @s ~ ~ ~ ~ ~

# 消失開始までの残り時間を求める
    execute store result score $DisappearRemaining Temporary run data get storage asset:context this.RemainingTick
    execute store result score $DisappearDuration Temporary run data get storage asset:context this.DisappearDuration
    scoreboard players operation $DisappearRemaining Temporary -= $DisappearDuration Temporary

# 消失時の回転とScaleの変化を開始する
    execute if score $DisappearRemaining Temporary matches 0 run function asset:object/2279.magic_circle/tick/disappear/

# 消失開始前は次の回転までの待ち時間を進める
    execute if score $DisappearRemaining Temporary matches 1.. store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if score $DisappearRemaining Temporary matches 1.. if data storage asset:context this{Phase:"Appearing",SpinInterval:0} run data modify storage asset:context this.Phase set value "Rotating"
    execute if score $DisappearRemaining Temporary matches 1.. if data storage asset:context this{SpinInterval:0} run function asset:object/2279.magic_circle/tick/spin/

# 一時scoreをリセットする
    scoreboard players reset $DisappearRemaining Temporary
    scoreboard players reset $DisappearDuration Temporary
