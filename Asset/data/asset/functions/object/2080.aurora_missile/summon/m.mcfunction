#> asset:object/2080.aurora_missile/summon/m
#
# マクロを使って召喚する
#
# @input args:
#   Rotation : float @ 2
# @within function asset:object/2080.aurora_missile/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Tags:["ObjectInit"],Rotation:$(Rotation)}
