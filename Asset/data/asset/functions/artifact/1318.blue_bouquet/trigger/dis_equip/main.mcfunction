#> asset:artifact/1318.blue_bouquet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1318.blue_bouquet/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $10M.ItemCount

# まだ持ってるか確認する
    execute store result score $10M.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1318}}}]
# なければ削除
    execute if score $10M.ItemCount Temporary matches ..0 run function asset:artifact/1318.blue_bouquet/trigger/dis_equip/not_in_hotbar
# リセット
    scoreboard players reset $10M.ItemCount Temporary
