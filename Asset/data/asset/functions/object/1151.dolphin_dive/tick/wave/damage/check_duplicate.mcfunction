#> asset:object/1151.dolphin_dive/tick/wave/damage/check_duplicate
#
#
#
# @within function asset:object/1151.dolphin_dive/tick/wave/damage/*

# 既にヒットしていなければダメージとモーション
   function asset:object/call.m {method:"check_duplicate"}
   execute unless predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run return fail

# ダメージ
    function api:damage/

# モーション
    execute if entity @s[tag=!Immovable] facing entity @s feet rotated ~ -30 run function lib:motion/
