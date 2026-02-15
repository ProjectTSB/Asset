#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_charging
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 溜め
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_sword_charge/tween {duration:1, to_frame: 1}
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 予告
        # ノーマル
            execute if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 15 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction_circle.m {Tick:108}
            execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 15 positioned ^-25 ^ ^ rotated ~-30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:108}
            execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 35 positioned ^-25 ^0.05 ^ rotated ~30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:88}
            execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 15 positioned ^25 ^ ^ rotated ~30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:108}
            execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/1_normal if score @s CO.EventTimer matches 35 positioned ^25 ^0.05 ^ rotated ~-30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:88}
        # ハード
            execute if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 35 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction_circle.m {Tick:88}
            execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 35 positioned ^-25 ^ ^ rotated ~-30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:88}
            execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 55 positioned ^-25 ^0.05 ^ rotated ~30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:68}
            execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 35 positioned ^25 ^ ^ rotated ~30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:88}
            execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/2_hard if score @s CO.EventTimer matches 55 positioned ^25 ^0.05 ^ rotated ~-30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:20,Tick:68}
        # ブレスレス
            execute if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 90 run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction_circle.m {Tick:33}
            execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 90 positioned ^-25 ^ ^ rotated ~-30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:2,Tick:33}
            execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 95 positioned ^-25 ^0.05 ^ rotated ~30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:2,Tick:28}
            execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 90 positioned ^25 ^ ^ rotated ~30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:2,Tick:33}
            execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if predicate api:global_vars/difficulty/min/3_blessless if score @s CO.EventTimer matches 95 positioned ^25 ^0.05 ^ rotated ~-30 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/prediction.m {Interpolation:2,Tick:28}
    # 効果音
        execute if score @s CO.EventTimer matches 1..100 positioned ~ ~15 ~ run particle end_rod ~ ~ ~ 2 2 2 0.05 1

# 予告
    # 攻撃方向をランダムに決定
        execute if score @s CO.EventTimer matches 1 if predicate lib:random_pass_per/50 run tag @s add CO.Skill.HalfBeam.IsRight
        execute if entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 run tellraw @a [{"text":"【石像の","color": "dark_purple","bold": true},{"text":" 右眼 ","color": "red","bold": true},{"text":"が光り始めた!!】","color": "dark_purple","bold": true}]
        execute unless entity @s[tag=CO.Skill.HalfBeam.IsRight] if score @s CO.EventTimer matches 1 run tellraw @a [{"text":"【石像の","color": "dark_purple","bold": true},{"text":" 左眼 ","color": "blue","bold": true},{"text":"が光り始めた!!】","color": "dark_purple","bold": true}]
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
    execute if score @s CO.EventTimer matches 100.. run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/start_attack
