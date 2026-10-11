#> asset:object/1200.starlight_circle/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1200/init

# 回転方向を50%の確率で反転する
    execute if predicate lib:random_pass_per/50 run data modify storage asset:context this.LeftRotate set value true
