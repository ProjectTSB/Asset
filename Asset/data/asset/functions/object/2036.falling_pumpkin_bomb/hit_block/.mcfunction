#> asset:object/2036.falling_pumpkin_bomb/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2036/hit_block

# 接地Tagを付与
    tag @s add 2036.OnGround

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
