#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/2.end
#
# アニメーションのイベントハンドラ Kt二刀流縦回転斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_4_kt_dashattack/1.main

# アニメーション修正
    tag @s remove 9G.Skill.Kt.DashAttack

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
