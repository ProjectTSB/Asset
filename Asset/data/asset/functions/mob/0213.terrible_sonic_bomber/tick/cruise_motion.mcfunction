#> asset:mob/0213.terrible_sonic_bomber/tick/cruise_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

# 中心座標を中心に旋回
execute unless entity @e[tag=5X.Centre,distance=..95] facing entity @e[tag=5X.Centre,distance=..128,limit=1] eyes rotated ~80 0 run tp @s ~ ~ ~ ~ ~

# 直進
execute at @s run tp @s ^ ^ ^3

#say cruise
