#> asset:object/1153.flare_butterfly/predicate/near_target/neutral_near/m
#
#
#
# @within function asset:object/1153.flare_butterfly/predicate/near_target/neutral_near/

$execute if entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..10] run return 1

return 0
