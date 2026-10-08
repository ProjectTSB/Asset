#> asset:effect/0402.celestial_star/tick/vfx/center.m
#
# 星の座標から高さだけをずらした位置に、中央の球と周りを漂う光を描く
#
# @input args
#   X : double
#   Y : double
#   Z : double
#   Bob : int (-90〜90の角度)
#   Spread : double
# @within function asset:effect/0402.celestial_star/tick/vfx/

# 向きを180度反転して0.125mずつ2回進み、水平方向の移動を打ち消して高さだけを -0.25sin(Bob) m ずらす
    $execute positioned $(X) $(Y) $(Z) rotated 0 $(Bob) positioned ^ ^ ^0.125 rotated 180 $(Bob) positioned ^ ^ ^0.125 run particle dust 0.82 0.9 1 0.6 ~ ~ ~ $(Spread) $(Spread) $(Spread) 0 12
    $execute positioned $(X) $(Y) $(Z) rotated 0 $(Bob) positioned ^ ^ ^0.125 rotated 180 $(Bob) positioned ^ ^ ^0.125 run function asset:effect/0402.celestial_star/tick/vfx/bugs
