#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/
#
# ビーム発射
#
# @within function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/

# 演出
    playsound item.spyglass.use hostile @a ~ ~ ~ 2 1.4
    playsound entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 2 0

# ループ処理
    function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/loop

# タグ外し
    tag @s remove AW.Landing
