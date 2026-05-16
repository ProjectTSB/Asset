#> asset:object/2139.louvert_fire_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2139/init

# ループ処理
    scoreboard players set $2139.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2139.Temp Temporary -100
    execute if score $2139.Temp Temporary matches 1.. run function asset:object/2139.louvert_fire_magic/init/loop

# ループしてもダメだったらキル
    execute if score $2139.Temp Temporary matches 0 run kill @s

# 位置調整
    execute at @s run tp @s ~ ~ ~ ~ 0

# リセット
    scoreboard players reset $2139.Temp Temporary
