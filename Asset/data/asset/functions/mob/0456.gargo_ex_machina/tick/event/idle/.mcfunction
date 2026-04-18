#> asset:mob/0456.gargo_ex_machina/tick/event/idle/
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/idle/check

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 行動
    execute if score @s CO.EventTimer >= @s CO.IdleTimer as @e[type=slime,tag=CO.EntityRoot,distance=..30] at @s run function asset:mob/0456.gargo_ex_machina/tick/act/
