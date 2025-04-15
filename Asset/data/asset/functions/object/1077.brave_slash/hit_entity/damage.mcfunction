#> asset:object/1077.brave_slash/hit_entity/damage
#
#
#
# @within function asset:object/1077.brave_slash/hit_entity/

function asset:object/call.m {method:"check_duplicate"}
execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
