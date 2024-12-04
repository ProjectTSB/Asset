#> asset:artifact/1068.dream_of_burning_butterfly/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1068/damage_entity/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 体力を10以上失っているかチェックする
    execute if entity @s[tag=CanUsed] run function asset:artifact/1068.dream_of_burning_butterfly/damage_entity/check/check_lost_health

# ログを埋め尽くさないように発動失敗のメッセージは無い

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1068.dream_of_burning_butterfly/damage_entity/

# リセット