#> asset:object/2116.heiloang_ehd_thunder/tick/attack_check
#
# Objectのtick時の処理
#
# @within asset:object/2116.heiloang_ehd_thunder/tick/

# カウンター減算
    scoreboard players remove @s 2116.Count 1

# 0になったら攻撃
    execute if entity @s[scores={2116.Count=..0}] run return run function asset:object/2116.heiloang_ehd_thunder/tick/attack

# それ以外の場合タイマーを戻す
    scoreboard players set @s General.Object.Tick 0
