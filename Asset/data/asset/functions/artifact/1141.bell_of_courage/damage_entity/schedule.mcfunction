#> asset:artifact/1141.bell_of_courage/damage_entity/schedule
#
# スケジュール
#
# @within function
#   asset:artifact/1141.bell_of_courage/damage_entity/
#   asset:artifact/1141.bell_of_courage/damage_entity/rejoin_process

# デバフ解除
    execute as @a[tag=VP.Schedule] at @s run function asset:artifact/1141.bell_of_courage/damage_entity/debuff_clear
