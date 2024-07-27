#> asset:effect/0210.fading_speed/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0210.fading_speed/_/tick

# スコア
    scoreboard players add @s 5U.Tick 1

# Duratinに応じて移動速度バフが低下
# 効果時間の最後10秒はバフなし
    #execute if score $DurationTimer Temporary matches 800 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    #execute if score $DurationTimer Temporary matches 800 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.6 multiply
    #execute if score $DurationTimer Temporary matches 600 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    #execute if score $DurationTimer Temporary matches 600 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.4 multiply
    #execute if score $DurationTimer Temporary matches 400 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    #execute if score $DurationTimer Temporary matches 400 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.2 multiply
    #execute if score $DurationTimer Temporary matches 200 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000

# TODO：endのタイミングでエフェクトをgiveできないバグが治り次第コメントアウトを解除する
# 200tick経過するごとに移動速度-20%
    execute if entity @s[scores={5U.Tick=200}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=200}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.6 multiply
    execute if entity @s[scores={5U.Tick=400}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=400}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.4 multiply
    execute if entity @s[scores={5U.Tick=600}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=600}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.2 multiply
    execute if entity @s[scores={5U.Tick=800}] run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if entity @s[scores={5U.Tick=800}] run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" -0.2 multiply
