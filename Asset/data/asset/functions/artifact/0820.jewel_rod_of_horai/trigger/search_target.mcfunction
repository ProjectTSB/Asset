#> asset:artifact/0820.jewel_rod_of_horai/trigger/search_target
#
# 
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.2.set_target

# 30度の四角錐の範囲外にいる敵を除外
    execute facing entity @s feet positioned ^ ^ ^3 rotated as @p[tag=this] rotated ~30 ~ positioned ^-4 ^ ^ unless entity @p[tag=this,distance=..5] run tag @s remove MS.TargetCandidate
    execute facing entity @s feet positioned ^ ^ ^3 rotated as @p[tag=this] rotated ~-30 ~ positioned ^4 ^ ^ unless entity @p[tag=this,distance=..5] run tag @s remove MS.TargetCandidate
    execute facing entity @s feet positioned ^ ^ ^3 rotated as @p[tag=this] rotated ~ ~30 positioned ^ ^-4 ^ unless entity @p[tag=this,distance=..5] run tag @s remove MS.TargetCandidate
    execute facing entity @s feet positioned ^ ^ ^3 rotated as @p[tag=this] rotated ~ ~-30 positioned ^ ^4 ^ unless entity @p[tag=this,distance=..5] run tag @s remove MS.TargetCandidate
