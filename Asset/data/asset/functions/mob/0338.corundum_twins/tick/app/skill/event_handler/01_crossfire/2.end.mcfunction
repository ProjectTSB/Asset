#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/01_crossfire/2.end
#
# スキルイベントハンドラ 交差攻撃
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/01_crossfire/1.main

# スキル判別用タグ消去
    tag @s remove 9E.Skill.Crossfire

# タイマーリセット
    scoreboard players set @s 9E.SkillTimer 0

say crossfire end