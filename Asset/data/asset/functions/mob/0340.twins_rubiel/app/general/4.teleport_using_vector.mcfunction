#> asset:mob/0340.twins_rubiel/app/general/4.teleport_using_vector
#
# 汎用処理 スコアのベクトルを利用して移動する
#
# @within asset:mob/0340.twins_rubiel/tick/**

# スコアをstorageに保持
    execute store result storage asset:temp 9G.Pos.X float 0.001 run scoreboard players get @s 9G.MoveVector.X
    execute store result storage asset:temp 9G.Pos.Y float 0.001 run scoreboard players get @s 9G.MoveVector.Y
    execute store result storage asset:temp 9G.Pos.Z float 0.001 run scoreboard players get @s 9G.MoveVector.Z

# 移動実行
    function asset:mob/0340.twins_rubiel/app/general/5.teleport_using_vector_macro.m with storage asset:temp 9G.Pos

# 終了
    data remove storage asset:temp 9G.Pos
