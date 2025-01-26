#> asset:object/2199.sapphiel_missile/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2199/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 継承
    function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
