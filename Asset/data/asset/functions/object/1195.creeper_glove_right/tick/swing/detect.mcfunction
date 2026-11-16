#> asset:object/1195.creeper_glove_right/tick/swing/detect
#
# グローブの向きに振ったかを判定する
#
# @within function asset:object/1195.creeper_glove_right/tick/main

#> Private
# @private
    #declare score_holder $Yaw
    #declare score_holder $YawDiff
    #declare score_holder $Side
    #declare score_holder $Threshold

# 前のtickのyawとの差 (度×100) を取る 左へ振ると正になる
    execute store result score $Yaw Temporary run data get entity @p[tag=1195.Owner,distance=..64] Rotation[0] 100
    execute store result score $YawDiff Temporary run data get storage asset:context this.PrevYaw
    scoreboard players operation $YawDiff Temporary -= $Yaw Temporary
# ±180度に正規化する
    execute if score $YawDiff Temporary matches 18001.. run scoreboard players remove $YawDiff Temporary 36000
    execute if score $YawDiff Temporary matches ..-18001 run scoreboard players add $YawDiff Temporary 36000

# 右のグローブは左へ、左のグローブは右へ振ったときに反応する
    execute store result score $Side Temporary run data get storage asset:context this.Side
    scoreboard players operation $YawDiff Temporary *= $Side Temporary
    execute store result score $Threshold Temporary run data get storage asset:context this.SwingThreshold 100
    execute store success score $1195.SwingStart Temporary if score $YawDiff Temporary >= $Threshold Temporary

# 次のtickの基準にする
    execute store result storage asset:context this.PrevYaw int 1 run scoreboard players get $Yaw Temporary

# リセット
    scoreboard players reset $Yaw Temporary
    scoreboard players reset $YawDiff Temporary
    scoreboard players reset $Side Temporary
    scoreboard players reset $Threshold Temporary
