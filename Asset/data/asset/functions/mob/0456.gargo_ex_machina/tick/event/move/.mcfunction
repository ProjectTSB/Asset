#> asset:mob/0456.gargo_ex_machina/tick/event/move/
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 目的地決定
    # 目的地が指定されていない場合
        # 中心地から遠い場合、中心地に召喚
            execute if score @s CO.EventTimer matches 1 unless entity @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80] unless entity @e[type=marker,tag=CO.CenterPosition,distance=..8] positioned as @e[type=marker,tag=CO.CenterPosition,distance=..80] run summon area_effect_cloud ~ ~ ~ {Tags:["CO.Aec.Destination"],Duration:80}
        # 中心地から近い場合、ターゲット位置に移動
            execute if score @s CO.EventTimer matches 1 unless entity @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80] if entity @e[type=marker,tag=CO.CenterPosition,distance=..8] positioned as @p[tag=CO.MainTarget] run summon area_effect_cloud ~ ~ ~ {Tags:["CO.Aec.Destination"],Duration:80}
    # 移動アニメーション再生回数決定
        execute if score @s CO.EventTimer matches 1 if entity @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..22] run tag @s add CO.Skill.Move.Near
    # 計算
        execute if entity @s[tag=CO.Skill.Move.Near] if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/move_calc.m {Tick:38}
        execute unless entity @s[tag=CO.Skill.Move.Near] if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/move_calc.m {Tick:61}

# 移動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/walk_start/tween {duration:1, to_frame: 1}
        execute if score @s CO.EventTimer matches 10 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/walk/tween {duration:1, to_frame: 1}
    # 効果音・演出
        execute if score @s CO.EventTimer matches 24 positioned ^-2.5 ^ ^3 run function asset:mob/0456.gargo_ex_machina/tick/event/move/step_sound
        execute if score @s CO.EventTimer matches 39 positioned ^2.5 ^ ^3 run function asset:mob/0456.gargo_ex_machina/tick/event/move/step_sound
        execute if score @s CO.EventTimer matches 54 positioned ^-2.5 ^ ^3 run function asset:mob/0456.gargo_ex_machina/tick/event/move/step_sound
        execute if score @s CO.EventTimer matches 69 positioned ^2.5 ^ ^3 run function asset:mob/0456.gargo_ex_machina/tick/event/move/step_sound
        execute if score @s CO.EventTimer matches 10..65 positioned ^-13 ^ ^-11 run particle crit ~ ~0.5 ~ 0.5 0.1 0.5 0.5 3 force @a[distance=..80]
        execute if score @s CO.EventTimer matches 10..65 positioned ^-13 ^ ^-11 run particle block quartz_block ~ ~ ~ 0.5 0.1 0.5 0 5 force @a[distance=..80]
        execute if score @s CO.EventTimer matches 10 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 15 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 25 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 30 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 40 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 45 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 55 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
        execute if score @s CO.EventTimer matches 60 positioned ^-12 ^ ^-10 run function asset:mob/0456.gargo_ex_machina/tick/event/move/sword_sound
    # 移動
        execute if score @s CO.EventTimer matches 2..23 run function asset:mob/0456.gargo_ex_machina/tick/util/move
        execute if score @s CO.EventTimer matches 26..38 run function asset:mob/0456.gargo_ex_machina/tick/util/move
        execute if score @s CO.EventTimer matches 41..53 run function asset:mob/0456.gargo_ex_machina/tick/util/move
        execute if score @s CO.EventTimer matches 56..68 run function asset:mob/0456.gargo_ex_machina/tick/util/move
    # 目的地を見る
        execute if score @s CO.EventTimer matches 1..40 at @s run function asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_destination

# モデルを合わせる
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if entity @s[tag=CO.Skill.Move.Near] if score @s CO.EventTimer matches 40.. run function asset:mob/0456.gargo_ex_machina/tick/event/move/start_end
    execute if score @s CO.EventTimer matches 70.. run function asset:mob/0456.gargo_ex_machina/tick/event/move/start_end
