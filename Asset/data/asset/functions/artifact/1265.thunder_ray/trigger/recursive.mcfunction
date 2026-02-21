#> asset:artifact/1265.thunder_ray/trigger/recursive
#
#
#
# @within function
#   asset:artifact/1265.thunder_ray/trigger/3.main
#   asset:artifact/1265.thunder_ray/trigger/recursive

# 0.25ブロック先がブロック
    execute if entity @s[tag=!Check] unless block ^ ^ ^0.25 #lib:no_collision run function asset:artifact/1265.thunder_ray/trigger/thunder

# 一定以上再帰
    execute if entity @s[tag=!Check] if score $Recursive Temporary matches 48.. run function asset:artifact/1265.thunder_ray/trigger/thunder

# 近くに敵がいる
    execute if entity @s[tag=!Check] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] at @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function asset:artifact/1265.thunder_ray/trigger/thunder

# 再帰
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=!Check] positioned ^ ^ ^0.25 run function asset:artifact/1265.thunder_ray/trigger/recursive
