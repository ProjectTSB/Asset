#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/2.interval
#
# 一定間隔で召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/1.main

# 一定間隔で召喚
    scoreboard players operation $Interval Temporary = @s 1N.Tick
    scoreboard players operation $Interval Temporary %= @s 1N.Interval

# 召喚
    execute if score $Interval Temporary matches 0 at @e[type=marker,tag=1N.SpawnMarker,distance=..80] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/3.select_pos

# リセット
    scoreboard players reset $Interval Temporary
