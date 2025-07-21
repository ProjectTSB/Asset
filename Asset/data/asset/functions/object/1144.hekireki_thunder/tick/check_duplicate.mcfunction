#> asset:object/1144.hekireki_thunder/tick/check_duplicate
#
#
#
# @within function asset:object/1144.hekireki_thunder/tick/thunder

# 既にヒットしていなければダメージ
   function asset:object/call.m {method:"check_duplicate"}
   execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
