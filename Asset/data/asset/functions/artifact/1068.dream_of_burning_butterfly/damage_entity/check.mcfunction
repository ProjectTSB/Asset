#> asset:artifact/1068.dream_of_burning_butterfly/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1068/damage_entity/check

# 体力を10以上失っているかチェックする
# ログを埋め尽くさないように発動失敗のメッセージは無い
    execute if entity @s[tag=CanUsed] unless function asset:artifact/1068.dream_of_burning_butterfly/damage_entity/check_lost_health run tag @s remove CanUsed
