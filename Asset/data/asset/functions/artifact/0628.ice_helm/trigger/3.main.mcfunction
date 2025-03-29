#> asset:artifact/0628.ice_helm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0628.ice_helm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle falling_dust diamond_block ~ ~1.7 ~ 0.4 0.2 0.4 0 6 normal @a
    particle falling_dust snow_block ~ ~1.7 ~ 0.4 0.2 0.4 0 6 normal @a
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 1.2 0
