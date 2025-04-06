#> asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
        execute if score @s BE.EventTimer matches 30 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position
    # 中心点の横方向、左右どちらかに移動
        execute if score @s BE.EventTimer matches 25 if predicate lib:random_pass_per/50 run tag @s add BE.Temp.Dummy
        execute if entity @s[tag=!BE.Temp.Dummy] if score @s BE.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^3 ^11 ~-90 0
        execute if entity @s[tag=!BE.Temp.Dummy] if score @s BE.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^3 ^-11 ~-90 0
        execute if entity @s[tag=BE.Temp.Dummy] if score @s BE.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^3 ^11 ~90 0
        execute if entity @s[tag=BE.Temp.Dummy] if score @s BE.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^3 ^-11 ~90 0
        execute if score @s BE.EventTimer matches 25 run tag @s remove BE.Temp.Dummy
        execute if score @s BE.EventTimer matches 25 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# テンペストダイブ
# 詠唱：3回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 65 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 88 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # アニメーション再生
        execute if score @s BE.EventTimer matches 152 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_1_dive_start
    # 移動
        execute if score @s BE.EventTimer matches 173..183 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 184..190 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 195..216 at @s run tp @s ^ ^ ^1.5
    # 演出
        execute if score @s BE.EventTimer matches 173 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 173..190 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 173..190 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BE.EventTimer matches 102 if predicate api:global_vars/difficulty/max/normal at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/dive_prediction_long
        execute if score @s BE.EventTimer matches 152 if predicate api:global_vars/difficulty/min/hard at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/dive_prediction
        execute if score @s BE.EventTimer matches 173 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack_dive
        execute if score @s BE.EventTimer matches 177 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack_dive
        execute if score @s BE.EventTimer matches 181 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack_dive
        execute if score @s BE.EventTimer matches 185 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack_dive
    # モデルを自身の位置に移動
        execute if score @s BE.EventTimer matches 152..230 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
    # テンペスト配置
        execute if score @s BE.EventTimer matches 43 if predicate api:global_vars/difficulty/min/normal as @a[distance=..80,sort=random,limit=3] run tag @s add BE.AttackTarget
        execute if score @s BE.EventTimer matches 43 if entity @a[tag=BE.AttackTarget] at @a[tag=BE.AttackTarget,distance=..80] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/plamet/attack_tempest
        execute if score @s BE.EventTimer matches 140..177 as @a[tag=BE.AttackTarget,distance=..80] at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
        execute if score @s BE.EventTimer matches 140..177 run tag @e[type=item_display,tag=BE.Temp.MoveEnd] remove BE.Temp.MoveEnd
        execute if score @s BE.EventTimer matches 177 run tag @a remove BE.AttackTarget

# ロックオンサンダー
    # 移動
        execute if score @s BE.EventTimer matches 450 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
        # 中心点の正面方向に移動
            execute if score @s BE.EventTimer matches 445 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^3 ^32 ~180 0
            execute if score @s BE.EventTimer matches 445 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0
    # アニメーション
        execute if score @s BE.EventTimer matches 450 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
        execute if score @s BE.EventTimer matches 485 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 508 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
        execute if score @s BE.EventTimer matches 610 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
        execute if score @s BE.EventTimer matches 694 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 10
        execute if score @s BE.EventTimer matches 694 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
    # 攻撃
        execute if score @s BE.EventTimer matches 508 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/set_attack_pos
        execute if score @s BE.EventTimer matches 567 run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/set_attack_pos
        execute if score @s BE.EventTimer matches 508 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 510 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 512 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 567 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 569 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack
        execute if score @s BE.EventTimer matches 571 as @a[tag=BE.AttackTarget,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/attack

# 終了
    execute if score @s BE.EventTimer matches 773.. run function asset:mob/0410.heiloang/tick/event/terzetto_purgatorio/end
