#> asset:object/0002.duplicate_hit_protection_mixin/reset_duplicate_protection/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2/reset_duplicate_protection

data modify storage asset:context this.DuplicateHitProtectForPlayer set value {}
data modify storage asset:context this.DuplicateHitProtectForNonPlayer set value {}
