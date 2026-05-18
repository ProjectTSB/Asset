#> asset:object/2022.ecual_critical/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2022/init

# ループ処理
    scoreboard players set $2022.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2022.Temp Temporary -100
    execute at @s if score $2022.Temp Temporary matches 1.. run function asset:object/2022.ecual_critical/init/loop

# ループしてもダメだったらキル
    execute if score $2022.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $2022.Temp Temporary
