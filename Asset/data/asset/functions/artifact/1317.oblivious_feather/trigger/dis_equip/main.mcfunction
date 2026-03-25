#> asset:artifact/1317.oblivious_feather/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1317.oblivious_feather/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $10L.ItemCount

# まだ持ってるか確認する
    execute store result score $10L.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1317}}}]
# なければ削除
    execute if score $10L.ItemCount Temporary matches ..0 run function asset:artifact/1317.oblivious_feather/trigger/dis_equip/not_in_hotbar
# リセット
    scoreboard players reset $10L.ItemCount Temporary
