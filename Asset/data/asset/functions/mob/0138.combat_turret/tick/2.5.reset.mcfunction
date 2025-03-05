#> asset:mob/0138.combat_turret/tick/2.5.reset
#
#
#
# @within function asset:mob/0138.combat_turret/tick/2.1.near_player

# 次に攻撃するタイミングをランダムにする
    execute store result score @s 3U.Time run random value 0..30

# リセット処理
    data modify entity @s NoAI set value 0
