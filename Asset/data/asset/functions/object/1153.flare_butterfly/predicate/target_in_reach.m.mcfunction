#> asset:object/1153.flare_butterfly/predicate/target_in_reach.m
#
#
#
# @within function asset:object/1153.flare_butterfly/predicate/target_in_reach

$execute positioned ~-1.2 ~-1.2 ~-1.2 if entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},dx=1.4,dy=1.4,dz=1.4] run return 1

return 0
