#> asset:object/2054.lastboss_white_pillar/tick/visual_laser
#
#
#
# @within function asset:object/2054.lastboss_white_pillar/tick/

# 演出
    playsound ogg:block.respawn_anchor.deplete2 player @a[distance=..32] ~ ~ ~ 0.5 1.0
    playsound tsb_sounds:blaster1 player @a[distance=..32] ~ ~ ~ 0.5 1.0
    particle explosion ~ ~20 ~ 0 0 0 0 1 force @a[distance=..16]

# レーザー召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[3.0f,20f,3.0f],Color:7673623,DisappearInterpolation:3,LifeTime:10}
    execute positioned ~ ~20 ~ rotated ~ 90 run function api:object/summon
