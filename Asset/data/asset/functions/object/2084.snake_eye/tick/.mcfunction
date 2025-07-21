#> asset:object/2084.snake_eye/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2084/tick

#> prv
# @private
    #declare score_holder $current_time
    #declare score_holder $detonation_safe_time

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 着地しているかつ爆発していい時間だったら爆発
    execute if entity @s[tag=2084.Grounded] run function asset:object/2084.snake_eye/tick/detonation_check

# super
    execute unless entity @s[tag=2084.Grounded] at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
