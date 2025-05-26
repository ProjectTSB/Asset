#> asset:artifact/1079.allochromatic/click/shot/
#
# 射撃
#
# @within function asset:artifact/1079.allochromatic/click/3.main

# 手元から発砲する
    execute if function asset:artifact/1079.allochromatic/predicate/from_mainhand anchored eyes positioned ^-.35 ^-.15 ^0.5 run function asset:artifact/1079.allochromatic/click/shot/do
    execute unless function asset:artifact/1079.allochromatic/predicate/from_mainhand anchored eyes positioned ^0.35 ^-.15 ^0.5 run function asset:artifact/1079.allochromatic/click/shot/do
# 反動
# 共鳴がある場合軽減
    execute unless function asset:artifact/1079.allochromatic/predicate/has_resonance run tp @s ~ ~ ~ ~ ~-4.5
    execute if function asset:artifact/1079.allochromatic/predicate/has_resonance run tp @s ~ ~ ~ ~ ~-1.5
