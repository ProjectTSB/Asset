#> asset:artifact/1079.allochromatic/click/shot/recursive.m
# @input args DistanceMax: double
# @within function
#   asset:artifact/1079.allochromatic/click/shot/do
#   asset:artifact/1079.allochromatic/click/shot/recursive.m

# 演出
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.15 0 0 0 0 1
# 命中判定
    execute positioned ~-.5 ~-.5 ~-.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] at @s run return run function asset:artifact/1079.allochromatic/click/shot/hit.m with storage asset:temp TZ.Const.Damage
# 再帰
    $execute positioned ^ ^ ^0.3 if entity @s[distance=..$(DistanceMax)] run function asset:artifact/1079.allochromatic/click/shot/recursive.m with storage asset:temp TZ.Const
