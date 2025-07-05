#> asset:mob/0089.decapitation/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/89/hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# 一定確率でダメージを受けて骨を落とす
    execute if predicate lib:random_pass_per/5 run function asset:mob/0089.decapitation/hurt/bone_drop

# 被ダメ時に加速
    effect give @s speed 1 2 true
