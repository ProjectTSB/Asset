#> asset:artifact/1141.bell_of_courage/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# 1tick後に実行
    execute if entity @p[tag=VP.Schedule] run schedule function asset:artifact/1141.bell_of_courage/damage_entity/schedule 1t replace
