#> asset:object/2112.heiloang_thunder_spin/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2112/init

# 回転
    tp @s ~ ~ ~ ~90 0

# 回転方向決定
    execute if predicate lib:random_pass_per/50 run tag @s add 2112.IsInverse
