#> asset:mob/0086.cross_thunder/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0086.cross_thunder/_/init

# 50%の確率で斜めになる
    execute if predicate lib:random_pass_per/50 run tp @s ~ ~ ~ ~45 ~
