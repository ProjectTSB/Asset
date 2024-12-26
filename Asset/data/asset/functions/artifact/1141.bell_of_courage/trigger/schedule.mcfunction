#> asset:artifact/1141.bell_of_courage/trigger/schedule
#
# スケジュール
#
# @within function
#   asset:artifact/1141.bell_of_courage/trigger/3.main
#   asset:artifact/1141.bell_of_courage/trigger/rejoin_process

# デバフ解除
    execute as @a[tag=VP.Schedule] at @s run function asset:artifact/1141.bell_of_courage/trigger/debuff_clear
