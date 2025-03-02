#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/end
#
# アニメーションのイベントハンドラ 桜花剣乱
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.IaiMove

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
