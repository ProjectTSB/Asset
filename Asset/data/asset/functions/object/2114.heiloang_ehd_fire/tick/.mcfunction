#> asset:object/2114.heiloang_ehd_fire/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2114/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=..137}] run particle dust 0.831 0.239 0.133 3 ~ ~1 ~ 0.5 0.5 0.5 0 3 force
    execute if entity @s[scores={General.Object.Tick=..137}] run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 3 force
    execute if entity @s[scores={General.Object.Tick=2}] run function asset:object/2114.heiloang_ehd_fire/tick/prediction

# 攻撃
    execute if entity @s[scores={General.Object.Tick=142}] run function asset:object/2114.heiloang_ehd_fire/tick/attack_check

# 消滅処理
    kill @s[scores={General.Object.Tick=300..}]
