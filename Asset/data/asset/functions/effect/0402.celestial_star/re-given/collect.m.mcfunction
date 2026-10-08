#> asset:effect/0402.celestial_star/re-given/collect.m
#
# 星の座標から10m以内の生物を、1mごとの距離の帯に分けて調べ、敵と味方を帯の番号付きで対象の一覧へ積む
# 帯の境界ちょうどの対象を二重に積まないよう、帯の下限はわずかに外側へずらす
#
# @input args
#   X : double
#   Y : double
#   Z : double
# @within function asset:effect/0402.celestial_star/re-given/

    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=..1,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:1}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=1.0001..2,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:2}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=2.0001..3,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:3}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=3.0001..4,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:4}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=4.0001..5,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:5}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=5.0001..6,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:6}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=6.0001..7,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:7}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=7.0001..8,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:8}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=8.0001..9,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:9}
    $execute positioned $(X) $(Y) $(Z) as @e[type=#lib:living,distance=9.0001..10,sort=nearest] run function asset:effect/0402.celestial_star/re-given/enqueue.m {Ring:10}
