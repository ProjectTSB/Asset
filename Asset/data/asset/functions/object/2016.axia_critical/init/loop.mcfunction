#> asset:object/2016.axia_critical/init/loop
#
# ループ処理
#
# @within function
#   asset:object/2016.axia_critical/init/
#   asset:object/2016.axia_critical/init/loop

# 少し下げて判定
    scoreboard players remove $2016.Temp Temporary 1
    tp @s ~ ~-0.5 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.5 ~ #lib:no_collision run scoreboard players set $2016.Temp Temporary -100
    execute at @s if score $2016.Temp Temporary matches 1.. run function asset:object/2016.axia_critical/init/loop
