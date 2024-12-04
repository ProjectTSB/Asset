#> asset:artifact/1048.thunder_storm/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1048/click/

#> val
# @private
    #declare score_holder $MPMaxValue
    #declare score_holder $MPValue

# マーカーを持ってくる
    execute anchored eyes run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    scoreboard players set $T4.Temp Temporary 64
    execute as 0-0-0-0-0 at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision run function asset:artifact/1048.thunder_storm/click/3.1.main_loop

# Marker召喚
# MP消費を引き継ぐ
    execute as 0-0-0-0-0 at @s run summon marker ^ ^ ^ {Tags:["T4.Marker","T4.MarkerInit"]}
    scoreboard players operation $T4.Temp Temporary = @s UserID
    execute as @e[type=marker,tag=T4.MarkerInit,distance=..24] run scoreboard players operation @s T4.OwnerID = $T4.Temp Temporary
    execute as @e[type=marker,tag=T4.MarkerInit,distance=..24] run scoreboard players operation @s T4.MPPer = $MPValue Temporary
    execute as @e[type=marker,tag=T4.MarkerInit,distance=..24] run tag @s remove T4.MarkerInit

# スケジュール設定
    schedule function asset:artifact/1048.thunder_storm/click/4.schedule 1t

# リセット
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
    scoreboard players reset $T4.Temp Temporary
