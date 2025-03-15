#> asset:object/1030.barrage_spirit_bullet/kill/get_damage
#
# @input args:
#   Min : int
#   Max : int
# @within function asset:object/1030.barrage_spirit_bullet/kill/damage

$return run random value $(Min)..$(Max)
