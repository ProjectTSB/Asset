#> asset:object/2048.wave_magic/tick/vfx
#
# vfx
#
# @within function asset:object/2048.wave_magic/tick/on_ground

# 演出用Obj召喚
    data modify storage api: Argument.ID set value 2256
    function api:object/summon

# 演出
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.4 1 0
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.4 0.5 0
