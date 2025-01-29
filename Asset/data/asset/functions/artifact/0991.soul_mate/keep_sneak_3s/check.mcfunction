#> asset:artifact/0991.soul_mate/keep_sneak_3s/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/991/keep_sneak_3s/check

# メインハンドに持っていることを確認する
    function api:data_get/selected_item
    execute unless data storage api: SelectedItem.tag.TSB{ID:991} run tag @s remove CanUsed

# クールダウンチェック
    execute if score @s RJ.Cooldown matches 1.. run tag @s remove CanUsed
