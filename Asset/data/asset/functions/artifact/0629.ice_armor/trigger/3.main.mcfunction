#> asset:artifact/0629.ice_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0629.ice_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    particle falling_dust diamond_block ~ ~1.4 ~ 0.4 0.2 0.4 0 7 normal @a
    particle falling_dust snow_block ~ ~1.4 ~ 0.4 0.2 0.4 0 7 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.2 0
