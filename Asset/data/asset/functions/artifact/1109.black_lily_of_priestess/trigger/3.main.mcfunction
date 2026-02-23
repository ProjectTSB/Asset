#> asset:artifact/1109.black_lily_of_priestess/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1109.black_lily_of_priestess/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    #playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.4 2
    particle minecraft:dust_color_transition 0.4 0 0 1 0. 0 0 ~ ~1.2 ~ 1.5 1 1.5 0 60
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.2 1.4
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.2 1.2
    playsound minecraft:weather.rain.above player @a ~ ~ ~ 0.2 0.8

# エフェクト
    function asset:artifact/1109.black_lily_of_priestess/trigger/effect
