#> asset:object/1205.fire_extinguisher/hit_entity/check_duplicate
#
#
#
# @within function asset:object/1205.fire_extinguisher/hit_entity/

# 既にヒットしたことあるか判定
    function asset:object/call.m {method:"check_duplicate"}
    execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function asset:object/1205.fire_extinguisher/hit_entity/damage
