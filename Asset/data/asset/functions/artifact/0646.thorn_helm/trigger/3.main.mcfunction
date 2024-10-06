#> asset:artifact/0646.thorn_helm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0646.thorn_helm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0 0.2 0 1 ~ ~1.6 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:block.sweet_berry_bush.place player @a ~ ~ ~ 1 1 0
