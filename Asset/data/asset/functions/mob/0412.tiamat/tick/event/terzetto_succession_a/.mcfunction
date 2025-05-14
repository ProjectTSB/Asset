#> asset:mob/0412.tiamat/tick/event/terzetto_succession_a/
#
# テルツェット・サクセッション ヘイローン先行
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 60 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-13.5 ^-0.5 ^28 ~180 0
        execute if score @s BG.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BG.ModelRoot] ~ ~ ~ ~ 0

# 詠唱
    # アニメーション再生
        execute if score @s BG.EventTimer matches 100 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_5_cast_start_dive
        execute if score @s BG.EventTimer matches 120 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_6_casting_dive
#

# アイシクルダイブ
    # アニメーション再生
        execute if score @s BG.EventTimer matches 300 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/7_dive
    # 移動
        execute if score @s BG.EventTimer matches 300..306 at @s run tp @s ^ ^ ^-2
        execute if score @s BG.EventTimer matches 311..325 at @s run tp @s ^ ^ ^3.5
        execute if score @s BG.EventTimer matches 326..336 at @s run tp @s ^ ^ ^2.5
        execute if score @s BG.EventTimer matches 337..345 at @s run tp @s ^ ^ ^1.2
    # 演出
        execute if score @s BG.EventTimer matches 308 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BG.EventTimer matches 308..336 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BG.EventTimer matches 308..336 at @s run particle dragon_breath ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BG.EventTimer matches 308..336 at @s run particle explosion ~ ~ ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BG.EventTimer matches 154 if predicate api:global_vars/difficulty/max/2_hard at @s positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/dive_prediction_long
        execute if score @s BG.EventTimer matches 300 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/dive_prediction
        execute if score @s BG.EventTimer matches 315 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BG.EventTimer matches 318 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BG.EventTimer matches 321 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BG.EventTimer matches 324 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/attack_dive

# アイシクルダイブ追撃
    # 2箇所に攻撃地点設置
        execute if score @s BG.EventTimer matches 350 if predicate api:global_vars/difficulty/min/2_hard at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/summon_icicle
        execute if score @s BG.EventTimer matches 350 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle
        execute if score @s BG.EventTimer matches 355 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1] positioned ~ ~0.05 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BG.EventTimer matches 1 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 60 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 336 run function asset:mob/0412.tiamat/tick/util/start_invulnerable

# 終了
    execute if score @s BG.EventTimer matches 360.. run function asset:mob/0412.tiamat/tick/event/terzetto_succession_a/end
