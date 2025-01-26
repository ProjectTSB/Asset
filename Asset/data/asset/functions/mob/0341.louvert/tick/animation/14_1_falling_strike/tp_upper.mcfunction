#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_upper
#
# 上にTPする
#
# @within function
#   asset:mob/0341.louvert/tick/animation/14_1_falling_strike/
#   asset:mob/0341.louvert/tick/animation/15_4_final_spell_fall_strike/

# まず移動をしておく
    # マーカーを呼ぶ
        execute at @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=1] positioned ~ ~5 ~ run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 0-0-0-0-0の位置に移動
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/1.teleport
    # 演出もしておく
        function asset:mob/0341.louvert/tick/general/3.teleport_effect

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0