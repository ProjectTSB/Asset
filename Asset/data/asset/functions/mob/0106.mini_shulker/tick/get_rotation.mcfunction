#> asset:mob/0106.mini_shulker/tick/get_rotation
# @within function asset:mob/0106.mini_shulker/tick/target.m

summon marker ~ ~ ~ {Tags:["2Y.Rotation"]}
execute rotated ~ ~ run tp @e[type=marker,tag=2Y.Rotation,distance=..0.01,limit=1] ~ ~ ~ ~ ~
data modify storage asset:context this.Rotation set from entity @e[type=marker,tag=2Y.Rotation,distance=..0.01,limit=1] Rotation
kill @e[type=marker,tag=2Y.Rotation,distance=0.01,limit=1]
