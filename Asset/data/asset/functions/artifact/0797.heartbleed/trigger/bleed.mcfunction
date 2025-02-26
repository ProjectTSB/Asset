#> asset:artifact/0797.heartbleed/trigger/bleed
#
# 
#
# @within function asset:artifact/0797.heartbleed/trigger/3.main

# damage
    function asset:artifact/0797.heartbleed/trigger/damage

# 敵に出血を付与
    function asset:artifact/0797.heartbleed/trigger/effect

# 血しぶき
    execute at @e[type=#lib:living,tag=M5.Victim,distance=..5] facing entity @s feet positioned ^ ^ ^0.5 run particle item redstone_block ~ ~1 ~ 0 1 0 0.15 50 force
