#> asset:mob/0392.ecual_first/ai/projectile/quietus_rain/rotate/1
#
# 回転 1段階
#
# @within function asset:mob/0392.ecual_first/ai/projectile/quietus_rain/2.tick

# 幾何学を使用して回転させる
    execute facing entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=..10,sort=nearest,limit=1] feet positioned ^ ^ ^7.5 rotated ~2 0 positioned ^ ^ ^-7.5 run tp @s ^ ^ ^ ~ ~
