#> asset:mob/0053.executioners/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/53/hurt

# DoT は受け付けないものとする
    execute if data storage asset:context Hurt{IsDoT:true} run return fail

# 確立でバックステップする
    execute if predicate lib:random_pass_per/50 run function asset:mob/0053.executioners/hurt/backstep
