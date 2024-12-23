#> asset:object/2019.quietus_rain/tick/rotate/1
#
# 回転1段階
#
# @within function asset:object/2019.quietus_rain/tick/

# 幾何学を使用して回転させる
    execute facing entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=..10,sort=nearest,limit=1] feet positioned ^ ^ ^7.5 rotated ~2 0 positioned ^ ^ ^-7.5 run tp @s ^ ^ ^ ~ ~
