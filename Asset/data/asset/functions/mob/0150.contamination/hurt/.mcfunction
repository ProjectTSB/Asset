#> asset:mob/0150.contamination/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/150/hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# 確率で召喚
    execute if predicate lib:random_pass_per/20 unless entity @e[type=marker,scores={ObjectID=2072},distance=..3,limit=1] run function asset:mob/0150.contamination/gus_summon
