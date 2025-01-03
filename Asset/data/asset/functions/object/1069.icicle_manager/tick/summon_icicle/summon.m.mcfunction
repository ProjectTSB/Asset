#> asset:object/1069.icicle_manager/tick/summon_icicle/summon.m
#
#
#
# @input args
#   OffsetX: double
#   OffsetZ: double
# @within function asset:object/1069.icicle_manager/tick/summon_icicle/

data modify storage api: Argument.ID set value 1068
data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.DamagePerHit
data modify storage api: Argument.FieldOverride.UserID set from storage asset:context this.UserID
data modify storage api: Argument.FieldOverride.WaitingTick set from storage asset:context this.WaitingTick
$execute positioned ^$(OffsetX) ^ ^$(OffsetZ) rotated ~ 90 run function api:object/summon
