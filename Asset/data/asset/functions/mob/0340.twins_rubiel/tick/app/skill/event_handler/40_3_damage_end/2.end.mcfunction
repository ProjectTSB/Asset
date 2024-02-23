#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/2.end
#
# アニメーションのイベントハンドラ 怯み・終了
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_3_damage_end/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Damage.End

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
