#> asset:object/1041.grand_flame/tick/vfx/landing/random.m
#
# @input args:
#   Yaw : float
#   Pitch : float
# @within function asset:object/1041.grand_flame/tick/landing

# マクロで回転し実行
    $execute rotated $(Yaw) $(Pitch) run function asset:object/1041.grand_flame/tick/vfx/landing/random
