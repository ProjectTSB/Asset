#> asset:mob/0342.louvert_common_fire_magic/summon/init
#
# 初期化処理
#
# @within function asset:mob/0342.louvert_common_fire_magic/summon/2.summon

#> val
# @within function asset:mob/0342.louvert_common_fire_magic/summon/*
    #declare score_holder $9I.Temp

# スコア初期化
    scoreboard players set @s 9I.Tick 0

# ループ処理
    scoreboard players set $9I.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $9I.Temp Temporary -100
    execute if score $9I.Temp Temporary matches 1.. run function asset:mob/0342.louvert_common_fire_magic/summon/init_loop

# ループしてもダメだったらキル
    execute if score $9I.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $9I.Temp Temporary
    tag @s remove 9I.Init