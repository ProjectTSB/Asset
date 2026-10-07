#> asset:artifact/1430.shield_of_fate/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1430.shield_of_fate/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $13Q.ItemCount

# まだ持っているか確認 
    execute store result score $13Q.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1430}}}]

# なければ削除
    execute if score $13Q.ItemCount Temporary matches ..0 run function asset:artifact/1430.shield_of_fate/trigger/dis_equip/remove_modifier

# リセット
    scoreboard players reset $13Q.ItemCount Temporary
