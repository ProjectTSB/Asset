#> asset:effect/0210.fading_speed/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0210.fading_speed/_/tick

#> Private
# @private
    #declare score_holder $DurationTimer

# Durationをスコアへ代入
    execute store result score $DurationTimer Temporary run data get storage asset:context Duration

# Duratinに応じて移動速度バフ
# 効果時間の最後10秒はバフなし
    execute if score $DurationTimer Temporary matches 1000 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.8 multiply
    execute if score $DurationTimer Temporary matches 800 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if score $DurationTimer Temporary matches 800 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.6 multiply
    execute if score $DurationTimer Temporary matches 600 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if score $DurationTimer Temporary matches 600 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.4 multiply
    execute if score $DurationTimer Temporary matches 400 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
    execute if score $DurationTimer Temporary matches 600 run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00d200000000 "210.FadingSpeed" 0.2 multiply
    execute if score $DurationTimer Temporary matches 200 run attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00d200000000
