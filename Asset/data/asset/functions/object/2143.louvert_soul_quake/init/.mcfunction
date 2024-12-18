#> asset:object/2143.louvert_soul_quake/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2143/init

# ループ処理
    scoreboard players set $2143.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $2143.Temp Temporary -100
    execute if score $2143.Temp Temporary matches 1.. run function asset:object/2143.louvert_soul_quake/init/loop

# ループしてもダメだったらキル
    execute if score $2143.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $2143.Temp Temporary
