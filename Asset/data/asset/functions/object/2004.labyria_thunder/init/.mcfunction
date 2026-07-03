#> asset:object/2004.labyria_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2004/init

#> Temp
# @within function asset:object/2004.labyria_thunder/init/**
    #declare score_holder $2004.Temp

# ブロックの直上に来るようにループ処理を行う
    scoreboard players set $2004.Temp Temporary 16
    execute if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2004.Temp Temporary -100
    execute if score $2004.Temp Temporary matches 1.. run function asset:object/2004.labyria_thunder/init/loop

# ループしてもダメだったらキル
    execute if score $2004.Temp Temporary matches 0 run kill @s

# TP
    execute at @s run tp @s ~ ~ ~ ~ 0

# リセット
    scoreboard players reset $2004.Temp Temporary
