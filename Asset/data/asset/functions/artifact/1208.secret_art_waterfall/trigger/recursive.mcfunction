#> asset:artifact/1208.secret_art_waterfall/trigger/recursive
#
#
#
# @within function
#   asset:artifact/1208.secret_art_waterfall/trigger/3.main
#   asset:artifact/1208.secret_art_waterfall/trigger/recursive

# 0.25ブロック先がブロック
    execute if entity @s[tag=!Check] unless block ^ ^ ^0.25 #lib:no_collision run function asset:artifact/1208.secret_art_waterfall/trigger/summon_object

# 一定以上再帰
    execute if entity @s[tag=!Check] if score $Recursive Temporary matches 20.. run function asset:artifact/1208.secret_art_waterfall/trigger/summon_object

# 近くに敵がいる
    execute if entity @s[tag=!Check] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run function asset:artifact/1208.secret_art_waterfall/trigger/summon_object

# 再帰
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=!Check] positioned ^ ^ ^0.25 run function asset:artifact/1208.secret_art_waterfall/trigger/recursive
