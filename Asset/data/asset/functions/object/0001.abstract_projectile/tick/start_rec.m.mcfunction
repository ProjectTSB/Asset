#> asset:object/0001.abstract_projectile/tick/start_rec.m
#
#
#
# @input args
#   MovePerStep: int
# @within function asset:object/0001.abstract_projectile/tick/

# Speed を MoveCount に移す
    data modify storage asset:temp MoveCount set from storage asset:context this.Speed
# 再帰的に飛ばす
    $execute positioned ^ ^ ^$(MovePerStep) run function asset:object/0001.abstract_projectile/tick/rec.m with storage asset:context this
# リセット
    data remove storage asset:temp MoveCount
