#> asset:mob/0341.louvert/tick/projectile/soul_quake/1.tick
#
# ソウルクエイクTick
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スコア上昇
    scoreboard players add @s 9H.ProjectileTick 1

# 音
    execute if score @s 9H.ProjectileTick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 0.5 2 0

# VFX
    # スコア調整
    scoreboard players operation $9H.Temp 9H.ProjectileTick = @s 9H.ProjectileTick
    scoreboard players operation $9H.Temp 9H.ProjectileTick %= $4 Const
    execute if score @s 9H.ProjectileTick matches ..20 if score $9H.Temp 9H.ProjectileTick matches 1 run function asset:mob/0341.louvert/tick/projectile/soul_quake/2.vfx

# 処理
    execute if score @s 9H.ProjectileTick matches 21 run function asset:mob/0341.louvert/tick/projectile/soul_quake/3.cast

# リセット
    scoreboard players reset $9H.Temp 9H.ProjectileTick