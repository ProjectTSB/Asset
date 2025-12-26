#> asset:mob/0412.tiamat/tick/event/terzetto_aligning/
#
# テルツェット・アライニング
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 30 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の左右どちらかに移動
            execute if score @s BG.EventTimer matches 25 if predicate lib:random_pass_per/50 run tag @s add BG.Temp.Dummy
            execute if entity @s[tag=!BG.Temp.Dummy] if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^11 ~-90 0
            execute if entity @s[tag=!BG.Temp.Dummy] if score @s BG.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^-11 ~-90 0
            execute if entity @s[tag=BG.Temp.Dummy] if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^11 ~90 0
            execute if entity @s[tag=BG.Temp.Dummy] if score @s BG.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^-11 ~90 0
            execute if score @s BG.EventTimer matches 25 run tag @s remove BG.Temp.Dummy
# 詠唱
    # アニメーション再生
        execute if score @s BG.EventTimer matches 70 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_5_cast_start_dive
        execute if score @s BG.EventTimer matches 90 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_6_casting_dive
# アイシクルダイブ
    # アニメーション再生
        execute if score @s BG.EventTimer matches 252 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/7_dive
    # 移動
        execute if score @s BG.EventTimer matches 252..258 at @s run tp @s ^ ^ ^-2
        execute if score @s BG.EventTimer matches 263..277 at @s run tp @s ^ ^ ^3.5
        execute if score @s BG.EventTimer matches 278..288 at @s run tp @s ^ ^ ^2.5
        execute if score @s BG.EventTimer matches 289..297 at @s run tp @s ^ ^ ^1.2
    # 演出
        execute if score @s BG.EventTimer matches 260 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BG.EventTimer matches 260..288 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BG.EventTimer matches 260..288 at @s run particle dragon_breath ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BG.EventTimer matches 260..288 at @s run particle explosion ~ ~ ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BG.EventTimer matches 152 at @s if predicate api:global_vars/difficulty/max/2_hard positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/dive_prediction_long
        execute if score @s BG.EventTimer matches 252 at @s if predicate api:global_vars/difficulty/min/3_blessless positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/dive_prediction
        execute if score @s BG.EventTimer matches 267 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack_dive
        execute if score @s BG.EventTimer matches 271 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack_dive
        execute if score @s BG.EventTimer matches 275 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack_dive
        execute if score @s BG.EventTimer matches 279 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack_dive
# アイシクルダイブ追撃
    # 2箇所に攻撃地点設置
        execute if score @s BG.EventTimer matches 282 if predicate api:global_vars/difficulty/min/2_hard at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/summon_icicle
        execute if score @s BG.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle
        execute if score @s BG.EventTimer matches 287 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle

# 後半
    # 移動
        # アニメーション再生
            execute if score @s BG.EventTimer matches 430 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
        # 中心点の左右どちらかに移動
            execute if score @s BG.EventTimer matches 425 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-32 ^ ^ ~-90 0
            execute if score @s BG.EventTimer matches 425 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^32 ^ ^ ~90 0
    # アダマントスパイク
        # 詠唱
            # アニメーション再生
                execute if score @s BG.EventTimer matches 471 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_7_cast_start_breath
                execute if score @s BG.EventTimer matches 490 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_8_casting_breath
                execute if score @s BG.EventTimer matches 735 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/4_breath
            # 攻撃
                execute if score @s BG.EventTimer matches 490 at @e[type=marker,tag=BE.CenterPosition] facing entity @s feet rotated ~ 0 run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/summon_attack_position
                execute if score @s BG.EventTimer matches 490 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition] positioned as @s run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/prediction
                execute if score @s BG.EventTimer matches 750 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition] run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/attack
                execute if score @s BG.EventTimer matches 760 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition] positioned as @s run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/prediction_line
    # 移動
        # アニメーション再生
            execute if score @s BG.EventTimer matches 791 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
            execute if score @s BG.EventTimer matches 821 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
            execute if score @s BG.EventTimer matches 846 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
        # 中心点の正面方向に移動
            execute if score @s BG.EventTimer matches 845 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BG.EventTimer matches 1 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 30 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 297 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 430 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 821 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 846 run function asset:mob/0412.tiamat/tick/util/end_invulnerable

# 終了
    execute if score @s BG.EventTimer matches 886.. run function asset:mob/0412.tiamat/tick/event/terzetto_aligning/end
