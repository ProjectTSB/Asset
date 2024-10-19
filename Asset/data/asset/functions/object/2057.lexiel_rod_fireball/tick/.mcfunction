#> asset:object/2057.lexiel_rod_fireball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2057/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

    function asset:object/super.tick
