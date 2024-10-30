#> asset:artifact/1122.guardian_ironlump/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1122.guardian_ironlump/trigger/dis_equip/

#> private
# @private
    #declare score_holder $ItemCount

# ここから先は神器側の効果の処理を書く

# 神器ID930がホットバー内にあるか確認する。
    execute store result score $ItemCount Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1122}}}]

# ホットバー内に残ってない場合、削除する。
    execute if score $ItemCount Temporary matches ..0 run function asset:artifact/1122.guardian_ironlump/trigger/removal

# リセット
    scoreboard players reset $ItemCount Temporary
