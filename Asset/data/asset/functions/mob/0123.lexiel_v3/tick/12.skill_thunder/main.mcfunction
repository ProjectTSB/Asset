#> asset:mob/0123.lexiel_v3/tick/12.skill_thunder/main
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/skill_active

# アニメーション開始
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=3F.AJ,tag=3F.AJLink,sort=nearest,limit=1] run function animated_java:lexiel/animations/magic2/play
    execute if score @s General.Mob.Tick matches 0 facing entity @p[gamemode=!spectator,distance=..100] feet run function asset:mob/0123.lexiel_v3/tick/common/tp

# 演出
    execute if score @s General.Mob.Tick matches 22 run playsound minecraft:item.trident.riptide_2 hostile @a ~ ~ ~ 1 1.4

# 弾
    execute if score @s General.Mob.Tick matches 22..46 if entity @p[gamemode=!spectator,distance=..80] run function asset:mob/0123.lexiel_v3/tick/common/thunder/main

# ハード限定で二倍にする
    execute if score @s General.Mob.Tick matches 22..46 if entity @p[gamemode=!spectator,distance=..80] if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0123.lexiel_v3/tick/common/thunder/main

# リセット
    execute if score @s General.Mob.Tick matches 64 run function asset:mob/0123.lexiel_v3/tick/skill_reset
