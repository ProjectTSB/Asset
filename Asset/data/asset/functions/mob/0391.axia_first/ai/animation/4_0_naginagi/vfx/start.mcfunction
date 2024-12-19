#> asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/start
#
# なぎなぎフレイム角度調整
#
# @within function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/

# 演出
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 演出のためにランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at 0-0-0-0-0 positioned ~ ~1 ~ run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 演出のためにランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at 0-0-0-0-0 positioned ~ ~1 ~ run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/
    # 演出のためにランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run function lib:random/
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at 0-0-0-0-0 positioned ~ ~1 ~ run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/
    # マーカーを戻してあげる
        execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
