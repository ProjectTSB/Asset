#> asset:object/1050.call_fulstuka/summon/macro.m
#
# マクロで召喚
#
# @input args:
#   RotationX : float
# @within function asset:object/1050.call_fulstuka/summon/

$summon armor_stand ~ ~ ~ {Tags:["ObjectInit","Friend"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20194}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20196}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20190}}],Rotation:[$(RotationX)f,0.0f]}
