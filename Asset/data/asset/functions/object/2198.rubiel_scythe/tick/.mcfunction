#> asset:object/2198.rubiel_scythe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2198/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
    function asset:object/2198.rubiel_scythe/tick/spin

# 移動しつつ攻撃
    function asset:object/2198.rubiel_scythe/tick/move
    execute at @s run function asset:object/2198.rubiel_scythe/tick/move

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=60..}] run kill @s
