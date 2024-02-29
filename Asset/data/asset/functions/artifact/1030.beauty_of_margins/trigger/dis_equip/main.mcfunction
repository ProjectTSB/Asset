#> asset:artifact/1030.beauty_of_margins/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1030.beauty_of_margins/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $SM.ItemCount

# まだ持ってるか確認する
    execute store result score $SM.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1030}}}]

# なければ削除
    execute if score $SM.ItemCount Temporary matches ..0 run function asset:artifact/1030.beauty_of_margins/trigger/dis_equip/remove_effect

# リセット
    scoreboard players reset $SM.ItemCount Temporary