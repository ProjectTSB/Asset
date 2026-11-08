#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/save_rotation
#
#
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/first_tick
#   asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/motion

#> Private
# @private
    #declare tag RotationMarker

    summon marker ~ ~ ~ {Tags:["RotationMarker"]}
    execute as @e[type=marker,tag=RotationMarker,distance=..0.01] run tp @s ~ ~ ~ ~ ~
    data modify storage asset:context this.SavedRotation0 set from entity @e[type=marker,tag=RotationMarker,distance=..0.01,limit=1] Rotation[0]
    kill @e[type=marker,tag=RotationMarker,distance=..0.01]
