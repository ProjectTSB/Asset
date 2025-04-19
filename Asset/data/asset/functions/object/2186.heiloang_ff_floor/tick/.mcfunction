#> asset:object/2186.heiloang_ff_floor/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2186/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    function asset:object/2186.heiloang_ff_floor/tick/animation
    function asset:object/2186.heiloang_ff_floor/tick/opacity

# 消滅処理
    kill @s[scores={General.Object.Tick=200..}]
