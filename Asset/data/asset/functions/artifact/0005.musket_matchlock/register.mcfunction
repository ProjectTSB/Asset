#> asset:artifact/0005.musket_matchlock/register
#
# 神器プールへの登録処理
#
# @within tag/function asset:artifact/register

data modify storage asset:artifact RarityRegistry[1] append value [5]
data modify storage asset:artifact RarityRegistryWithColor.Red[1] append value [5]
