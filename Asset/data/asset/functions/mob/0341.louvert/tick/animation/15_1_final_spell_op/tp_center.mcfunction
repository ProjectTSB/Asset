#> asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/tp_center
#
# 中央にTPする
#
# @within function
#   asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/
#   asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/

# まず移動をしておく
    # マーカーを呼ぶ
        execute at @e[type=marker,tag=9H.Marker.SummonPoint] positioned ~ ~2 ~ run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 0-0-0-0-0の位置に移動
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/1.teleport
    # 演出もしておく
        function asset:mob/0341.louvert/tick/general/3.teleport_effect

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
