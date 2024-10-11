#> asset:object/2036.falling_pumpkin_bomb/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2036/recursive

# 演出
    particle dust 1 0.6 0 1.8 ^ ^0.4 ^ 0.05 0.05 0.05 0 1 normal @a
    particle dust 0.851 0 1 1.8 ^ ^-0.4 ^ 0.05 0.05 0.05 0 1 normal @a

# 回転

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
