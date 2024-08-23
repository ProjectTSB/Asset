#> asset:mob/0392.ecual_first/ai/projectile/water_magic/1.init
#
# 初期化処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_magic/0.summon

# スコア初期化
    scoreboard players set @s AW.ProjectileTick 0

# ループ処理
    scoreboard players set $AW.Temp Temporary 32
    execute if block ~ ~ ~ #lib:no_collision unless block ~ ~-0.25 ~ #lib:no_collision run scoreboard players set $AW.Temp Temporary -100
    execute at @s if score $AW.Temp Temporary matches 1.. run function asset:mob/0392.ecual_first/ai/projectile/water_magic/1.1.loop

# ループしてもダメだったらキル / 中断
    execute if score $AW.Temp Temporary matches 0 at @s run kill @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01]
    execute if score $AW.Temp Temporary matches 0 run return 0

# TP
    execute at @s run tp @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] ~ ~ ~ ~ 0

# タグ外し
    execute at @s run tag @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] remove AW.ProjectileInit
