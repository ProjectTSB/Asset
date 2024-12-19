#> asset:object/2102.lexiel_tp/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2102/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle portal ~ ~ ~ 0.3 1 0.3 0 30 force
    execute positioned ~ ~1 ~ run function asset:object/2102.lexiel_tp/tick/line

# 消滅処理
    kill @s[scores={General.Object.Tick=80..}]
