#> asset:object/2015.axia_shock_wave/init/loop
#
#
#
# @within function
#   asset:object/2015.axia_shock_wave/init/
#   asset:object/2015.axia_shock_wave/init/loop

# 少し下げて判定
    scoreboard players remove $2015.Temp Temporary 1
    tp @s ~ ~-0.5 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2015.Temp Temporary -100
    execute at @s if score $2015.Temp Temporary matches 1.. run function asset:object/2015.axia_shock_wave/init/loop
