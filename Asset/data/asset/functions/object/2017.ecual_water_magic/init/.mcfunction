#> asset:object/2017.ecual_water_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2017/init

# 位置調整
    tp @s ~ ~ ~ 0 0
    execute on passengers run tp @s ~ ~ ~ 0 0
    execute on passengers on passengers run tp @s ~ ~ ~ 0 0

# ループ処理
    scoreboard players set $2017.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2017.Temp Temporary -100
    execute at @s if score $2017.Temp Temporary matches 1.. run function asset:object/2017.ecual_water_magic/init/loop

# ループしてもダメだったらキル
    execute if score $2017.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $2017.Temp Temporary
