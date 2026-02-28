#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_attack
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_shot_attack_right/tween {duration:1, to_frame: 1}
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_shot_attack_left/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 1 run playsound ui.stonecutter.take_result hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 10 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 11 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 32 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 50 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 60 positioned ^-4 ^ ^-3 run function asset:mob/0456.gargo_ex_machina/tick/util/step_sound
        execute if score @s CO.EventTimer matches 51 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 53 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.9
        execute if score @s CO.EventTimer matches 53 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 55 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 55 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 57 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.9
        execute if score @s CO.EventTimer matches 57 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 59 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 59 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
    # 攻撃
        # execute if score @s CO.EventTimer matches 16 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_sword
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 19 positioned ^-30 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 19 positioned ^30 ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 7 positioned ~ ~15 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/summon_laser_start
        execute if score @s CO.EventTimer matches 7..14 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 7..14 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.6
        execute if score @s CO.EventTimer matches 19 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start
        execute if score @s CO.EventTimer matches 21 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start
        execute if score @s CO.EventTimer matches 23 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start
        execute if score @s CO.EventTimer matches 25 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start
        execute if score @s CO.EventTimer matches 27 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start
        execute if score @s CO.EventTimer matches 29 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start
        execute if score @s CO.EventTimer matches 31 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_effect_start

# 終了
    execute if score @s CO.EventTimer matches 61.. run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/end
