#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_launcher/2.end
#
# スキルイベントハンドラ ランチャー
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/03_launcher/1.main

# スキル判別用タグ消去
    tag @s remove 9E.Skill.Launcher

# タイマーリセット
    scoreboard players set @s 9E.SkillTimer 0

say launcher end