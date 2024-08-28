#> asset:mob/0392.ecual_first/ai/projectile/hydro/2.tick
#
# 設置水魔法 Tick処理
#
# @within function asset:mob/0392.ecual_first/tick/

# スコア上昇
    scoreboard players add @s AW.ProjectileTick 1

# 音
    execute if score @s AW.ProjectileTick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 回転 ／ 縮小
    execute if score @s AW.ProjectileTick matches 2 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 12 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/2
    execute if score @s AW.ProjectileTick matches 22 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/3
    execute if score @s AW.ProjectileTick matches 32 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 42 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/2
    execute if score @s AW.ProjectileTick matches 52 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/3
    execute if score @s AW.ProjectileTick matches 62 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 72 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/2
    execute if score @s AW.ProjectileTick matches 82 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/3
    execute if score @s AW.ProjectileTick matches 92 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/1
    execute if score @s AW.ProjectileTick matches 102 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/rotate/2

# VFX
    execute if score @s AW.ProjectileTick matches 1..110 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/vfx/tick

# 予告線
    execute as @e[type=item_display,tag=AW.HydroAnnounce,distance=..2] run data merge entity @s {teleport_duration:0,transformation:{scale:[3f,0.1f,60f]}}
    execute if entity @s[tag=!AW.HydroStormFirst] if entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=24.25..25.75] run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/announce_line

# サウンド
    scoreboard players operation $AW.Temp Temporary = @s AW.ProjectileTick
    scoreboard players operation $AW.Temp Temporary %= $2 Const
    execute if score @s AW.ProjectileTick matches 6..110 if score $AW.Temp Temporary matches 0 run function asset:mob/0392.ecual_first/ai/projectile/hydro/direction/sound
    scoreboard players reset $AW.Temp Temporary

# ダメージ処理（2tickごと）
    scoreboard players operation $AW.Temp Temporary = @s AW.ProjectileTick
    scoreboard players operation $AW.Temp Temporary %= $2 Const
    execute if score @s AW.ProjectileTick matches 6..110 if score $AW.Temp Temporary matches 0 run function asset:mob/0392.ecual_first/ai/projectile/hydro/3.cast
    scoreboard players reset $AW.Temp Temporary

# Age弄り
    execute on passengers on passengers run data modify entity @s Age set value 0

# TP
    execute at @s run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/min/hard at @s run tp @s ^ ^ ^0.25

# キル
    execute if score @s AW.ProjectileTick matches 111.. run function asset:mob/0392.ecual_first/ai/projectile/hydro/4.kill
