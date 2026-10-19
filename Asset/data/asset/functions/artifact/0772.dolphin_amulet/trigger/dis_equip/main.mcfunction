#> asset:artifact/0772.dolphin_amulet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0772.dolphin_amulet/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $LG.ItemCount

# まだ持ってるか確認する
    execute store result score $LG.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:772}}}]
# なければ削除
    execute if score $LG.ItemCount Temporary matches ..0 run function asset:artifact/0772.dolphin_amulet/trigger/dis_equip/not_in_hotbar
# リセット
    scoreboard players reset $LG.ItemCount Temporary
