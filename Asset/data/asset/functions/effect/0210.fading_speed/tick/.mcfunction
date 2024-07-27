#> asset:effect/0210.fading_speed/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0210.fading_speed/_/tick

# スコア
    scoreboard players add @s 5U.Tick 1

# TODO：endのタイミングでエフェクトをgiveできないバグが治り次第、鈍足付与を消す
# 200tick経過するごとに移動速度-20%
    execute if entity @s[scores={5U.Tick=200}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=200}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.6 multiply
    execute if entity @s[scores={5U.Tick=400}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=400}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.4 multiply
    execute if entity @s[scores={5U.Tick=600}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=600}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.2 multiply
    execute if entity @s[scores={5U.Tick=800}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=800}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" -0.2 multiply
