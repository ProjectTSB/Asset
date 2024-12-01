#> asset:mob/0213.terrible_sonic_bomber/tick/cruise_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

# 中心座標から95ブロック以上離れていた場合、中心座標に対して右に90度の角度を向ける
execute unless entity @e[tag=5X.Centre,distance=..95] facing entity @e[tag=5X.Centre,limit=1] eyes rotated ~80 ~ run tp @s ~ ~ ~ ~ ~

# 直進
tp @s ^ ^ ^3
