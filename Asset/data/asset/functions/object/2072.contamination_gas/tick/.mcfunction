#> asset:object/2072.contamination_gas/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2072/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle witch ~ ~ ~ 1 0 1 1 4 normal
    particle dust 0.137 0.027 0.275 3 ~ ~ ~ 1 0 1 1 10

# 効果
# デバフの種類が多く実行数が多いためif entityで条件をつけておく
    execute if entity @a[gamemode=!spectator,distance=..3,limit=1] run function asset:object/2072.contamination_gas/tick/debuff

# 消滅処理
    kill @s[scores={General.Object.Tick=20..}]
