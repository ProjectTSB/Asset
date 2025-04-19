#> asset:object/1131.red_knight_slash_shot/hit_entity/damage
#
#
#
# @within function asset:object/1131.red_knight_slash_shot/hit_entity/

function asset:object/call.m {method:"check_duplicate"}
execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
