#> asset:object/1147.sapphirus_resonance/tick/attack/recursive.m
# @input args DistanceMax: double
# @within function
#   asset:object/1147.sapphirus_resonance/tick/attack/
#   asset:object/1147.sapphirus_resonance/tick/attack/recursive.m

# 演出
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.15 0 0 0 0 1
# 命中判定
    execute positioned ~-.5 ~-.5 ~-.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] at @s run return run function asset:object/1147.sapphirus_resonance/tick/attack/hit
# 再帰
    $execute positioned ^ ^ ^0.3 if entity @s[distance=..$(DistanceMax)] run function asset:object/1147.sapphirus_resonance/tick/attack/recursive.m with storage asset:context this
