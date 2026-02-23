#> asset:object/2268.gem_upper_shot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2268/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予兆
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2268.gem_upper_shot/tick/prediction

# 攻撃
    execute if entity @s[scores={General.Object.Tick=57}] run function asset:object/2268.gem_upper_shot/tick/summon_laser
    execute if entity @s[scores={General.Object.Tick=60}] run function asset:object/2268.gem_upper_shot/tick/damage

# 消滅処理
    kill @s[scores={General.Object.Tick=61..}]
