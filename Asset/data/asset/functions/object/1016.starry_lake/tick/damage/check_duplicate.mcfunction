#> asset:object/1016.starry_lake/tick/damage/check_duplicate
#
#
#
# @within function asset:object/1016.starry_lake/tick/damage/

# 既にヒットしていなければダメージ
   function asset:object/call.m {method:"check_duplicate"}
   execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
