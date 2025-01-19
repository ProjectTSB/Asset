#> asset:object/2107.heiloang_fireball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2107/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 継承元処理を実行
    function asset:object/super.tick

# 独自処理
    execute unless entity @s[tag=2107.IsDark] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 3 force
    execute if entity @s[tag=2107.IsDark] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 3 force
    execute if entity @s[scores={General.Object.Tick=1}] run function asset:object/2107.heiloang_fireball/tick/particle
    execute if entity @s[scores={General.Object.Tick=5}] run function asset:object/2107.heiloang_fireball/tick/particle
    execute if entity @s[scores={General.Object.Tick=10}] run function asset:object/2107.heiloang_fireball/tick/particle
    execute if entity @s[scores={General.Object.Tick=15}] run function asset:object/2107.heiloang_fireball/tick/particle

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
