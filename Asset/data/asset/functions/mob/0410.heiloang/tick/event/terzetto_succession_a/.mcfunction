#> asset:mob/0410.heiloang/tick/event/terzetto_succession_a/
#
# テルツェット・サクセッション
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
    # 中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^3 ^32 ~180 0
        execute if score @s BE.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# 詠唱：5回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 65 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 88 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting

# テンペストダイブ
    # アニメーション再生
        execute if score @s BE.EventTimer matches 254 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/7_1_dive_start
    # 移動
        execute if score @s BE.EventTimer matches 275..285 at @s run tp @s ^ ^ ^3.5
        execute if score @s BE.EventTimer matches 286..292 at @s run tp @s ^ ^ ^2.7
        execute if score @s BE.EventTimer matches 293..318 at @s run tp @s ^ ^ ^1.5
    # 演出
        execute if score @s BE.EventTimer matches 275 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BE.EventTimer matches 275..292 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 20
        execute if score @s BE.EventTimer matches 275..292 at @s run particle explosion ~ ~-1.5 ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BE.EventTimer matches 154 if predicate api:global_vars/difficulty/max/2_hard at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/dive_prediction_long
        execute if score @s BE.EventTimer matches 254 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~-3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/dive_prediction
        execute if score @s BE.EventTimer matches 275 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BE.EventTimer matches 279 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BE.EventTimer matches 283 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BE.EventTimer matches 287 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/attack_dive
    # 初期位置に戻る
        execute if score @s BE.EventTimer matches 331 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
    # モデルを自身の位置に移動
        execute if score @s BE.EventTimer matches 254..332 at @s as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
    # テンペスト配置
        execute if score @s BE.EventTimer matches 145 if predicate api:global_vars/difficulty/min/2_hard as @a[distance=..80,sort=random,limit=3] run tag @s add BE.AttackTarget
        execute if score @s BE.EventTimer matches 145 if entity @a[tag=BE.AttackTarget] at @a[tag=BE.AttackTarget,distance=..80] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/plamet/attack_tempest
        execute if score @s BE.EventTimer matches 242..279 as @a[tag=BE.AttackTarget,distance=..80] at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
        execute if score @s BE.EventTimer matches 242..279 run tag @e[type=item_display,tag=BE.Temp.MoveEnd] remove BE.Temp.MoveEnd

# 終了
    execute if score @s BE.EventTimer matches 360.. run function asset:mob/0410.heiloang/tick/event/terzetto_succession_a/end
