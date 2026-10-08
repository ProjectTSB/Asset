#> asset:effect/0402.celestial_star/tick/vfx/ring.m
#
# 星の座標を中心に、指定した角度だけ回した範囲の目印を描く
#
# @input args
#   X : double
#   Y : double
#   Z : double
#   RingYaw : float
# @within function asset:effect/0402.celestial_star/tick/vfx/

    $execute positioned $(X) $(Y) $(Z) rotated $(RingYaw) 0 run function asset:effect/0402.celestial_star/tick/vfx/ring_markers
