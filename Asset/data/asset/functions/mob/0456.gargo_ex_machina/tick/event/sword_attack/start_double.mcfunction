#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/start_double
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack

# タグ更新
    scoreboard players set @s CO.EventTimer 0
    tag @s remove CO.Skill.SwordAttack.Attack
    tag @s add CO.Skill.SwordAttack.Double
