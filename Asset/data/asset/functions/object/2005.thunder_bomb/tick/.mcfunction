#> asset:object/2005.thunder_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2005/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 召喚時に音を鳴らす
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# マーカーを回転させる
    execute if score @s General.Object.Tick matches ..100 run tp @s ~ ~ ~ ~8 0

# VFX表示
    execute if score @s General.Object.Tick matches 1 run function asset:object/2005.thunder_bomb/tick/summon_area

# 発動処理
    execute if score @s General.Object.Tick matches 100 run function asset:object/2005.thunder_bomb/tick/cast

# 余波のサンダーを召喚
    execute if score @s General.Object.Tick matches 103 run function asset:object/2005.thunder_bomb/tick/thunder_summon/1
    execute if score @s General.Object.Tick matches 106 run function asset:object/2005.thunder_bomb/tick/thunder_summon/2
    execute if score @s General.Object.Tick matches 109 run function asset:object/2005.thunder_bomb/tick/thunder_summon/3
    execute if score @s General.Object.Tick matches 112 run function asset:object/2005.thunder_bomb/tick/thunder_summon/4
    execute if score @s General.Object.Tick matches 115 run function asset:object/2005.thunder_bomb/tick/thunder_summon/5
