#> asset:object/2176.tiamat_darkbreath/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2176/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2176.tiamat_darkbreath/tick/prediction_0
    execute if entity @s[scores={General.Object.Tick=40}] run function asset:object/2176.tiamat_darkbreath/tick/damage_0

# 消滅処理
    kill @s[scores={General.Object.Tick=80..}]
