#> asset:object/2004.labyria_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2004/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 召喚時に音を鳴らす
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# VFX表示
    execute if score @s General.Object.Tick matches 1 run function asset:object/2004.labyria_thunder/tick/summon_area

# 発動処理
    execute if score @s General.Object.Tick matches 20.. run function asset:object/2004.labyria_thunder/tick/cast
