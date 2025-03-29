#> asset:artifact/0630.ice_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0630.ice_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    particle falling_dust diamond_block ~ ~0.4 ~ 0.4 0.3 0.4 0 5 normal @a
    particle falling_dust snow_block ~ ~0.4 ~ 0.4 0.3 0.4 0 5 normal @a
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 1.2 0
