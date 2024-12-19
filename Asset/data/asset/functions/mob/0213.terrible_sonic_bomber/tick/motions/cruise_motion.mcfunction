#> asset:mob/0213.terrible_sonic_bomber/tick/motions/cruise_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
   #declare score_holder $flare_time

# 中心座標を中心に旋回
execute unless entity @e[tag=5X.Centre,distance=..95] facing entity @e[tag=5X.Centre,distance=..128,limit=1] eyes rotated ~80 0 run tp @s ~ ~ ~ ~ ~

# 直進
execute rotated as @s run tp @s ^ ^ ^3

# 対空砲付近を飛ぶときはフレアを出す(3tickおき)
execute store result score $flare_time Temporary run time query gametime
scoreboard players operation $flare_time Temporary %= $3 Const
execute if entity @e[tag=5X.Centre,distance=..60] if score $flare_time Temporary matches 0 run particle minecraft:lava ^ ^-1 ^-2 1.5 0 1.5 1 24 force

#say cruise


# reset
scoreboard players reset $flare_time Temporary
