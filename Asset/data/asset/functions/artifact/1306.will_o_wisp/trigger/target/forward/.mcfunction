#> asset:artifact/1306.will_o_wisp/trigger/target/forward/
#
#
#
# @within function asset:artifact/1306.will_o_wisp/trigger/3.main

# 自身の前方でかつ、最も近くの、壁を通してない敵を探す

# 前方の敵にTempTargetをつける
# まぁある程度適当なので横にも当たる
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5] add 10A.TempTarget
    execute positioned ^ ^ ^-10 run tag @e[type=#lib:living_without_player,tag=10A.TempTarget,distance=..10] remove 10A.TempTarget

# 近い順に再帰で壁を貫通していないかチェックする
    execute as @e[type=#lib:living_without_player,tag=10A.TempTarget,distance=..10,sort=nearest] facing entity @s eyes run function asset:artifact/1306.will_o_wisp/trigger/target/forward/check_through
