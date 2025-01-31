#> asset:mob/0341.louvert/tick/animation/10_1_counter/tp
#
# 眼の前にTP
#
# @within function asset:mob/0341.louvert/tick/animation/10_1_counter/

# まず移動をしておく
    # マーカーを呼ぶ
        execute at @a[tag=!PlayerShouldInvulnerable,distance=..100] rotated ~ 0 positioned ^ ^ ^2 facing ^ ^ ^-1 run tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 0-0-0-0-0の位置に移動
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/1.teleport
    # 演出もしておく
        function asset:mob/0341.louvert/tick/general/3.teleport_effect

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0