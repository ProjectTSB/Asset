#> asset:artifact/1615.ema_of_abundance/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1615.ema_of_abundance/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $18V.ItemCount

# まだ持ってるか確認する
    execute store result score $18V.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1615}}}]
# なければ削除
    execute if score $18V.ItemCount Temporary matches ..0 run function asset:artifact/1615.ema_of_abundance/trigger/dis_equip/not_in_hotbar
# リセット
    scoreboard players reset $18V.ItemCount Temporary
