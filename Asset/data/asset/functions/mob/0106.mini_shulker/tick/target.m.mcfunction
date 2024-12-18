#> asset:mob/0106.mini_shulker/tick/target.m
# @input args Step : double
# @within function
#   asset:mob/0106.mini_shulker/tick/select/foreach
#   asset:mob/0106.mini_shulker/tick/attack/shoot
#   asset:mob/0106.mini_shulker/tick/target.m

# プレイヤー方向へ行く
    execute if entity @a[tag=2Y.Target,dx=0] run data modify storage asset:temp 2Y.Visible set value true
    execute if data storage asset:temp 2Y{Visible:true} run function asset:mob/0106.mini_shulker/tick/get_rotation
    execute if data storage asset:temp 2Y{Visible:true} run return 0
# リセット
    $execute unless block ^ ^ ^$(Step) #lib:no_collision run data modify storage asset:temp 2Y.Visible set value false
    execute unless entity @e[type=#lib:living,type=!player,tag=this,distance=..25,limit=1] run data modify storage asset:temp 2Y.Visible set value false
# 再帰
    $execute unless data storage asset:temp 2Y.Visible positioned ^ ^ ^$(Step) run function asset:mob/0106.mini_shulker/tick/target.m with storage asset:temp 2Y
