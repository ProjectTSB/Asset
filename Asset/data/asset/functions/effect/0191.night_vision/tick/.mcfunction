#> asset:effect/0191.night_vision/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0191.night_vision/_/tick

#> Private
# @private
    #declare score_holder $191.Duration

# スコアへDurationを移す
    execute store result score $191.Duration Temporary run data get storage asset:context Duration

# $191.Durationが200以上なら暗視を毎tick付与
    execute if score $191.Duration Temporary >= $200 Const run effect give @s night_vision 11 0 true

# $191.Durationが200未満かつ暗視が付与されていなければ、暗視を付与する
    execute unless score $191.Duration Temporary >= $200 Const unless predicate asset:effect/0191.night_vision/night_vision run effect give @s night_vision 10 0 true

# リセット
    scoreboard players reset $191.Duration Temporary
