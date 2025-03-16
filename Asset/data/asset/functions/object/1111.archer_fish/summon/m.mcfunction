#> asset:object/1111.archer_fish/summon/m
#
#
#
# @within function asset:object/1111.archer_fish/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Rotation:$(Rotation),teleport_duration:1,Tags:["ObjectInit","Uninterferable","Friend"],item:{id:"stick",Count:1b,tag:{CustomModelData:$(CMD)}}}
