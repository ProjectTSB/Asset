#> asset:effect/0654.chicken_out/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0654.chicken_out/_/tick

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# Tick加算
    scoreboard players add @s 0654.Tick 1

# 臆病風がひゅるる
    execute if score @s 0654.Tick matches 40 run function asset:effect/0654.chicken_out/tick/start

# このデバフが付与されたままで60tick経つと、インターバルの処理を開始する
    execute if score @s 0654.Tick matches 60.. run function asset:effect/0654.chicken_out/tick/interval

# リセット
    scoreboard players reset $Interval Temporary
