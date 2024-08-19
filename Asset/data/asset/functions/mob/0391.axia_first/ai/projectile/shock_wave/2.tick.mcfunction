#> asset:mob/0391.axia_first/ai/projectile/shock_wave/2.tick
#
# 衝撃波 Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコア上昇
    scoreboard players add @s AV.ProjectileTick 1

# 回転・演出
    tp @s ~ ~ ~ ~20 0
    execute at @s run function asset:mob/0391.axia_first/ai/projectile/shock_wave/vfx/tick
    execute if score @s AV.ProjectileTick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 発動処理
    execute if score @s AV.ProjectileTick matches 31.. run function asset:mob/0391.axia_first/ai/projectile/shock_wave/3.cast
