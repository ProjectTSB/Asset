#> asset:object/2104.lexiel_laser/tick/shot
#
#
#
# @within function asset:object/2104.lexiel_laser/tick/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
    particle explosion ~ ~ ~ 0 0 0 0 1
    particle wax_off ~ ~5 ~ 0.2 10 0.2 0 100

    data modify entity @s start_interpolation set value 0
    data modify entity @s transformation.scale set value [0.5f,20f,0.5f]
