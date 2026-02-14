#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_attack
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_attack_right/tween {duration:1, to_frame: 1}
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_attack_left/tween {duration:1, to_frame: 1}
        execute if score @s CO.EventTimer matches 60 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_end/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.7
        execute if score @s CO.EventTimer matches 10 run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 15 run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 41 run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 60 run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 94 run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.8
    # 攻撃
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 23 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 23 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 11 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 11 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.6
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 23 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 25 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 27 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 29 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 31 rotated ~90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 23 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 25 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 27 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 29 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 31 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect

# 終了
    execute if score @s CO.EventTimer matches 95.. run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/end
