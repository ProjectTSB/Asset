#> asset:object/1135.thor_thunder_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1135/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 最初の雷は現座標で実行
    execute if score @s General.Object.Tick matches 1 run function asset:object/1135.thor_thunder_manager/tick/summon_thunder

# 連続で拡散して召喚
    execute if score @s General.Object.Tick matches 5..8 run function asset:object/1135.thor_thunder_manager/tick/spread

# 消滅処理
    kill @s[scores={General.Object.Tick=10..}]
