#> asset:object/2178.tiamat_icicledive/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2178/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=60}] positioned ^ ^ ^-30 run function asset:object/2178.tiamat_icicledive/tick/damage
    execute if entity @s[scores={General.Object.Tick=63}] positioned ^ ^ ^-10 run function asset:object/2178.tiamat_icicledive/tick/damage
    execute if entity @s[scores={General.Object.Tick=66}] positioned ^ ^ ^10 run function asset:object/2178.tiamat_icicledive/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=66..}]
