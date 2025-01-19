#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_1_rubiel_cover/2.end
#
# スキルイベントハンドラ 集合
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/04_1_rubiel_cover/1.main

# スキル判別用タグ消去
    tag @s remove 9E.Skill.Rubiel.Cover
    tag @s remove 9E.State.Phase.Sync

# タイマーリセット
    scoreboard players set @s 9E.SkillTimer 0
