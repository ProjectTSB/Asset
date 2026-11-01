#> asset:artifact/1606.dimension_knife/dis_equip/2.main
#
#
#
# @within function asset:artifact/1606.dimension_knife/dis_equip/1.trigger

#> prv
# @private
    #declare score_holder $ItemCount

# まだ持ってるか確認する
    execute store result score $ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1606}}}]
# なければ削除
    execute if score $ItemCount Temporary matches ..0 run function asset:artifact/1606.dimension_knife/dis_equip/remove_buff
# リセット
    scoreboard players reset $ItemCount Temporary
