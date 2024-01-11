#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/2.end
#
# アニメーションのイベントハンドラ Kt真空斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_4_kt_vacuslash/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.VacuSlash

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
