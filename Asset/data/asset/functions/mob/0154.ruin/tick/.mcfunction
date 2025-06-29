#> asset:mob/0154.ruin/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/154/tick

# タグがついていない時、プレイヤーが周囲にいたら増え続ける
    execute if entity @a[distance=..10] unless entity @s[tag=4A.Madness] run scoreboard players add @s 4A.MadnessTime 1

# タグがついている時、問答無用で増え続ける
    execute if entity @s[tag=4A.Madness] run scoreboard players add @s 4A.MadnessTime 1

# 一定のスコアに達したら1度発動
    execute if entity @s[scores={4A.MadnessTime=170}] run function asset:mob/0154.ruin/tick/ready

# その後発動し続けるやつ
    execute if entity @s[scores={4A.MadnessTime=170..}] run function asset:mob/0154.ruin/tick/madness
