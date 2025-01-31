#> asset:object/1039.thelema_persuit_entity/summon/.m
#
# マクロを使って召喚する
#
# @input args:
#   RotationX : float
# @within function asset:object/1039.thelema_persuit_entity/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:[$(RotationX)f,0.0f]}
