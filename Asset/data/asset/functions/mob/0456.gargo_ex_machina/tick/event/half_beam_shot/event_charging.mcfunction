#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_charging
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 溜め
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_shot_charge/tween {duration:1, to_frame: 1}
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 予告
        # レーザー
            # ノーマル
                execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 15 positioned ^-30 ^ ^ rotated ~-20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:104}
                execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 35 positioned ^-30 ^0.05 ^ rotated ~20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:84}
                execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 15 positioned ^30 ^ ^ rotated ~20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:104}
                execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 35 positioned ^30 ^0.05 ^ rotated ~-20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:84}
            # ハード
                execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 35 positioned ^-30 ^ ^ rotated ~-20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:84}
                execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 55 positioned ^-30 ^0.05 ^ rotated ~20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:64}
                execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 35 positioned ^30 ^ ^ rotated ~20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:84}
                execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 55 positioned ^30 ^0.05 ^ rotated ~-20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:20,Tick:64}
            # ブレスレス
                execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 90 positioned ^-30 ^ ^ rotated ~-20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:2,Tick:29}
                execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 95 positioned ^-30 ^0.05 ^ rotated ~20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:2,Tick:24}
                execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 90 positioned ^30 ^ ^ rotated ~20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:2,Tick:29}
                execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 95 positioned ^30 ^0.05 ^ rotated ~-20 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/prediction.m {Interpolation:2,Tick:24}
        # 射撃
            execute if score @s CO.EventTimer matches 10 at @e[type=marker,tag=CO.CenterPosition] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/set_attack_position
            # ノーマル
                execute if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 15.. at @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,sort=random,limit=5] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_shot.m {PredictionTime:105,AttackTime:105}
            # ハード
                execute if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 45.. at @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,sort=random,limit=5] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_shot.m {PredictionTime:75,AttackTime:75}
            # ブレスレス
                execute if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 85.. at @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,sort=random,limit=5] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/attack_shot.m {PredictionTime:35,AttackTime:35}
    # 効果音
        execute if score @s CO.EventTimer matches 1..100 positioned ~ ~15 ~ run particle end_rod ~ ~ ~ 2 2 2 0.05 1

# 予告
        execute if score @s CO.EventTimer matches 1 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.5
        execute if score @s CO.EventTimer matches 1 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.5
        execute if score @s CO.EventTimer matches 20 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.6
        execute if score @s CO.EventTimer matches 20 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.6
        execute if score @s CO.EventTimer matches 40 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.7
        execute if score @s CO.EventTimer matches 40 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.7
        execute if score @s CO.EventTimer matches 60 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.8
        execute if score @s CO.EventTimer matches 60 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.8
        execute if score @s CO.EventTimer matches 80 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 2
        execute if score @s CO.EventTimer matches 80 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 2

# 終了
    execute if score @s CO.EventTimer matches 100.. run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/start_attack
