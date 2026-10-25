#> asset:object/2140.louvert_meteor/init/loop
#
# ループ処理
#
# @within function
#   asset:object/2140.louvert_meteor/init/
#   asset:object/2140.louvert_meteor/init/loop

# 少し下げて判定
    scoreboard players remove $2140.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.25 ~ #lib:no_collision/ run scoreboard players set $2140.Temp Temporary -100
    execute at @s if score $2140.Temp Temporary matches 1.. run function asset:object/2140.louvert_meteor/init/loop
