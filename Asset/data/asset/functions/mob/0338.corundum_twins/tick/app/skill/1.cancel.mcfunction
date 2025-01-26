#> asset:mob/0338.corundum_twins/tick/app/skill/1.cancel
#
# シンクロスキル中断
#
# @within
#    function asset:mob/0338.corundum_twins/**

# 初期化
    scoreboard players set @s 9E.SkillTimer 0
    tag @s remove 9E.State.Await
    tag @s remove 9E.State.GetAwait.Sapphiel
    tag @s remove 9E.State.GetAwait.Rubiel

# タグ消去
    tag @s remove 9E.Skill.GoAlong
    tag @s remove 9E.Skill.Crossfire
    tag @s remove 9E.Skill.Throw
    tag @s remove 9E.Skill.Launcher
    tag @s remove 9E.Skill.Rubiel.Cover
    tag @s remove 9E.Skill.Sapphiel.Cover
    tag @s remove 9E.Skill.Damage
    tag @s remove 9E.Skill.Stun
