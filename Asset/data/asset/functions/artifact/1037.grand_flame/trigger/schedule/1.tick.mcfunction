#> asset:artifact/1037.grand_flame/trigger/schedule/1.tick
#
# スケジュールで毎Tick呼び出されるFunction
#
# @within function
#   asset:artifact/1037.grand_flame/trigger/3.main
#   asset:artifact/1037.grand_flame/trigger/schedule/1.tick

# Markerが雪玉に乗っている場合の処理(継続処理)
    execute as @e[type=marker,tag=ST.Marker] if predicate lib:is_vehicle at @s run function asset:artifact/1037.grand_flame/trigger/schedule/2.flying

# Markerが雪玉に乗っていない場合の処理(着弾処理)
    execute as @e[type=marker,tag=ST.Marker] unless predicate lib:is_vehicle at @s run function asset:artifact/1037.grand_flame/trigger/schedule/3.landing

# Markerがいる場合、次Tickの実行予約
    execute if entity @e[type=marker,tag=ST.Marker,predicate=lib:is_vehicle,limit=1] run schedule function asset:artifact/1037.grand_flame/trigger/schedule/1.tick 1t replace