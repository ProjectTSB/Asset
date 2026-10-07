#> asset:object/1153.flare_butterfly/predicate/target_in_range.m
#
#
#
# @within function asset:object/1153.flare_butterfly/predicate/target_in_range

$execute if entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..12] run return 1

return 0
