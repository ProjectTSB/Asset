#> asset:object/1195.creeper_glove_right/tick/swing/hold
#
# 爆発した位置で硬直する
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

# 硬直が終わったら戻りへ移る
    execute store result score $Duration Temporary run data get storage asset:context this.HitHoldDuration
    execute if score $Step Temporary >= $Duration Temporary run data modify storage asset:context this.State set value "swing_back"
    execute if score $Step Temporary >= $Duration Temporary run data modify storage asset:context this.Step set value 0

# リセット
    scoreboard players reset $Step Temporary
    scoreboard players reset $Duration Temporary
