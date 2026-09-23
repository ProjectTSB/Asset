#> asset:object/1161.ice_brand_arts/summon/m
#
#
#
# @within function asset:object/1161.ice_brand_arts/summon/


# 召喚
$summon item_display ~ ~ ~ {Rotation:$(Rotation),view_range:100f,teleport_duration:2,Tags:["ObjectInit"],Passengers:[{id:"minecraft:interaction",width:1f,height:2f,Tags:["AutoKillWhenDieVehicle","ProcessCommonTag","Weapon_$(Weapon)"]}],transformation:{left_rotation:$(LeftRotation),right_rotation:[0f,0f,2.5f,1f],translation:[0f,0.6f,0f],scale:[0.2f,0.2f,0.2f]},item:{id:"$(Id)",Count:1b,tag:{CustomModelData:$(Model)}}}
