#> asset:object/2112.heiloang_thunder_spin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2112/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=50}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=80}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=100}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=110}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=120}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=130}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=135}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=140}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=145}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=150}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=155}] run function asset:object/2112.heiloang_thunder_spin/tick/attack
    execute if entity @s[scores={General.Object.Tick=160}] run function asset:object/2112.heiloang_thunder_spin/tick/attack

    scoreboard players remove @s 2112.AttackTimer 1
    execute if entity @s[scores={2112.AttackTimer=19}] positioned ^ ^ ^5 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=19}] positioned ^ ^ ^-5 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=18}] positioned ^ ^ ^9 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=18}] positioned ^ ^ ^-9 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=17}] positioned ^ ^ ^13 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=17}] positioned ^ ^ ^-13 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=16}] positioned ^ ^ ^17 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=16}] positioned ^ ^ ^-17 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=15}] positioned ^ ^ ^20 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    execute if entity @s[scores={2112.AttackTimer=15}] positioned ^ ^ ^-20 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0

# 消滅処理
    kill @s[scores={General.Object.Tick=170..}]
