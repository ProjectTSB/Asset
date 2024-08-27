#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/1.init
#
# 初期化処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotated_water_magic/0.summon

# スコア初期化
    scoreboard players set @s AW.ProjectileTick 0

# TP
    execute at @s run tp @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] ~ ~ ~ ~ 0

# タグ外し
    execute at @s run tag @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] remove AW.ProjectileInit
