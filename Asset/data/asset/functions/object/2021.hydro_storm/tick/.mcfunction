#> asset:object/2021.hydro_storm/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2021/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 回転 ／ 縮小
    execute if score @s General.Object.Tick matches 2 run function asset:object/2021.hydro_storm/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 12 run function asset:object/2021.hydro_storm/tick/direction/rotate/2
    execute if score @s General.Object.Tick matches 22 run function asset:object/2021.hydro_storm/tick/direction/rotate/3
    execute if score @s General.Object.Tick matches 32 run function asset:object/2021.hydro_storm/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 42 run function asset:object/2021.hydro_storm/tick/direction/rotate/2
    execute if score @s General.Object.Tick matches 52 run function asset:object/2021.hydro_storm/tick/direction/rotate/3
    execute if score @s General.Object.Tick matches 62 run function asset:object/2021.hydro_storm/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 72 run function asset:object/2021.hydro_storm/tick/direction/rotate/2
    execute if score @s General.Object.Tick matches 82 run function asset:object/2021.hydro_storm/tick/direction/rotate/3
    execute if score @s General.Object.Tick matches 92 run function asset:object/2021.hydro_storm/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 102 run function asset:object/2021.hydro_storm/tick/direction/rotate/2

# VFX
    execute if score @s General.Object.Tick matches 1..110 run function asset:object/2021.hydro_storm/tick/direction/vfx/tick

# 予告線
    execute if entity @s[tag=!AW.HydroStormFirst] if entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=24.25..25.75] run function asset:object/2021.hydro_storm/tick/direction/announce_line

# サウンド
    scoreboard players operation $2021.Temp Temporary = @s General.Object.Tick
    scoreboard players operation $2021.Temp Temporary %= $2 Const
    execute if score @s General.Object.Tick matches 6..110 if score $2021.Temp Temporary matches 0 run function asset:object/2021.hydro_storm/tick/direction/sound
    scoreboard players reset $2021.Temp Temporary

# ダメージ処理（2tickごと）
    scoreboard players operation $2021.Temp Temporary = @s General.Object.Tick
    scoreboard players operation $2021.Temp Temporary %= $2 Const
    execute if score @s General.Object.Tick matches 6..110 if score $2021.Temp Temporary matches 0 run function asset:object/2021.hydro_storm/tick/cast
    scoreboard players reset $2021.Temp Temporary

# Age弄り
    execute on passengers on passengers run data modify entity @s Age set value 0

# TP
    execute at @s run tp @s ^ ^ ^1
    execute if predicate api:global_vars/difficulty/min/3_blessless at @s run tp @s ^ ^ ^0.25

# キル
    execute if score @s General.Object.Tick matches 111.. run function asset:object/2021.hydro_storm/tick/kill
