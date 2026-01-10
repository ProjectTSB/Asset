#> asset:artifact/1260.rod_of_light_orb/trigger/recursive
#
#
#
# @within function
#   asset:artifact/1260.rod_of_light_orb/trigger/3.main
#   asset:artifact/1260.rod_of_light_orb/trigger/recursive

# 0.25ブロック先がブロック
    execute if entity @s[tag=!Check] unless block ^ ^ ^0.25 #lib:no_collision/ run function asset:artifact/1260.rod_of_light_orb/trigger/summon_object

# 一定以上再帰
    execute if entity @s[tag=!Check] if score $Recursive Temporary matches 16.. run function asset:artifact/1260.rod_of_light_orb/trigger/summon_object

# 近くに敵がいる
    execute if entity @s[tag=!Check] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:artifact/1260.rod_of_light_orb/trigger/summon_object

# 再帰
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=!Check] positioned ^ ^ ^0.25 run function asset:artifact/1260.rod_of_light_orb/trigger/recursive
