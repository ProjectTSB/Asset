#> asset:object/1087.spinnrade/recursive/homing/check_target.m
#
#
#
# @within function asset:object/1087.spinnrade/recursive/homing/

$tag @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},distance=..30] add 1087.TargetCandidate
