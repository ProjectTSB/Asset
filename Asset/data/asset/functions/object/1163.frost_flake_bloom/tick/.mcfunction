#> asset:object/1163.frost_flake_bloom/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1163/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 氷のタメ
    execute if score @s General.Object.Tick matches 1..3 run function asset:object/1163.frost_flake_bloom/tick/charge

# 軌道の発射
    execute if score @s General.Object.Tick matches 4 run function asset:object/1163.frost_flake_bloom/tick/launch

# 地上への着弾
    execute if score @s General.Object.Tick matches 8 run function asset:object/1163.frost_flake_bloom/tick/impact

# 演出終了
    kill @s[scores={General.Object.Tick=9..}]
