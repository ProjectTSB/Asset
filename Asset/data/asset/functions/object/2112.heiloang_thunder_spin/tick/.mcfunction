#> asset:object/2112.heiloang_thunder_spin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2112/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=50}] run function asset:object/2112.heiloang_thunder_spin/tick/attack_first.m {Duration:5,KillTick:25}
    execute if entity @s[scores={General.Object.Tick=80}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:15}
    execute if entity @s[scores={General.Object.Tick=100}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:15}
    execute if entity @s[scores={General.Object.Tick=120}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:15}
    execute if entity @s[scores={General.Object.Tick=140}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:7}
    execute if entity @s[scores={General.Object.Tick=150}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}
    execute if entity @s[scores={General.Object.Tick=155}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}
    execute if entity @s[scores={General.Object.Tick=160}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}
    execute if entity @s[scores={General.Object.Tick=165}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}
    execute if entity @s[scores={General.Object.Tick=170}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}
    execute if entity @s[scores={General.Object.Tick=175}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}
    execute if entity @s[scores={General.Object.Tick=180}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:2,KillTick:2}

    scoreboard players remove @s 2112.AttackTimer 1
    execute if entity @s[scores={2112.AttackTimer=20}] positioned ^ ^ ^ run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
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
    kill @s[scores={General.Object.Tick=190..}]
