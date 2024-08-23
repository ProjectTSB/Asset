#> asset:mob/0392.ecual_first/ai/projectile/water_magic/2.tick
#
# 設置水魔法 Tick処理
#
# @within function asset:mob/0392.ecual_first/tick/

# スコア上昇
    scoreboard players add @s AW.ProjectileTick 1

# 音
    execute if score @s AW.ProjectileTick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 回転 ／ 縮小
    execute if score @s AW.ProjectileTick matches 1 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/3
    execute if score @s AW.ProjectileTick matches 31 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 61 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/2
    execute if score @s AW.ProjectileTick matches 91 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/3
    execute if score @s AW.ProjectileTick matches 121 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 151 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/2
    execute if score @s AW.ProjectileTick matches 181 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/3
    execute if score @s AW.ProjectileTick matches 211 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 241 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/rotate/2
    execute if score @s AW.ProjectileTick matches 271 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/contract

# VFX
    execute if score @s AW.ProjectileTick matches 40..260 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/direction/vfx/

# ダメージ処理（5tickごと）
    scoreboard players operation $AW.Temp Temporary = @s AW.ProjectileTick
    scoreboard players operation $AW.Temp Temporary %= $5 Const
    execute if score @s AW.ProjectileTick matches 40..260 if score $AW.Temp Temporary matches 0 run function asset:mob/0392.ecual_first/ai/projectile/water_magic/3.cast
    scoreboard players reset $AW.Temp Temporary

# キル
    execute if score @s AW.ProjectileTick matches 301.. run function asset:mob/0392.ecual_first/ai/projectile/water_magic/4.kill
