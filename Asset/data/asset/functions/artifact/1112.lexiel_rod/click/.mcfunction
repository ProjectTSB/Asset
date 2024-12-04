#> asset:artifact/1112.lexiel_rod/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1112/click/

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:block.soul_sand.step player @a ~ ~ ~ 1.5 0.7
# 三発だす
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/1112.lexiel_rod/click/summon
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/1112.lexiel_rod/click/summon
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/1112.lexiel_rod/click/summon
