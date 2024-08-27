#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotate/2
#
# 回転 2段目
#
# @within function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/2.tick

# 幾何学を使用して回転させる
    execute facing entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=..20,sort=nearest,limit=1] feet positioned ^ ^ ^15 rotated ~-2 0 positioned ^ ^ ^-15 run tp @s ^ ^ ^ ~ ~
