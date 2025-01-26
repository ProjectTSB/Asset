#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_4_kt_sheathe_damage/2.end
#
# アニメーションのイベントハンドラ Kt居合斬り・怯み
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_4_kt_sheathe_damage/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.Damage.Draw

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
