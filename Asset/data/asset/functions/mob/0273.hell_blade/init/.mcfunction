#> asset:mob/0273.hell_blade/init/
# @within asset:mob/alias/273/init

# 向きを90°刻みのランダムに
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..3
    # 角度を出す
        scoreboard players set @s 7L.FallingRotation 90
        scoreboard players operation @s 7L.FallingRotation *= $Random Temporary
    # リセット
        scoreboard players reset $Random Temporary

# 落下のタグを付ける
    tag @s add 7L.Fall

# スコアリセット
    scoreboard players set @s 7L.RotateTimer 0
