#> asset:object/1012.traffic_sign/tick/damage/get_random.m
#
# @input args:
#   Min : int
#   Max : int
# @within function asset:object/1012.traffic_sign/tick/damage/

# ダメージ範囲を返す
    $return run random value $(Min)..$(Max)
