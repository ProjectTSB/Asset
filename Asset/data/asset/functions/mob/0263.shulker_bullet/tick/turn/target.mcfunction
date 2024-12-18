#> asset:mob/0263.shulker_bullet/tick/turn/target
# @within function
#   asset:mob/0263.shulker_bullet/tick/turn/
#   asset:mob/0263.shulker_bullet/tick/turn/target

# プレイヤー方向へ行く
    execute if entity @a[tag=7B.Target,dx=0] run data modify storage asset:temp 7B.Visible set value true
# リセット
    execute unless block ^ ^ ^0.5 #lib:no_collision run data modify storage asset:temp 7B.Visible set value false
    execute unless entity @e[type=#lib:living,type=!player,tag=this,distance=..25,limit=1] run data modify storage asset:temp 7B.Visible set value false
# 再帰
    execute unless data storage asset:temp 7B.Visible positioned ^ ^ ^0.5 run function asset:mob/0263.shulker_bullet/tick/turn/target
