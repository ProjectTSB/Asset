#> asset:object/0002.duplicate_hit_protection_mixin/check_duplicate/check_first_hit_for_player.m
# @input args
#   ID: int
# @within function asset:object/0002.duplicate_hit_protection_mixin/check_duplicate/

$execute unless data storage asset:context this.DuplicateHitProtectForPlayer.$(ID) run scoreboard players set @s 0002.DuplicateHitProtectionMixin 1

$execute unless data storage asset:context this.DuplicateHitProtectForPlayer.$(ID) run data modify storage asset:context this.DuplicateHitProtectForPlayer.$(ID) set value true
