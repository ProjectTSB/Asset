#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/end
#
# アニメーションのイベントハンドラ 点睛
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Tensei

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
