#> asset:artifact/0976.brave_sword/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/976/click/check

# 次の段階までの待機時間のスコア
# 差が規定値以上ならAttackCountをリセットする
    execute store result score $R4.Temp Temporary run data get storage global Time
    scoreboard players operation $R4.Temp Temporary -= @s R4.LatestUseTick
    execute unless score $R4.Temp Temporary matches ..30 run scoreboard players reset @s R4.Combo
    scoreboard players reset $R4.Temp Temporary

# コンボフィニッシュを出したあとは、前回の使用時とのTickの差が13Tick以上でないと使用処理がキャンセルされる
    execute if score @s R4.Combo matches 3.. unless score $R4.Temp Temporary matches 13.. run tag @s remove CanUsed
    execute if score @s R4.Combo matches 3.. unless score $R4.Temp Temporary matches 13.. run scoreboard players reset $R4.Temp Temporary
    execute if score @s R4.Combo matches 3.. if score $R4.Temp Temporary matches 13.. run scoreboard players reset @s R4.Combo
