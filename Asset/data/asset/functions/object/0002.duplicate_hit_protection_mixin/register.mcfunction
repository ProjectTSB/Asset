#> asset:object/0002.duplicate_hit_protection_mixin/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なオブジェクトであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value true
# ID (int)
    data modify storage asset:object ID set value 2

# フィールド(オプション)
    data modify storage asset:object Field.DuplicateHitProtectForPlayer set value {}
    data modify storage asset:object Field.DuplicateHitProtectForNonPlayer set value {}

# How to use
# data modify storage api: Argument.Damage set value ...
# data modify storage api: Argument.AttackType set value ...
# data modify storage api: Argument.ElementType set value ...
# execute ... run function api:damage/modifier
# execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..50] run function {
#   function asset:object/call.m {method:"check_duplicate"}
#   execute if predicate asset:object/0002.duplicate_hit_protection_mixin/is_first_hit run function api:damage/
# }
# function api:damage/reset
