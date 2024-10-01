#> asset:object/0001.abstract_projectile/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1/hit_block

# 消失
    function asset:object/call.m {method:kill}

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
