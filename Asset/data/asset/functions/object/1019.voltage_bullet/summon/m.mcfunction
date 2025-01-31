#> asset:object/1019.voltage_bullet/summon/m
#
# マクロで召喚する
#
# @input args:
#   Rotation :
# @within function asset:object/1019.voltage_bullet/summon/

    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
