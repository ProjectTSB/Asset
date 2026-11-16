#> asset:object/1195.creeper_glove_right/tick/swing/cooldown
#
# 待機位置で再使用まで待つ
#
# @within function asset:object/1195.creeper_glove_right/tick/main

#> Private
# @private
    #declare score_holder $Step
    #declare score_holder $Duration

# 経過を数える
    execute store result score $Step Temporary run data get storage asset:context this.Step
    scoreboard players add $Step Temporary 1
    execute store result storage asset:context this.Step int 1 run scoreboard players get $Step Temporary

# 待機位置へ動く
    function asset:object/1195.creeper_glove_right/tick/swing/predict
    scoreboard players set $1195.ArcT Temporary 0
    function asset:object/1195.creeper_glove_right/tick/arc/

# 待ち終えたら待機へ戻る
    execute store result score $Duration Temporary run data get storage asset:context this.SwingCooldown
    execute if score $Step Temporary >= $Duration Temporary run data modify storage asset:context this.State set value "idle"
    execute if score $Step Temporary >= $Duration Temporary run data modify storage asset:context this.Step set value 0

# リセット
    scoreboard players reset $Step Temporary
    scoreboard players reset $Duration Temporary
