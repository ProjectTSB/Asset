#> asset:object/2019.quietus_rain/tick/rotate/3
#
# 回転3段階
#
# @within function asset:object/2019.quietus_rain/tick/

# 幾何学を使用して回転させる
    execute facing entity @e[type=marker,tag=AW.Marker.SummonPoint,distance=..25,sort=nearest,limit=1] feet positioned ^ ^ ^22.5 rotated ~2 0 positioned ^ ^ ^-22.5 run tp @s ^ ^ ^ ~ ~
