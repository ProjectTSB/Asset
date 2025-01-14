#> asset:mob/0213.terrible_sonic_bomber/tick/motions/cruise_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
    #declare score_holder $flare_time

# 中心座標を中心に旋回
    execute unless entity @e[tag=5X.Centre,distance=..50] facing entity @e[tag=5X.Centre,distance=..128,limit=1] eyes rotated ~80 0 run tp @s ~ ~ ~ ~ ~

# 直進
    execute rotated as @s run tp @s ^ ^ ^1.5

# 攻撃後などで低空にいた場合は上昇
    execute at @e[tag=5X.Centre,distance=..128,limit=1] positioned ~-100 ~15 ~-100 if entity @s[dx=199,dy=-100,dz=199] at @s run tp @s ~ ~0.5 ~

# 対空砲付近を飛ぶときはフレアを出す(3tickおき)
    execute store result score $flare_time Temporary run time query gametime
    scoreboard players operation $flare_time Temporary %= $3 Const
    execute if entity @e[tag=5X.Centre,distance=..30] if score $flare_time Temporary matches 0 run particle minecraft:lava ^ ^-1 ^-2 1.5 0 1.5 1 24 force
        #say cruise

# reset
    scoreboard players reset $flare_time Temporary
