#> asset:artifact/1137.over_pulse_headgear/give/model_num/string.m
#
#
#
# @input args ModelNum : int
# @within function asset:artifact/1137.over_pulse_headgear/give/model_num/

$execute if score $VL.ModelNum Temporary matches ..9 run data modify storage asset:artifact Lore append value '{"text":"─ PA-0$(ModelNum)F 起動。","color":"gray","italic":true}'
$execute if score $VL.ModelNum Temporary matches 10.. run data modify storage asset:artifact Lore append value '{"text":"─ PA-$(ModelNum)F 起動。","color":"gray","italic":true}'
