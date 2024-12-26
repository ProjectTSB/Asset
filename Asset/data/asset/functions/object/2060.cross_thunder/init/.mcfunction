#> asset:object/2060.cross_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2060/init

# 50%の確率で斜めになる
    execute if predicate lib:random_pass_per/50 run tp @s ~ ~ ~ ~45 ~
