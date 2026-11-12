#> asset:artifact/1422.overhauled_toaster/using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1422.overhauled_toaster/using_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# パンを1個消費
    clear @s bread 1

# チャージ用エフェクト
    function asset:artifact/1422.overhauled_toaster/using_item/charge/update.m {Stack:1,Pitch:1.7}
