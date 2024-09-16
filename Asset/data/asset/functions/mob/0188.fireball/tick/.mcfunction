#> asset:mob/0188.fireball/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0188.fireball/_/tick

# スコア
    scoreboard players add @s 58.Tick 1

# パーティクル
    particle smoke ~ ~ ~ 0.1 0.1 0.1 0.001 3

# 移動
    function asset:mob/0188.fireball/tick/move
    scoreboard players reset $Recursive Temporary

# 消滅
    execute if entity @s[scores={58.Tick=25..}] run kill @s
