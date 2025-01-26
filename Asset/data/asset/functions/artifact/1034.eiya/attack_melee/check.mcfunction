#> asset:artifact/1034.eiya/attack_melee/check
#
# 神器の条件確認処理
#
# @within function asset:artifact/alias/1034/attack_melee/check

# 現在MPの10×1.2倍を取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP 12
