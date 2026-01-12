#> asset:mob/2002.duplicate_hit_protection_mixin/check_duplicate/check_first_hit/player.m
#
#
#
# @within function asset:mob/2002.duplicate_hit_protection_mixin/check_duplicate/

$execute unless data storage asset:context this.DuplicateHitProtectForPlayer.$(ID) run scoreboard players set @s 2002.DuplicateHitProtectionMixin 1

$execute unless data storage asset:context this.DuplicateHitProtectForPlayer.$(ID) run data modify storage asset:context this.DuplicateHitProtectForPlayer.$(ID) set value true
