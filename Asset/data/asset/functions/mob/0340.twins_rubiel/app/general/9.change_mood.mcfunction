#> asset:mob/0340.twins_rubiel/app/general/9.change_mood
#
# よく使用する処理、気分を変える
#
# @within
#    function asset:mob/0340.twins_rubiel/**

# クランプ処理
    execute if score @s 9G.MoodPoint matches ..-101 run scoreboard players set @s 9G.MoodPoint -100
    execute if score @s 9G.MoodPoint matches 101.. run scoreboard players set @s 9G.MoodPoint 100
