#> asset:object/1167.thunderflash/tick/attack/check_duplicate
#
# 
#
# @within function asset:object/1167.thunderflash/tick/attack/

# 重複チェック
    function asset:object/call.m {method:"check_duplicate"}
    execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
