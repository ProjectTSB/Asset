#> asset:object/2020.water_wall/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2020/init

# ループ処理
    scoreboard players set $2020.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.5 ~ #lib:no_collision run scoreboard players set $2020.Temp Temporary -100
    execute at @s if score $2020.Temp Temporary matches 1.. run function asset:object/2020.water_wall/init/loop

# ループしてもダメだったらキル / 中断
    execute if score $2020.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $2020.Temp Temporary
