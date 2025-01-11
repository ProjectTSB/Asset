#> asset:object/1049.lexiel_rod_fireball/summon/macro.m
#
#
#
# @within function asset:object/1049.lexiel_rod_fireball/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {billboard:"fixed",teleport_duration:1,Tags:["ObjectInit"],item:{id:"minecraft:fire_charge",Count:1b},Rotation:$(Rotation)}
