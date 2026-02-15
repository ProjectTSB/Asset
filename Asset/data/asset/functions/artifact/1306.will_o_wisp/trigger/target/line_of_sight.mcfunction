#> asset:artifact/1306.will_o_wisp/trigger/target/line_of_sight
#
#
#
# @within function
#   asset:artifact/1306.will_o_wisp/trigger/3.main
#   asset:artifact/1306.will_o_wisp/trigger/target/line_of_sight

# 視線先に敵がいるかを再帰で検知する

# 敵がいたらtag付けてreturn
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run return run tag @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,sort=random,limit=1] add 10A.Target

# 再帰暴走防止スコア
    scoreboard players add $10A.Recursive Temporary 1
    execute if score $10A.Recursive Temporary matches 12.. run return fail

# 再帰
    execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/1306.will_o_wisp/trigger/target/line_of_sight
