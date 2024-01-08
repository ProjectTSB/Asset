#> asset:artifact/1055.compass_of_sea_abyss/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1055.compass_of_sea_abyss/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $TB.ItemCount

# まだ持ってるか確認する
    execute store result score $TB.ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1055}}}]

# なければ削除
    execute if score $TB.ItemCount Temporary matches ..0 run function asset:artifact/1055.compass_of_sea_abyss/trigger/dis_equip/remove_modifier

# リセット
    scoreboard players reset $TB.ItemCount Temporary