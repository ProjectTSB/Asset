#> asset:mob/0365.frestchika_v2/ai/projectile/thunder/3.tick
#
# ゼクスサンダー Tick処理
#
# @within function asset:mob/0365.frestchika_v2/tick/

# スコア上昇
    scoreboard players add @s A5.ProjectileTick 1

# 召喚時VFX表示
    execute if score @s A5.ProjectileTick matches 1 rotated ~ 0 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/4.init_vfx

# 攻撃範囲表示
    execute if score @s A5.ProjectileTick matches 2 rotated ~ 0 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/6.tick_vfx
    execute if score @s A5.ProjectileTick matches 7 rotated ~ 0 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/6.tick_vfx
    execute if score @s A5.ProjectileTick matches 12 rotated ~ 0 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/6.tick_vfx

# 発動処理
    execute if score @s A5.ProjectileTick matches 16 run function asset:mob/0365.frestchika_v2/ai/projectile/thunder/5.cast