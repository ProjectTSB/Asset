#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_3_damage_end/2.end
#
# アニメーションのイベントハンドラ 怯み・終了
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_3_damage_end/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Damage.End

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
