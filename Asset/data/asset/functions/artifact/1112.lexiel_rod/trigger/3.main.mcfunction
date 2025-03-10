#> asset:artifact/1112.lexiel_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1112.lexiel_rod/trigger/2.check_condition

#> private
# @private
    #declare tag SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:block.soul_sand.step player @a ~ ~ ~ 1.5 0.7
# 三発だす
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/1112.lexiel_rod/trigger/summon
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/1112.lexiel_rod/trigger/summon
    execute anchored eyes positioned ^-0.35 ^-0.25 ^0.5 run function asset:artifact/1112.lexiel_rod/trigger/summon
