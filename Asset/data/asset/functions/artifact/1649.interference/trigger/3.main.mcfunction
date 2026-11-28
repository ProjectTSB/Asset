#> asset:artifact/1649.interference/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1649.interference/trigger/2.check_condition

#> private
# @private
    #declare score_holder $A1649.UserID
    #declare tag A1649.Reinforceable

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# 強化可能かどうか(自身が発射した、チェック済みでも強化不可でもないObject1217の存在)をチェック
    scoreboard players operation $A1649.UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=!O1217.Checked,tag=!O1217.Additional,scores={ObjectID=1217},distance=..32] if score @s O1217.UserID = $A1649.UserID Temporary run tag @s add A1649.Reinforceable

# 処理を召喚と強化で分岐
    execute unless entity @e[type=item_display,tag=A1649.Reinforceable,distance=..32] run function asset:artifact/1649.interference/trigger/summon
    execute as @e[type=item_display,tag=A1649.Reinforceable,distance=..32] if function asset:artifact/1649.interference/trigger/reinforce run tag @s remove A1649.Reinforceable

# リセット
    scoreboard players reset $A1649.UserID
