#> asset:mob/2000.abstract_angel/kill/
#
#
#
# @within function asset:mob/alias/2000/kill

execute unless data storage asset:context this{RemoveLifeWhenPlayerDie:true} run return fail
scoreboard players remove @s 1JK.RemainingPlayerLife 1
execute if score @s 1JK.RemainingPlayerLife matches ..0 run function api:mob/remove
function asset:mob/call.m {method:"update_bossbar"}
