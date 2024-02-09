#> asset:mob/0341.louvert/tick/projectile/fire_magic/2.init
#
# 初期化処理
#
# @within function
#   asset:mob/0341.louvert/tick/projectile/fire_magic/0.summon
#   asset:mob/0341.louvert/tick/projectile/soul_quake/0.summon

# スコア初期化
    scoreboard players set @s 9H.ProjectileTick 0

# ループ処理
    scoreboard players set $9H.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $9H.Temp Temporary -100
    execute if score $9H.Temp Temporary matches 1.. run function asset:mob/0341.louvert/tick/projectile/fire_magic/2.1.loop

# ループしてもダメだったらキル
    execute if score $9H.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $9H.Temp Temporary
    tag @s remove 9H.Temp.This