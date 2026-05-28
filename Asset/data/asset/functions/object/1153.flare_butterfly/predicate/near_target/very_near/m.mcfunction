#> asset:object/1153.flare_butterfly/predicate/near_target/very_near/m
#
#
#
# @within function asset:object/1153.flare_butterfly/predicate/near_target/very_near/

$execute positioned ~-1.2 ~-1.2 ~-1.2 if entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},dx=1.4,dy=1.4,dz=1.4] run return 1

return 0
