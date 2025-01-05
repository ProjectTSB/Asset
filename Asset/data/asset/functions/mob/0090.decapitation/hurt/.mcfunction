#> asset:mob/0090.decapitation/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/90/hurt

# 一定確率でダメージを受けて骨を落とす
    execute if predicate lib:random_pass_per/30 run function asset:mob/0090.decapitation/hurt/3.bone_drop

# 被ダメ時に加速
    effect give @s speed 1 2 true
