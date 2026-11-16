#> asset:object/1195.creeper_glove_right/tick/swing/back
#
# 爆発した時点の進行度から、ReturnDuration tickかけて円弧を逆に戻る
#
# @within function asset:object/1195.creeper_glove_right/tick/main

#> Private
# @private
    #declare score_holder $Step
    #declare score_holder $Duration
    #declare score_holder $Rest

# 経過を数える
    execute store result score $Step Temporary run data get storage asset:context this.Step
    scoreboard players add $Step Temporary 1
    execute store result storage asset:context this.Step int 1 run scoreboard players get $Step Temporary

# 進行度の割合 = 爆発時の割合 × (D − Step) / D (DはReturnDuration、0以下でも1tickとして扱う)
    execute store result score $Duration Temporary run data get storage asset:context this.ReturnDuration
    scoreboard players operation $Duration Temporary > $1 Const
    scoreboard players operation $Step Temporary < $Duration Temporary
    scoreboard players operation $Rest Temporary = $Duration Temporary
    scoreboard players operation $Rest Temporary -= $Step Temporary
    execute store result score $1195.ArcT Temporary run data get storage asset:context this.ExplodeProgress
    scoreboard players operation $1195.ArcT Temporary *= $Rest Temporary
    scoreboard players operation $1195.ArcT Temporary /= $Duration Temporary

# 円弧の位置へ動く
    function asset:object/1195.creeper_glove_right/tick/arc/

# 戻り終えたら再使用待ちへ移る
    execute if score $Step Temporary >= $Duration Temporary run data modify storage asset:context this.State set value "cooldown"
    execute if score $Step Temporary >= $Duration Temporary run data modify storage asset:context this.Step set value 0

# リセット
    scoreboard players reset $Step Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $Rest Temporary
