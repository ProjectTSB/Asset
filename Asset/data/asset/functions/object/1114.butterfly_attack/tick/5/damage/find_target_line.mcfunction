#> asset:object/1114.butterfly_attack/tick/5/damage/find_target_line
#
# 視線先にターゲットがいないかチェック
#
# @within function
#   asset:object/1114.butterfly_attack/tick/5/damage/
#   asset:object/1114.butterfly_attack/tick/5/damage/find_target_line

# 敵がいたらTagつけてReturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run return run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] add 1114.Target

# 再帰
    scoreboard players add $RecursiveCount Temporary 1
    execute if score $RecursiveCount Temporary matches ..11 positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision run function asset:object/1114.butterfly_attack/tick/5/damage/find_target_line
