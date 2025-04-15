#> asset:object/1136.thor_thunder/tick/get_damage.m
#
# @input args:
#   Min : int
#   Max : int
# @within function asset:object/1136.thor_thunder/tick/damage

# ダメージ範囲を返す
    $return run random value $(Min)..$(Max)
