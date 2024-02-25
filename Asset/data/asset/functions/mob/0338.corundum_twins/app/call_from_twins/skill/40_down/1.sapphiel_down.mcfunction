#> asset:mob/0338.corundum_twins/app/call_from_twins/skill/40_down/1.sapphiel_down
#
# シンクロスキル 交差攻撃 サフィがダウンした
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/4.notify

# 紐づけ開始
    execute if entity @s[tag=!9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/2.get_link_target

# 初期化
    function asset:mob/0338.corundum_twins/tick/app/skill/1.cancel
    scoreboard players set @s 9E.SkillTimer 0
    tag @s remove 9E.State.Await
    tag @s remove 9E.State.GetAwait.Sappihel
    tag @s remove 9E.State.GetAwait.Rubiel
    execute if entity @e[type=wither_skeleton,tag=9G.Target,tag=9G.Skill.Damage.Down] run tag @s add 9E.Skill.Damage
    execute unless entity @s[tag=9E.Skill.Damage] run tag @s add 9E.Skill.Rubiel.Cover

# 紐づけ終了
    execute if entity @s[tag=9E.TargetEnabled] run function asset:mob/0338.corundum_twins/app/general/4.end_link_target

say サフィ怯み開始