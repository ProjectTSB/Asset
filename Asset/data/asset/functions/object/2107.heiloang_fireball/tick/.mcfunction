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

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
