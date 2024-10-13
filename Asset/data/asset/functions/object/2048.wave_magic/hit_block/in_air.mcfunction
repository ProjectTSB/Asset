#> asset:object/2048.wave_magic/hit_block/in_air
#
#
#
# @within function asset:object/2048.wave_magic/hit_block/

    execute facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    data modify storage asset:context this.MovePerStep set value 0.4
    tag @s add 2048.OnGround
