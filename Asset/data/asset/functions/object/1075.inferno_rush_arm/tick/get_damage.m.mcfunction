#> asset:object/1075.inferno_rush_arm/tick/get_damage.m
#
# @input args:
#   Min : int
#   Max : int
# @within function asset:object/1075.inferno_rush_arm/tick/hit

# ダメージを取得
    $return run random value $(Min)..$(Max)
