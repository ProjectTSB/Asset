#> asset:artifact/1111.rod_o_redeem/register
#
# 神器プールへの登録処理
#
# @within tag/function asset:artifact/register

data modify storage asset:artifact RarityRegistry[3] append value [1111]
data modify storage asset:artifact RarityRegistryWithColor.Green[3] append value [1111]
