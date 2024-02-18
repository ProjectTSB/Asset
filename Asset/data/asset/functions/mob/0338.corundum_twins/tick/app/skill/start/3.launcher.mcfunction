#> asset:mob/0338.corundum_twins/tick/app/skill/start/3.launcher
#
# シンクロスキル開始 ランチャー
#
# @within
#    function 

# 初期化
    scoreboard players set @s 9E.SkillTimer 0
    tag @s add 9E.Skill.Launcher
    tag @s remove 9E.State.Await
    tag @s remove 9E.State.GetAwait.Sappihel
    tag @s remove 9E.State.GetAwait.Rubiel
