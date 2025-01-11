#> asset:mob/0338.corundum_twins/tick/app/skill/event_handler/02_throw/2.end
#
# スキルイベントハンドラ ぶん投げ
#
# @within function asset:mob/0338.corundum_twins/tick/app/skill/event_handler/02_throw/1.main

# スキル判別用タグ消去
    tag @s remove 9E.Skill.Throw
    tag @s remove 9E.State.Phase.Sync
    tag @s add 9E.State.GetAwait.Sapphiel
    tag @s add 9E.State.GetAwait.Rubiel

# タイマーリセット
    scoreboard players set @s 9E.SkillTimer 0
