#> asset:artifact/0932.equal_speed_charlie_london/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/932/dis_equip

# 移動速度上昇を削除する
    execute unless predicate asset:artifact/0932.equal_speed_charlie_london/has_higher_speed run effect clear @s speed
