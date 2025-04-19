#> asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/end
#
# アニメーションのイベントハンドラ 後半・全体落雷 終了
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/32_latter_fall/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Fall

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
