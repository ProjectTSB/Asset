#> asset:object/1010.fire_magic/summon/m
#
# マクロで召喚する
#
# @input args:
#   Rotation :
# @within function asset:object/1010.fire_magic/summon/

    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
