#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/2.end
#
# アニメーションのイベントハンドラ 後半・全体落雷 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/1.main

# スキル判別用タグ消去
    tag @s remove 93.Skill.FieldThunder

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
