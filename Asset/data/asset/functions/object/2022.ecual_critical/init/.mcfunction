#> asset:object/2022.ecual_critical/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2022/init

# ループ処理
    scoreboard players set $2022.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $2022.Temp Temporary -100
    execute at @s if score $2022.Temp Temporary matches 1.. run function asset:object/2022.ecual_critical/init/loop

# ループしてもダメだったらキル / 中断
    execute if score $2022.Temp Temporary matches 0 run kill @s
    execute if score $2022.Temp Temporary matches 0 run return 0
