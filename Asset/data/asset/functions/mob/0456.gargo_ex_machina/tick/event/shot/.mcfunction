#> asset:mob/0456.gargo_ex_machina/tick/event/shot/
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/shot_target_spin/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 16 positioned ^-4 ^ ^4 run function asset:mob/0456.gargo_ex_machina/tick/util/step_sound
        execute if score @s CO.EventTimer matches 72 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 84 run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.9
        execute if score @s CO.EventTimer matches 100 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 122 positioned ^-4 ^ ^-3 run function asset:mob/0456.gargo_ex_machina/tick/util/step_sound
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 対象を向く
        execute if score @s CO.EventTimer matches 1..30 run function asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_target
    # 攻撃
        # 攻撃位置決定
            execute if score @s CO.EventTimer matches 30 at @p[tag=CO.MainTarget,distance=..80] run summon area_effect_cloud ~ ~ ~ {Tags:["CO.Aec.AttackPosition"],Duration:80}
            execute if score @s CO.EventTimer matches 30 as @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,limit=1] at @s run function asset:mob/0456.gargo_ex_machina/tick/util/move_to_ground
        # 予兆
            execute if score @s CO.EventTimer matches 30 at @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/event/shot/prediction.m {Tick:42}
        # 演出
            execute if score @s CO.EventTimer matches 5..68 as @e[type=item_display,tag=CO.ModelRoot,distance=..80,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0456.gargo_ex_machina/tick/event/shot/charge_effect.m with entity @s data.locators.muzzle
            execute if score @s CO.EventTimer matches 69 as @e[type=item_display,tag=CO.ModelRoot,distance=..80,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0456.gargo_ex_machina/tick/event/shot/summon_laser.m with entity @s data.locators.muzzle
            execute if score @s CO.EventTimer matches 1 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.4
            execute if score @s CO.EventTimer matches 1 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.4
            execute if score @s CO.EventTimer matches 10 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.5
            execute if score @s CO.EventTimer matches 10 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.5
            execute if score @s CO.EventTimer matches 20 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.6
            execute if score @s CO.EventTimer matches 20 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.6
            execute if score @s CO.EventTimer matches 30 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.7
            execute if score @s CO.EventTimer matches 30 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.7
            execute if score @s CO.EventTimer matches 40 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.8
            execute if score @s CO.EventTimer matches 40 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.8
            execute if score @s CO.EventTimer matches 50 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.9
            execute if score @s CO.EventTimer matches 50 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 1.9
            execute if score @s CO.EventTimer matches 60 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 2.0
            execute if score @s CO.EventTimer matches 60 run playsound block.beacon.activate hostile @a ~ ~ ~ 2 2.0
        # 攻撃
            execute if score @s CO.EventTimer matches 72..74 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5
            execute if score @s CO.EventTimer matches 72..74 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.6
            execute if score @s CO.EventTimer matches 72 at @e[type=area_effect_cloud,tag=CO.Aec.AttackPosition,distance=..80,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/event/shot/attack
    
# 終了
    execute if score @s CO.EventTimer matches 126.. run function asset:mob/0456.gargo_ex_machina/tick/event/shot/end
