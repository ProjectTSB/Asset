#> asset:mob/0338.corundum_twins/app/call_from_twins/skill/40_down/2.rubiel_down
#
# シンクロスキル 交差攻撃 ルビィがダウンした
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_1_damage_start/4.notify

# 初期化
    function asset:mob/0338.corundum_twins/tick/app/skill/1.cancel
    scoreboard players set @s 9E.SkillTimer 0
    tag @s remove 9E.State.Await
    tag @s remove 9E.State.GetAwait.Sappihel
    tag @s remove 9E.State.GetAwait.Rubiel
    tag @s add 9E.Skill.Sapphiel.Cover

say ルビィ怯み開始