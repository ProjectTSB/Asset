#> asset:object/2019.quietus_rain/tick/rotate/2
#
# 回転2段階
#
# @within function asset:object/2019.quietus_rain/tick/

# 幾何学を使用して回転させる
    execute facing entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=..20,sort=nearest,limit=1] feet positioned ^ ^ ^15 rotated ~-2 0 positioned ^ ^ ^-15 run tp @s ^ ^ ^ ~ ~
