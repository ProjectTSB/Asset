#> asset:object/2112.heiloang_thunder_spin/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2112/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=5}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=35}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=65}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=85}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=95}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=105}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=111}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=117}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=123}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=129}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=135}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}
    execute if entity @s[scores={General.Object.Tick=141}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:10,KillTick:37}

# # 攻撃
#     execute if entity @s[scores={General.Object.Tick=50}] run function asset:object/2112.heiloang_thunder_spin/tick/attack_first.m {Duration:5,KillTick:25}
#     execute if entity @s[scores={General.Object.Tick=80}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:15}
#     execute if entity @s[scores={General.Object.Tick=100}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:15}
#     execute if entity @s[scores={General.Object.Tick=120}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:15}
#     execute if entity @s[scores={General.Object.Tick=140}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:5,KillTick:7}
#     execute if entity @s[scores={General.Object.Tick=150}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}
#     execute if entity @s[scores={General.Object.Tick=156}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}
#     execute if entity @s[scores={General.Object.Tick=162}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}
#     execute if entity @s[scores={General.Object.Tick=168}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}
#     execute if entity @s[scores={General.Object.Tick=174}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}
#     execute if entity @s[scores={General.Object.Tick=180}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}
#     execute if entity @s[scores={General.Object.Tick=186}] run function asset:object/2112.heiloang_thunder_spin/tick/attack.m {Duration:3,KillTick:3}

    # scoreboard players remove @s 2112.AttackTimer 1
    # execute if entity @s[scores={2112.AttackTimer=20}] positioned ^ ^ ^ run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=19}] positioned ^ ^ ^5 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=19}] positioned ^ ^ ^-5 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=18}] positioned ^ ^ ^9 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=18}] positioned ^ ^ ^-9 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=17}] positioned ^ ^ ^13 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=17}] positioned ^ ^ ^-13 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=16}] positioned ^ ^ ^17 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=16}] positioned ^ ^ ^-17 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=15}] positioned ^ ^ ^20 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0
    # execute if entity @s[scores={2112.AttackTimer=15}] positioned ^ ^ ^-20 run function asset:object/2112.heiloang_thunder_spin/tick/attack_0

# 消滅処理
    kill @s[scores={General.Object.Tick=190..}]
