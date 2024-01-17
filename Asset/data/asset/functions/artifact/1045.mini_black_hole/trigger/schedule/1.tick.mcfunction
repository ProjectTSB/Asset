#> asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick
#
# 毎Tick処理
#
# @within function
#   asset:artifact/1045.mini_black_hole/trigger/3.main
#   asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick
#   asset:artifact/1045.mini_black_hole/trigger/rejoin_process

# Markerが雪玉に乗っている場合の処理(継続処理)
    execute as @e[type=marker,tag=T1.Marker] if predicate lib:is_vehicle at @s run function asset:artifact/1045.mini_black_hole/trigger/schedule/2.flying

# Markerが雪玉に乗っていない場合の処理(着弾処理)
    execute as @e[type=marker,tag=T1.Marker] unless predicate lib:is_vehicle at @s run function asset:artifact/1045.mini_black_hole/trigger/schedule/3.landing

# Markerがいる場合、次Tickの実行予約
    execute if entity @e[type=marker,tag=T1.Marker,limit=1] run schedule function asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick 1t replace