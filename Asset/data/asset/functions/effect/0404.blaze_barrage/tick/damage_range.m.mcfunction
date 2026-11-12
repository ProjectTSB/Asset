#> asset:effect/0404.blaze_barrage/tick/damage_range.m
#
# @input args:
#   Min : int
#   Max : int
# @within function asset:effect/0404.blaze_barrage/tick/summon_object

# ダメージ範囲返す
    $return run random value $(Min)..$(Max)
