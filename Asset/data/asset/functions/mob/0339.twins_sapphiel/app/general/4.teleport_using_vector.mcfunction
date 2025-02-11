#> asset:mob/0339.twins_sapphiel/app/general/4.teleport_using_vector
#
# 汎用処理 スコアのベクトルを利用して移動する
#
# @within asset:mob/0339.twins_sapphiel/tick/**

# スコアをstorageに保持
    execute store result storage asset:temp 9F.Pos.X float 0.001 run scoreboard players get @s 9F.MoveVector.X
    execute store result storage asset:temp 9F.Pos.Y float 0.001 run scoreboard players get @s 9F.MoveVector.Y
    execute store result storage asset:temp 9F.Pos.Z float 0.001 run scoreboard players get @s 9F.MoveVector.Z

# 移動実行
    function asset:mob/0339.twins_sapphiel/app/general/5.teleport_using_vector_macro.m with storage asset:temp 9F.Pos

# 終了
    data remove storage asset:temp 9F
