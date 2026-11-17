#> asset:object/1167.thunderflash/tick/attack/check
#
#
#
# @within function asset:object/1167.thunderflash/tick/attack/

# 重複チェック
    function asset:object/call.m {method:"check_duplicate"}
    execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function asset:object/1167.thunderflash/tick/attack/damage_range.m with storage asset:context this.Damage
