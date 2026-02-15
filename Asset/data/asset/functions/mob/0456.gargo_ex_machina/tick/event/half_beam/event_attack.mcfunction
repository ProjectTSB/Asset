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
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 1 run playsound ui.stonecutter.take_result hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 10 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 15 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 41 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 60 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 攻撃
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 23 positioned ^-30 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 23 positioned ^30 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 9 positioned ~ ~15 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/summon_laser_start
        execute if score @s CO.EventTimer matches 11..18 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 11..18 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.6
        execute if score @s CO.EventTimer matches 23 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
        execute if score @s CO.EventTimer matches 25 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
        execute if score @s CO.EventTimer matches 27 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
        execute if score @s CO.EventTimer matches 29 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
        execute if score @s CO.EventTimer matches 31 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
        execute if score @s CO.EventTimer matches 33 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start
        execute if score @s CO.EventTimer matches 35 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/attack_effect_start

# 終了
    execute if score @s CO.EventTimer matches 95.. run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/end
