#> asset:mob/0342.louvert_common_fire_magic/summon/init_loop
#
# 初期化ループ処理
#
# @within function
#   asset:mob/0342.louvert_common_fire_magic/summon/init
#   asset:mob/0342.louvert_common_fire_magic/summon/init_loop

# 少し下げて判定
    scoreboard players remove $9I.Temp Temporary 1
    tp @s ~ ~-0.25 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $9I.Temp Temporary -100
    execute at @s if score $9I.Temp Temporary matches 1.. run function asset:mob/0342.louvert_common_fire_magic/summon/init_loop