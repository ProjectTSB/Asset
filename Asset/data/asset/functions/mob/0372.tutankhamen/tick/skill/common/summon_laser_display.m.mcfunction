#> asset:mob/0372.tutankhamen/tick/skill/common/summon_laser_display.m
#
# レーザー用displayを召喚
#
# @input args:
#   Rotation : double @ 2
# @within function asset:mob/0372.tutankhamen/tick/skill/**

# 召喚
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),teleport_duration:1,brightness:{sky:15,block:15},Tags:["AC.LaserDisplay"],item:{id:"cyan_stained_glass_pane",Count:1b},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.05f,0.05f,500f]}}
