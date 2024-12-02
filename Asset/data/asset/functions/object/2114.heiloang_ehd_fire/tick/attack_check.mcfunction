#> asset:object/2114.heiloang_ehd_fire/tick/attack_check
#
# Objectのtick時の処理
#
# @within asset:object/2114.heiloang_ehd_fire/tick/

# カウンター減算
    scoreboard players remove @s 2114.Count 1

# 0になったら攻撃
    execute if entity @s[scores={2114.Count=..0}] run return run function asset:object/2114.heiloang_ehd_fire/tick/attack

# それ以外の場合タイマーを戻す
    scoreboard players set @s General.Object.Tick 0
