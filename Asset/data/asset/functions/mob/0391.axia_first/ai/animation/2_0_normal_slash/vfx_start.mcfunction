#> asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx_start
#
# 斬撃フレイム 角度設定
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/
#   asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/

# 演出
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 演出のためにランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..35999
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value 0..35999
    # 球体演出
        execute at 0-0-0-0-0 positioned ~ ~1 ~ run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx
    # マーカーを呼ぶ
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 演出のためにランダムな方向を向かせる
        execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..35999
        execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value 0..35999
    # 球体演出
        execute at 0-0-0-0-0 positioned ~ ~1 ~ run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx
    # マーカーを戻してあげる
        execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
