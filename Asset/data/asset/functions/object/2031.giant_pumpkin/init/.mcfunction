#> asset:object/2031.giant_pumpkin/init/
#
# Objectのinit時の処理
#
# @within function asset:object/alias/2031/init

    function asset:object/super.init

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
