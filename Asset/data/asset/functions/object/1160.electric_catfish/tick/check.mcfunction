#> asset:object/1160.electric_catfish/tick/check
#
#
#
# @within asset:object/1160.electric_catfish/tick/**

#> private
# @private
    #declare score_holder $MotionX
    #declare score_holder $MotionZ

# 動いているなら踏んだ判定
    execute store result score $MotionX Temporary run data get entity @s Motion[0] 100
    execute store result score $MotionZ Temporary run data get entity @s Motion[2] 100

    execute if score $MotionX Temporary matches ..-1 store result score $MotionX Temporary run data get entity @s Motion[0] -100
    execute if score $MotionZ Temporary matches ..-1 store result score $MotionZ Temporary run data get entity @s Motion[2] -100

    scoreboard players operation $MotionX Temporary += $MotionZ Temporary

    execute if score $MotionX Temporary matches 1.. run tag @s add 1160.SteppedOn

# リセット
    scoreboard players reset $MotionX
    scoreboard players reset $MotionZ
