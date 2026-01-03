#> asset:object/1041.grand_flame/hit/vfx/random.m
#
# @input args:
#   Yaw : float
#   Pitch : float
# @within function asset:object/1041.grand_flame/hit/

# マクロで回転し実行
    $execute rotated $(Yaw) $(Pitch) run function asset:object/1041.grand_flame/hit/vfx/random
