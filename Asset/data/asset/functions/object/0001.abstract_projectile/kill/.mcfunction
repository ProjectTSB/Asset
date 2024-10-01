#> asset:object/0001.abstract_projectile/kill/
#
# 消失処理
#
# @within asset:object/alias/1/kill

# キル
    kill @s

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
