#> asset:mob/0456.gargo_ex_machina/tick/event/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/

# 起動
    execute if entity @s[tag=CO.Skill.Activate] run function asset:mob/0456.gargo_ex_machina/tick/event/activate/

# 剣叩きつけ
    execute if entity @s[tag=CO.Skill.SwordAttack] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_start
    execute if entity @s[tag=CO.Skill.SwordAttack.Charge] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_charging
    execute if entity @s[tag=CO.Skill.SwordAttack.Attack] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack
