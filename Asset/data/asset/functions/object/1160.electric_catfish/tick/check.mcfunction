#> asset:object/1160.electric_catfish/tick/check
#
#
#
# @within asset:object/1160.electric_catfish/tick/**

#> private
# @private
    #declare score_holder $MotionX
    #declare score_holder $MotionZ

# thisにMotion保存
    data modify storage asset:context this.Motion set from entity @s Motion

# 動いているなら踏んだ判定
    execute store result score $MotionX Temporary run data get storage asset:context this.Motion[0] 100
    execute store result score $MotionZ Temporary run data get storage asset:context this.Motion[2] 100

    execute if score $MotionX Temporary matches ..-1 store result score $MotionX Temporary run data get storage asset:context this.Motion[0] -100
    execute if score $MotionZ Temporary matches ..-1 store result score $MotionZ Temporary run data get storage asset:context this.Motion[2] -100

    scoreboard players operation $MotionX Temporary += $MotionZ Temporary

    execute if score $MotionX Temporary matches 1.. run tag @s add 1160.SteppedOn

# リセット
    data remove storage asset:context this.Motion
    scoreboard players reset $MotionX
    scoreboard players reset $MotionZ
