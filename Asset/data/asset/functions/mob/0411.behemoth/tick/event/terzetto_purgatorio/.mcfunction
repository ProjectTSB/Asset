#> asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/
#
# テルツェット・プルガトリオ
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 100 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の後方に移動
        execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^-32 ~ 0
# 詠唱
    # アニメーション再生
        execute if score @s BF.EventTimer matches 140 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
        execute if score @s BF.EventTimer matches 190 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting

# ロックオンフレアブレス
    # アニメーション再生
        execute if score @s BF.EventTimer matches 332 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
    # ターゲット決定
        execute if score @s BF.EventTimer matches 140 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/set_target
    # 予兆
        execute if score @s BF.EventTimer matches 140..348 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/prediction_line.m with entity @s data.locators.pos_head
    # 攻撃
        execute if score @s BF.EventTimer matches 348 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack.m with entity @s data.locators.pos_head

# フレアダイブ
    # 中心点の横方向、左右どちらかに移動
        execute if score @s BF.EventTimer matches 387 if predicate lib:random_pass_per/50 run tag @s add BF.Temp.Dummy
        execute if entity @s[tag=!BF.Temp.Dummy] if score @s BF.EventTimer matches 387 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^11 ~-90 0
        execute if entity @s[tag=!BF.Temp.Dummy] if score @s BF.EventTimer matches 387 if predicate lib:random_pass_per/33 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^-11 ~-90 0
        execute if entity @s[tag=!BF.Temp.Dummy] if score @s BF.EventTimer matches 387 if predicate lib:random_pass_per/33 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^ ~-90 0
        execute if entity @s[tag=BF.Temp.Dummy] if score @s BF.EventTimer matches 387 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^11 ~90 0
        execute if entity @s[tag=BF.Temp.Dummy] if score @s BF.EventTimer matches 387 if predicate lib:random_pass_per/33 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^-11 ~90 0
        execute if entity @s[tag=BF.Temp.Dummy] if score @s BF.EventTimer matches 387 if predicate lib:random_pass_per/33 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^ ~90 0
        execute if score @s BF.EventTimer matches 387 run tag @s remove BF.Temp.Dummy
    # アニメーション再生
        execute if score @s BF.EventTimer matches 368 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 388 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
        execute if score @s BF.EventTimer matches 428 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_2_cast_start_dive
        execute if score @s BF.EventTimer matches 448 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_3_casting_dive
        execute if score @s BF.EventTimer matches 462 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/7_dive
    # 移動
        execute if score @s BF.EventTimer matches 477..484 at @s run tp @s ^ ^ ^2.8
        execute if score @s BF.EventTimer matches 485..498 at @s run tp @s ^ ^ ^2.1
        execute if score @s BF.EventTimer matches 499..507 at @s run tp @s ^ ^ ^1.5
    # 演出
        execute if score @s BF.EventTimer matches 477 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BF.EventTimer matches 477..498 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 477..498 at @s run particle soul_fire_flame ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 477..498 at @s run particle explosion ~ ~ ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BF.EventTimer matches 402 if predicate api:global_vars/difficulty/max/2_hard at @s positioned ~ ~0.1 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/dive_prediction_long
        execute if score @s BF.EventTimer matches 462 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~0.1 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/dive_prediction
        execute if score @s BF.EventTimer matches 477 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
        execute if score @s BF.EventTimer matches 481 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
        execute if score @s BF.EventTimer matches 485 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
        execute if score @s BF.EventTimer matches 489 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/attack_dive
    # フレアダイブ追撃
        # 4箇所に攻撃地点設置
            execute if score @s BF.EventTimer matches 491 if predicate api:global_vars/difficulty/min/2_hard at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare
            execute if score @s BF.EventTimer matches 491 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
            execute if score @s BF.EventTimer matches 491 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow
            execute if score @s BF.EventTimer matches 498 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
            execute if score @s BF.EventTimer matches 498 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 733 unless predicate api:global_vars/difficulty/2_hard as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 732 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# 無敵化
    execute if score @s BF.EventTimer matches 1 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 100 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 368 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 388 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 498 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 733 run function asset:mob/0411.behemoth/tick/util/end_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 773.. run function asset:mob/0411.behemoth/tick/event/terzetto_purgatorio/end
