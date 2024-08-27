#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/2.tick
#
# クワイタスレイン Tick処理
#
# @within function asset:mob/0392.ecual_first/tick/

# スコア上昇
    scoreboard players add @s AW.ProjectileTick 1

# 召喚
    execute if score @s AW.ProjectileTick matches 1 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/summon/1
    execute if score @s AW.ProjectileTick matches 31 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/summon/2
    execute if score @s AW.ProjectileTick matches 51 run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/summon/3

# 回転
    execute as @e[type=item_display,tag=AW.QuietusRainMagic,distance=7..8] at @s run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotate/1
    execute as @e[type=item_display,tag=AW.QuietusRainMagic,distance=14.5..15.5] at @s run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotate/2
    execute as @e[type=item_display,tag=AW.QuietusRainMagic,distance=22..23] at @s run function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotate/3

# キル
    execute if score @s AW.ProjectileTick matches 360 run kill @s
