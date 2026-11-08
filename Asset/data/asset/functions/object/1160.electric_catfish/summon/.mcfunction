#> asset:object/1160.electric_catfish/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1160/summon

#> private
# @private
    #declare score_holder $O1160.Rotation
    #declare score_holder $90

# プレイヤーが向いている方向を90°間隔に補正
    execute rotated as @s as 0-0-0-0-0 in overworld positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    data modify storage asset:temp Args.Rotation[1] set value 0.0f

    execute store result score $O1160.Rotation Temporary run data get storage asset:temp Args.Rotation[0]
    scoreboard players add $O1160.Rotation Temporary 45
    scoreboard players operation $O1160.Rotation Temporary /= $90 Const
    execute store result storage asset:temp Args.Rotation[0] float 1 run scoreboard players operation $O1160.Rotation Temporary *= $90 Const

# 元となるEntityを召喚する
    function asset:object/1160.electric_catfish/summon/m with storage asset:temp Args

# リセット
    scoreboard players reset $O1160.Rotation
    data remove storage asset:temp Args
