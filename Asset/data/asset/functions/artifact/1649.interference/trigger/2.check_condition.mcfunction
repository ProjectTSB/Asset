#> asset:artifact/1649.interference/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1649.interference/trigger/1.trigger

#> private
# @within function asset:artifact/1649.interference/trigger/*
    #declare score_holder $UserID

# 既に自身が発射した、強化済みでないObject1217が存在するなら強化
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=!1217.Checked,scores={ObjectID=1217},distance=..32] if score @s 1217.UserID = $UserID Temporary run function asset:artifact/1649.interference/trigger/reinforce

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1649.interference/trigger/3.main
