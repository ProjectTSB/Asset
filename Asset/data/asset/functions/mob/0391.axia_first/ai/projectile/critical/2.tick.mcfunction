#> asset:mob/0391.axia_first/ai/projectile/critical/2.tick
#
# クリティカルヒット Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコア上昇
    scoreboard players add @s AV.ProjectileTick 1

# 回転・演出
    tp @s ~ ~ ~ ~20 0
    execute at @s run function asset:mob/0391.axia_first/ai/projectile/critical/vfx/tick
    execute if score @s AV.ProjectileTick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 処理
    execute if score @s AV.ProjectileTick matches 21 if entity @s[tag=!AV.CriticalOpening] run function asset:mob/0391.axia_first/ai/projectile/critical/3.cast

#
    execute if score @s AV.ProjectileTick matches 81 run function asset:mob/0391.axia_first/ai/projectile/critical/3.cast
