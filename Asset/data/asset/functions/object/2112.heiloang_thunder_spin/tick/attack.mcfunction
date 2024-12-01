#> asset:object/2112.heiloang_thunder_spin/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2112.heiloang_thunder_spin/tick/

# 回転
    execute if entity @s[tag=!2112.IsInverse] run tp @s ~ ~ ~ ~15 ~
    execute if entity @s[tag=2112.IsInverse] run tp @s ~ ~ ~ ~-15 ~

# 攻撃開始
    scoreboard players set @s 2112.AttackTimer 20
