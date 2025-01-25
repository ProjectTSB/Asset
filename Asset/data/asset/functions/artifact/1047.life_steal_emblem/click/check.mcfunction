#> asset:artifact/1047.life_steal_emblem/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1047/click/check


# CanUsedなら体力割合をチェックする
    execute if entity @s[tag=CanUsed] run function asset:artifact/1047.life_steal_emblem/click/check/check_health_per
