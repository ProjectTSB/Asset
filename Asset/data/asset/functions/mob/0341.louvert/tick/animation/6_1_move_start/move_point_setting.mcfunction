#> asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting
#
# 移動先を指定
#
# @within function asset:mob/0341.louvert/tick/animation/6_1_move_start/

# マーカーを呼ぶ
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# スコアを設定してループ処理
    scoreboard players set $9H.Temp Temporary 8
    function asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting_loop
# Posを保存
    data modify storage asset:context this.MovePointPos set from entity 0-0-0-0-0 Pos
# 0-0-0-0-0の方を向く
    execute facing entity 0-0-0-0-0 feet run tp @s ^ ^ ^ ~ ~
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# リセット
    scoreboard players reset $9H.Temp Temporary
