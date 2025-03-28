#> asset:object/2239.frestchika_thunder/tick/visual_laser
#
# 演出の都合、ちょっとレーザーが速く出てくるくらいのほうがかっこよさそう
#
# @within function asset:object/2239.frestchika_thunder/tick/

# 演出
    playsound ogg:block.respawn_anchor.deplete2 player @p ~ ~ ~ 0.5 1.3
    playsound tsb_sounds:blaster1 player @p ~ ~ ~ 0.5 1.3
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..16]

# レーザー召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[2.0f,20f,2.0f],Color:6209279,DisappearInterpolation:3,LifeTime:10}
    execute positioned ~ ~20 ~ rotated ~ 90 run function api:object/summon
