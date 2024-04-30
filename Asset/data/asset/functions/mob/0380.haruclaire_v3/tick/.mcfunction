#> asset:mob/0380.haruclaire_v3/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0380.haruclaire_v3/_/tick

# タイマー増加
    scoreboard players add @s AK.AnimationTimer 1

# デバッグ
    execute if score @s AK.AnimationTimer matches ..0 run tag @s add AK.Skill.Rod.Idle

# アニメーションのイベントハンドラ
    execute if score @s AK.AnimationTimer matches 1.. run function asset:mob/0380.haruclaire_v3/tick/app/events/
