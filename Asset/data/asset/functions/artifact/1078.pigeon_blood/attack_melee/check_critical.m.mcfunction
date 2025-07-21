#> asset:artifact/1078.pigeon_blood/attack_melee/check_critical.m
#
# クリティカル判定
#
# @input args CriticalPercentage: int
# @within function asset:artifact/1078.pigeon_blood/attack_melee/3.main

$execute if predicate lib:random_pass_per/$(CriticalPercentage) run data modify storage asset:temp TY.Critical set value 1b
