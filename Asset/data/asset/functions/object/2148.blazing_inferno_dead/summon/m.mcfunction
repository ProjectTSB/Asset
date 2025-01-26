#> asset:object/2148.blazing_inferno_dead/summon/m
#
# 実行時の召喚者と同じ向きになる
#
# @within function asset:object/2148.blazing_inferno_dead/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
