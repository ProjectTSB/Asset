#> asset:artifact/0921.celestial_star/trigger/place/raycast
#
# 視点の先へ0.25mずつ進み、ブロックの手前・敵に触れた位置・20m先のいずれかに星を設置する
#
# @within function
#   asset:artifact/0921.celestial_star/trigger/3.main
#   asset:artifact/0921.celestial_star/trigger/place/raycast

# 次の位置がブロックなら、その手前に設置する
    execute unless block ^ ^ ^0.25 #lib:no_collision/ run return run function asset:artifact/0921.celestial_star/trigger/place/

# 敵に触れたら、その位置に設置する
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run return run function asset:artifact/0921.celestial_star/trigger/place/

# 20m進んだら、その位置に設置する
    scoreboard players remove $921.Range Temporary 1
    execute if score $921.Range Temporary matches ..0 run return run function asset:artifact/0921.celestial_star/trigger/place/

# 0.25m進む
    execute positioned ^ ^ ^0.25 run function asset:artifact/0921.celestial_star/trigger/place/raycast
