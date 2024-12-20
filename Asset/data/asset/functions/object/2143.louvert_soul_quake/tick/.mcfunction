#> asset:object/2143.louvert_soul_quake/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2143/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 0.5 2 0

# 範囲表示
    execute if score @s General.Object.Tick matches 1 run function asset:object/2143.louvert_soul_quake/tick/summon_area

# 処理
    execute if score @s General.Object.Tick matches 21 run function asset:object/2143.louvert_soul_quake/tick/cast

# リセット
    scoreboard players reset $2143.Temp General.Object.Tick
