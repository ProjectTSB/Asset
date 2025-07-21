#> asset:artifact/0986.order_of_healing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0986.order_of_healing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# VFX
    particle heart ~ ~1 ~ 0.4 0.4 0.4 1 8
# 効果付与のフラグ設定
    tag @s add RE.Equipped
