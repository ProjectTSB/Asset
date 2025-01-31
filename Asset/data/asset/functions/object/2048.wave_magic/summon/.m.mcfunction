#> asset:object/2048.wave_magic/summon/.m
#
# マクロを使って召喚
#
# @within function asset:object/2048.wave_magic/summon/

# 元となるEntityを召喚する
    $summon marker ~ ~ ~ {Rotation:$(Rotation),Tags:["ObjectInit"]}
