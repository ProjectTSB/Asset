#> asset:object/2082.storm_shadow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2082/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# super
    function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
