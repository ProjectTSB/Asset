#> asset:mob/0372.wave_magic/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0372.wave_magic/_/tick

# スコア
# Tick < 80 の時、空中
# Tick >= 100の時、地面
    scoreboard players add @s AC.Tick 1

# 空中にいるときの処理
    execute if entity @s[scores={AC.Tick=..79}] run function asset:mob/0372.wave_magic/tick/2.in_air

# 地面にいるときの処理
    execute if entity @s[scores={AC.Tick=100..}] run function asset:mob/0372.wave_magic/tick/3.on_ground

# 消滅
    execute if entity @s[scores={AC.Tick=80..99}] run kill @s
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={AC.Tick=118..}] run kill @s
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={AC.Tick=127..}] run kill @s
