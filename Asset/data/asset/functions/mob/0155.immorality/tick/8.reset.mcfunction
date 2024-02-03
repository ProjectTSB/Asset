#> asset:mob/0155.immorality/tick/8.reset
#
# リセット処理
#
# @within function asset:mob/0155.immorality/tick/2.tick

#> Private
# @private
    #declare score_holder $Random
    #declare score_holder $DivisionValue

# 自身のNoAIを解除
    data modify entity @s NoAI set value 0b

# 次に攻撃するタイミングをランダムにする
# 難易度で剰余の範囲が変動する
    execute if predicate api:global_vars/difficulty/max/normal run scoreboard players set $DivisionValue Temporary 11
    execute if predicate api:global_vars/difficulty/min/hard run scoreboard players set $DivisionValue Temporary 26

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# 剰余算する
    scoreboard players operation $Random Temporary %= $DivisionValue Temporary
# スコアセット
    scoreboard players operation @s 4B.ShotTime = $Random Temporary
    scoreboard players remove @s 4B.ShotTime 80

# リセット処理
    scoreboard players reset $Random Temporary
    scoreboard players reset $DivisionValue Temporary