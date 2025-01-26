#> asset:object/2173.heiloang_thunder_spin_attack/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2173/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 攻撃
    execute if entity @s[scores={General.Object.Tick=31}] positioned ^ ^ ^ run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=32}] positioned ^ ^ ^5 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=32}] positioned ^ ^ ^-5 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=33}] positioned ^ ^ ^9 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=33}] positioned ^ ^ ^-9 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=34}] positioned ^ ^ ^13 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=34}] positioned ^ ^ ^-13 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=35}] positioned ^ ^ ^17 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=35}] positioned ^ ^ ^-17 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=36}] positioned ^ ^ ^20 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=36}] positioned ^ ^ ^-20 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=37}] positioned ^ ^ ^25 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack
    execute if entity @s[scores={General.Object.Tick=37}] positioned ^ ^ ^-25 run function asset:object/2173.heiloang_thunder_spin_attack/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=37..}]
