#> asset:mob/0204.infernal_watcher/tick/move/pitch
# @within function asset:mob/0204.infernal_watcher/tick/move/do.m

#> temp
# @private
    #declare score_holder $5O.Own
    #declare score_holder $5O.Target

# 自己位置
# 目の位置に補正
    execute store result score $5O.Own Temporary run data get storage asset:temp 5O.OwnPos[1] 100
    scoreboard players add $5O.Own Temporary 74
    scoreboard players operation $5O.Own Temporary /= $100 Const
# 移動先
    execute store result score $5O.Target Temporary run data get storage asset:temp 5O.TargetPos[1] 1
# 計算
    scoreboard players operation $5O.Target Temporary -= $5O.Own Temporary
    execute unless score $5O.Own Temporary matches 0 at @s run scoreboard players operation $5O.Pitch Temporary *= $-1 Const
# リセット
    scoreboard players reset $5O.Own Temporary
    scoreboard players reset $5O.Target Temporary
