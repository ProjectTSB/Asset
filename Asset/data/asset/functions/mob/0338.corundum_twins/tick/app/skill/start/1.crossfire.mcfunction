#> asset:mob/0338.corundum_twins/tick/app/skill/start/1.crossfire
#
# シンクロスキル開始 交差攻撃
#
# @within
#    function 

# 初期化
    scoreboard players set @s 9E.SkillTimer 0
    tag @s add 9E.Skill.GoAlong
    tag @s add 9E.Skill.Crossfire
    tag @s remove 9E.State.Await
    tag @s remove 9E.State.GetAwait.Sappihel
    tag @s remove 9E.State.GetAwait.Rubiel
