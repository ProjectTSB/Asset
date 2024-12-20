#> asset:object/2129.heiloang_plamet_pursuit/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2129/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2129.heiloang_plamet_pursuit/tick/prediction
    execute if entity @s[scores={General.Object.Tick=30}] run function asset:object/2129.heiloang_plamet_pursuit/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=30..}]
