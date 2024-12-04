#> asset:object/2059.thunder_curtain/summon/.m
#
# マクロで召喚する
# @input args:
#   RotationX: double
#
# @within function asset:object/2059.thunder_curtain/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:[$(RotationX)f,0.0f],Tags:["ObjectInit"]}
