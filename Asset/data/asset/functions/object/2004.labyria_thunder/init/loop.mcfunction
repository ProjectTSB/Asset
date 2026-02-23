#> asset:object/2004.labyria_thunder/init/loop
#
# ループ処理で高さ調整
#
# @within function
#   asset:object/2004.labyria_thunder/init/
#   asset:object/2004.labyria_thunder/init/loop

# 少し下げて判定
    scoreboard players remove $2004.Temp Temporary 1
    tp @s ~ ~-0.5 ~ ~ ~
    execute at @s if block ~ ~ ~ #lib:no_collision/ unless block ~ ~-0.5 ~ #lib:no_collision/ run scoreboard players set $2004.Temp Temporary -100
    execute at @s if score $2004.Temp Temporary matches 1.. run function asset:object/2004.labyria_thunder/init/loop
