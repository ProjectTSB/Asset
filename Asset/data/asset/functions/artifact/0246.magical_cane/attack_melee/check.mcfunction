#> asset:artifact/0246.magical_cane/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/246/attack_melee/check

# 使用時のMPの数値によって演出がかわるよ
    function api:mp/get_current
    execute store result score $MagicalCane Temporary run data get storage api: Return.CurrentMP
