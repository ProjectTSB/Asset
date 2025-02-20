#> asset:artifact/0932.equal_speed_charlie_london/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0932.equal_speed_charlie_london/trigger/dis_equip/

#> prv
# @private
    #declare score_holder $PW.ItemNumber

# 神器ID932がホットバー内にあるか確認する。
    execute store result score $PW.ItemNumber Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:932}}}]

# ホットバー内に残ってない場合（$PW.ItemNumber<=0)移動速度を消す
    execute if score $PW.ItemNumber Temporary matches ..0 run attribute @s generic.movement_speed modifier remove 00000001-0000-0001-0000-03a400000007

# reset
    scoreboard players reset $PW.ItemNumber Temporary
