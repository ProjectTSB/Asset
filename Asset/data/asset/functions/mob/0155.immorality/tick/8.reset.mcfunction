#> asset:mob/0155.immorality/tick/8.reset
#
# リセット処理
#
# @within function asset:mob/0155.immorality/tick/2.tick

#> Private
# @private
    #declare score_holder $RandomDamage

# 自身のNoAIを解除
    data modify entity @s NoAI set value 0b

# 次に攻撃するタイミングをランダムにする
# 疑似乱数取得
    execute store result score $RandomDamage Temporary run function lib:random/
# 剰余算する
    scoreboard players operation $RandomDamage Temporary %= $11 Const
# スコアセット
    scoreboard players operation @s 4B.ShotTime = $RandomDamage Temporary

# リセット処理
    scoreboard players reset $RandomDamage Temporary