#> asset:object/0001.abstract_projectile/detect_hit_block/
#
# ブロックへの接触を判定: デフォルトではno_collisionじゃないのにぶつかったら消える
#
# @within asset:object/alias/1/detect_hit_block

# 判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:object/call.m {method:hit_block}

# 実装フラグを立てる
   data modify storage asset:object Implement set value true
