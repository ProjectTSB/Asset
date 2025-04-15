#> asset:artifact/1205.electric_fly_swatter/trigger/vfx
#
#
#
# @within function asset:artifact/1205.electric_fly_swatter/trigger/3.main

# 演出
    execute rotated as @p[tag=this] rotated ~ 0 anchored eyes positioned ^ ^0.6 ^ run function asset:artifact/1205.electric_fly_swatter/trigger/vfx2
    playsound block.mud.break player @a ~ ~ ~ 1.2 0.8
    playsound block.tuff.break player @a ~ ~ ~ 0.9 0.8
    playsound entity.iron_golem.hurt player @a ~ ~ ~ 0.2 2
    playsound ogg:mob.breeze.death1 player @a ~ ~ ~ 0.8 2
