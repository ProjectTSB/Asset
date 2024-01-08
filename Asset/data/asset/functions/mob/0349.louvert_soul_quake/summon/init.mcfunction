#> asset:mob/0349.louvert_soul_quake/summon/init
#
# 初期化処理
#
# @within function asset:mob/0349.louvert_soul_quake/summon/2.summon

# スコア初期化
    scoreboard players set @s 9P.Tick 0

# ループ処理
    scoreboard players set $9P.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $9P.Temp Temporary -100
    execute if score $9P.Temp Temporary matches 1.. run function asset:mob/0349.louvert_soul_quake/summon/init_loop

# ループしてもダメだったらキル
    execute if score $9P.Temp Temporary matches 0 run kill @s

# 向きリセット
    execute at @s run tp @s ~ ~ ~ ~ 0

# リセット
    tag @s remove 9P.Init
    scoreboard players reset $9P.Temp Temporary