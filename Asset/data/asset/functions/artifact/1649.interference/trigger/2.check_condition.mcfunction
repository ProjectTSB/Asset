#> asset:artifact/1649.interference/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1649.interference/trigger/1.trigger

#> private
# @within function asset:artifact/1649.interference/trigger/*
    #declare score_holder $A1649.UserID

# 既に自身が発射した、強化済みでないObject1217が存在するなら強化し、処理をキャンセル
    scoreboard players operation $A1649.UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=!O1217.Checked,scores={ObjectID=1217},distance=..32] if score @s O1217.UserID = $A1649.UserID Temporary run return run function asset:artifact/1649.interference/trigger/reinforce

# リセット
    scoreboard players reset $A1649.UserID

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1649.interference/trigger/3.main
