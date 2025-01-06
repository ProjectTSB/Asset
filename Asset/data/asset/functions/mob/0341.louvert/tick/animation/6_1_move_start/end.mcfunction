#> asset:mob/0341.louvert/tick/animation/6_1_move_start/end
#
# 移動と終了処理
#
# @within function asset:mob/0341.louvert/tick/animation/6_1_move_start/

# まず移動をしておく
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # Posを取り出す
        data modify entity 0-0-0-0-0 Pos set from storage asset:context this.MovePointPos
    # 0-0-0-0-0の位置に移動
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/1.teleport
    # 演出もしておく
        function asset:mob/0341.louvert/tick/general/3.teleport_effect

# アニメーション終了処理
    scoreboard players set @s 9H.AnimationNum 62
    scoreboard players set @s 9H.AnimationTick 0

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# リセット
    data remove storage asset:context this.MovePointPos