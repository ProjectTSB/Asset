#> asset:object/2279.magic_circle/tick/spin/merge.m
#
# 回転とScale、補間設定を各面へ一度で反映する
#
# @input args
#   Front : compound
#   Back : compound
# @within function asset:object/2279.magic_circle/tick/spin/apply

$data merge entity @s $(Front)
$execute on passengers run data merge entity @s $(Back)
