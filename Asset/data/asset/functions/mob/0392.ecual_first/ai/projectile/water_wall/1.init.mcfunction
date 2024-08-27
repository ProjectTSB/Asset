#> asset:mob/0392.ecual_first/ai/projectile/water_wall/1.init
#
# 初期化処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_wall/0.summon

# TP
    tp @s ~ ~ ~ ~ 0

# タグ付け
    tag @s add AW.WaterWall

# スコア初期化
    scoreboard players set @s AW.ProjectileTick 0

# ループ処理
    scoreboard players set $AW.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $AW.Temp Temporary -100
    execute at @s if score $AW.Temp Temporary matches 1.. run function asset:mob/0392.ecual_first/ai/projectile/water_magic/1.1.loop

# ループしてもダメだったらキル
    execute if score $AW.Temp Temporary matches 0 run kill @s

# リセット
    scoreboard players reset $AW.Temp Temporary
    execute at @s run tag @e[tag=AW.Temp.This,distance=..0.001] remove AW.Temp.This
