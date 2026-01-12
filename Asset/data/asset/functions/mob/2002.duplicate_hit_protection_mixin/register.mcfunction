#> asset:mob/2002.duplicate_hit_protection_mixin/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/2002/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value 2002
# フィールド(オプション)
    data modify storage asset:mob Field.DuplicateHitProtectForPlayer set value {}
    data modify storage asset:mob Field.DuplicateHitProtectForNonPlayer set value {}

# How to use
# data modify storage api: Argument.Damage set value ...
# data modify storage api: Argument.AttackType set value ...
# data modify storage api: Argument.ElementType set value ...
# execute ... run function api:damage/modifier
# execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..50] run function {
#   function asset:mob/call.m {method:"check_duplicate"}
#   execute if predicate asset:mob/2002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
# }
# function api:damage/reset
