#> asset:mob/0391.axia_first/ai/projectile/sword/2.tick
#
# ディメンションソード Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコア上昇
    scoreboard players add @s AV.ProjectileTick 1

# 回転・演出
    tp @s ~ ~ ~ ~4 0
    execute at @s run function asset:mob/0391.axia_first/ai/projectile/sword/vfx/tick
    execute if score @s AV.ProjectileTick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 発動処理
    execute if score @s AV.ProjectileTick matches 41.. run function asset:mob/0391.axia_first/ai/projectile/sword/3.cast
