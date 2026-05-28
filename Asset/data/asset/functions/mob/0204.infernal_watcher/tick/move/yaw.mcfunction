#> asset:mob/0204.infernal_watcher/tick/move/yaw
# @within function asset:mob/0204.infernal_watcher/tick/move/do.m

#> temp
# @private
    #declare score_holder $5O.OwnX
    #declare score_holder $5O.TargetX
    #declare score_holder $5O.OwnZ
    #declare score_holder $5O.TargetZ

# X軸
    execute store result score $5O.OwnX Temporary run data get storage asset:temp 5O.OwnPos[0] 1
    execute store result score $5O.TargetX Temporary run data get storage asset:temp 5O.TargetPos[0] 1
    scoreboard players operation $5O.TargetX Temporary -= $5O.OwnX Temporary
# Z軸
    execute store result score $5O.OwnZ Temporary run data get storage asset:temp 5O.OwnPos[2] 1
    execute store result score $5O.TargetZ Temporary run data get storage asset:temp 5O.TargetPos[2] 1
    scoreboard players operation $5O.TargetZ Temporary -= $5O.OwnZ Temporary
# 計算
    execute unless score $5O.TargetX Temporary matches 0 unless score $5O.TargetZ Temporary matches 0 run scoreboard players add $5O.Yaw Temporary 180
    execute unless score $5O.TargetX Temporary matches 0 if score $5O.TargetZ Temporary matches 0 run scoreboard players operation $5O.Yaw Temporary *= $-1 Const
    execute if score $5O.TargetX Temporary matches 0 unless score $5O.TargetZ Temporary matches 0 run scoreboard players remove $5O.Yaw Temporary 180
    execute if score $5O.TargetX Temporary matches 0 unless score $5O.TargetZ Temporary matches 0 run scoreboard players operation $5O.Yaw Temporary *= $-1 Const
# リセット
    scoreboard players reset $5O.OwnX Temporary
    scoreboard players reset $5O.TargetX Temporary
    scoreboard players reset $5O.OwnZ Temporary
    scoreboard players reset $5O.TargetZ Temporary
