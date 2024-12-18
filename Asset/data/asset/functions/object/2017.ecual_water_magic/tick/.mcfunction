#> asset:object/2017.ecual_water_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2017/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 回転 ／ 縮小
    execute if score @s General.Object.Tick matches 2 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/3
    execute if score @s General.Object.Tick matches 31 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 61 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/2
    execute if score @s General.Object.Tick matches 91 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/3
    execute if score @s General.Object.Tick matches 121 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 151 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/2
    execute if score @s General.Object.Tick matches 181 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/3
    execute if score @s General.Object.Tick matches 211 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/1
    execute if score @s General.Object.Tick matches 241 run function asset:object/2017.ecual_water_magic/tick/direction/rotate/2
    execute if score @s General.Object.Tick matches 271 run function asset:object/2017.ecual_water_magic/tick/direction/contract

# VFX
    execute if score @s General.Object.Tick matches 40..260 run function asset:object/2017.ecual_water_magic/tick/direction/vfx/

# ダメージ処理（5tickごと）
    scoreboard players operation $2017.Temp Temporary = @s General.Object.Tick
    scoreboard players operation $2017.Temp Temporary %= $5 Const
    execute if score @s General.Object.Tick matches 40..260 if score $2017.Temp Temporary matches 0 run function asset:object/2017.ecual_water_magic/tick/cast
    scoreboard players reset $2017.Temp Temporary

# キル
    execute if score @s General.Object.Tick matches 301.. run kill @s
