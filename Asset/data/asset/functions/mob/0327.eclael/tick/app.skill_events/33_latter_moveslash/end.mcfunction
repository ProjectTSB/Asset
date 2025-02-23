#> asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/end
#
# アニメーションのイベントハンドラ 移動斬り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/33_latter_moveslash/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.MoveSlash

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
