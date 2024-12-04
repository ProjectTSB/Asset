#> asset:artifact/0064.kenpo_scroll/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/64/attack_melee/check

# メインハンドにアイテムを所持していない場合のみ実行
    function api:data_get/selected_item
    execute if data storage api: SelectedItem run tag @s remove CanUsed
