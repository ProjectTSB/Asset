#> asset:artifact/0322.ice_cane/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/322/click/check

# ブロック破壊可能エリアでのみ使用可能
    execute unless predicate api:area/is_breakable run tag @s remove CanUsed
    execute unless predicate api:area/is_breakable run function lib:message/artifact/can_not_use_here
