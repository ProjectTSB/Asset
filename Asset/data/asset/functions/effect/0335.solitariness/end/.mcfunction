#> asset:effect/0335.solitariness/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0335.solitariness/_/end

# 消す
    function asset:effect/0335.solitariness/modifier/remove

# スコアリセット
    scoreboard players reset @s 335.Time
