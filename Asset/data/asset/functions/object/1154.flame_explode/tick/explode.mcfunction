#> asset:object/1154.flame_explode/tick/explode
#
#
#
# @within function asset:object/1154.flame_explode/tick/

execute rotated ~90 25 run function asset:object/1154.flame_explode/tick/vfx/2
execute rotated ~90 -25 run function asset:object/1154.flame_explode/tick/vfx/2

playsound entity.blaze.shoot neutral @a ~ ~ ~ 0.7 0.8
playsound block.fire.ambient neutral @a ~ ~ ~ 0.7 0.8
