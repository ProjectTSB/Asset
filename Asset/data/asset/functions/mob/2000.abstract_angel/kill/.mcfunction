#> asset:mob/2000.abstract_angel/kill/
#
#
#
# @within function asset:mob/alias/2000/kill

scoreboard players remove @s 1JK.RemainingPlayerLife 1

execute if score @s 1JK.RemainingPlayerLife matches ..0 run function api:mob/remove

function asset:mob/call.m {method:"update_bossbar"}
