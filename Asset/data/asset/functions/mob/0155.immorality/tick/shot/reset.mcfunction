#> asset:mob/0155.immorality/tick/shot/reset
#
# リセット処理
#
# @within function asset:mob/0155.immorality/tick/

# 自身のNoAIを解除
    data modify entity @s NoAI set value 0b

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -130..-80

# リセット処理
    scoreboard players reset @s 4B.ShotCount
    scoreboard players reset @s 4B.ShotMax
