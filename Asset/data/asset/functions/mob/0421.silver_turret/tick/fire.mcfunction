#> asset:mob/0421.silver_turret/tick/fire
#
# 召喚
#
# @within function asset:mob/0421.silver_turret/tick/

# 召喚
    data modify storage api: Argument.ID set value 422
    execute positioned ^ ^0.75 ^1 run function api:mob/summon

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1.0 1.75
    playsound block.soul_sand.place hostile @a ~ ~ ~ 1.0 0.8
    execute positioned ^ ^0.75 ^1 run particle smoke ~ ~ ~ 0.25 0.25 0.25 0.01 10

# 弾丸発射！
    data modify storage lib: Argument.VectorMagnitude set value 1.5
    execute positioned ^ ^0.75 ^1 as @e[type=silverfish,scores={MobID=422},distance=..0.01] rotated ~ ~-10 run tp @s ^ ^ ^ ~ ~
    execute positioned ^ ^0.75 ^1 as @e[type=silverfish,scores={MobID=422},distance=..0.01] rotated ~ ~-10 run function lib:motion/

# リセット
    data remove storage lib: Argument

