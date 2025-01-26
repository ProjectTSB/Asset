#> asset:mob/0418.astro_zombie/tick/jump
#
# 
#
# @within function asset:mob/0418.astro_zombie/tick/

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 1.0 1.75
    playsound block.soul_sand.place hostile @a ~ ~ ~ 1.0 0.8

# 突進する
    data modify storage lib: Argument.VectorMagnitude set value 1
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..16,sort=nearest] feet rotated ~ ~-25 run function lib:motion/

# リセット
    data remove storage lib: Argument
