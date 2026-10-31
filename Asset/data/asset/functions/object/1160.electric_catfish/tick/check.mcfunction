#> asset:object/1160.electric_catfish/tick/check
#
#
#
# @within asset:object/1160.electric_catfish/tick/**

#> private
# @private
    #declare score_holder $O1160.MotionX
    #declare score_holder $O1160.MotionZ

# thisにMotion保存
    data modify storage asset:context this.Motion set from entity @s Motion

# 動いているなら踏んだ判定
    execute store result score $O1160.MotionX Temporary run data get storage asset:context this.Motion[0] 100
    execute store result score $O1160.MotionZ Temporary run data get storage asset:context this.Motion[2] 100

    execute if score $O1160.MotionX Temporary matches ..-1 store result score $O1160.MotionX Temporary run data get storage asset:context this.Motion[0] -100
    execute if score $O1160.MotionZ Temporary matches ..-1 store result score $O1160.MotionZ Temporary run data get storage asset:context this.Motion[2] -100

    scoreboard players operation $O1160.MotionX Temporary += $O1160.MotionZ Temporary

    execute if score $O1160.MotionX Temporary matches 1.. run tag @s add O1160.Candidate

# リセット
    data remove storage asset:context this.Motion
    scoreboard players reset $O1160.MotionX
    scoreboard players reset $O1160.MotionZ
