#> asset:object/1092.water_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1092/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# vfx
    function asset:object/1092.water_magic/tick/vfx

# ダメージ
    execute if score @s General.Object.Tick matches 1 run function asset:object/1092.water_magic/tick/damage
    execute if score @s General.Object.Tick matches 6 run function asset:object/1092.water_magic/tick/damage
    execute if score @s General.Object.Tick matches 11 run function asset:object/1092.water_magic/tick/damage
    execute if score @s General.Object.Tick matches 16 run function asset:object/1092.water_magic/tick/damage
    execute if score @s General.Object.Tick matches 21 run function asset:object/1092.water_magic/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=21..}]
