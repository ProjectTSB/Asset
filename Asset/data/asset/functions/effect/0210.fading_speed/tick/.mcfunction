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




#
