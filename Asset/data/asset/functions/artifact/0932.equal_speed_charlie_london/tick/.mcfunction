#> asset:artifact/0932.equal_speed_charlie_london/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/932/tick/

# 移動速度上昇を付与する
    execute unless predicate asset:artifact/0932.equal_speed_charlie_london/has_higher_speed run effect give @s speed 1 0 true
