#> asset:mob/0123.lexiel_v3/tick/00.opening/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション変える
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=3F.AJ,sort=nearest,limit=1] run function animated_java:lexiel/animations/spawn/play

# 演出
    execute if score @s General.Mob.Tick matches 22 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 3 0.6
    execute if score @s General.Mob.Tick matches 22 run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 3 1.5
    execute if score @s General.Mob.Tick matches 22 run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.1 50 normal

# リセット
    execute if score @s General.Mob.Tick matches 85 run function asset:mob/0123.lexiel_v3/tick/skill_reset
