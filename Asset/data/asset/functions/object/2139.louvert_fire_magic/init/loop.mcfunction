#> asset:object/2139.louvert_fire_magic/init/loop
#
# ループ処理
#
# @within function
#   asset:object/2139.louvert_fire_magic/init/
#   asset:object/2139.louvert_fire_magic/init/loop

# 少し下げて判定
    scoreboard players remove $2139.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $2139.Temp Temporary -100
    execute at @s if score $2139.Temp Temporary matches 1.. run function asset:object/2139.louvert_fire_magic/init/loop
