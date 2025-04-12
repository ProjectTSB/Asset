#> asset:mob/0411.behemoth/tick/event/terzetto_succession_a/
#
# テルツェット・サクセッション ヘイローン先行
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 70 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^13.5 ^-0.5 ^28 ~180 0
        execute if score @s BF.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BF.ModelRoot] ~ ~ ~ ~ 0

# 詠唱
    # アニメーション再生
        execute if score @s BF.EventTimer matches 110 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_2_cast_start_dive
        execute if score @s BF.EventTimer matches 130 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_3_casting_dive

# フレアダイブ
    # アニメーション再生
        execute if score @s BF.EventTimer matches 300 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/7_dive
    # 移動
        execute if score @s BF.EventTimer matches 315..322 at @s run tp @s ^ ^ ^2.8
        execute if score @s BF.EventTimer matches 323..336 at @s run tp @s ^ ^ ^2.1
        execute if score @s BF.EventTimer matches 337..345 at @s run tp @s ^ ^ ^1.5
    # 演出
        execute if score @s BF.EventTimer matches 315 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BF.EventTimer matches 315..336 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 315..336 at @s run particle end_rod ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 315..336 at @s run particle soul_fire_flame ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 315..336 at @s run particle explosion ~ ~ ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BF.EventTimer matches 154 if predicate api:global_vars/difficulty/max/normal at @s positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/dive_prediction_long
        execute if score @s BF.EventTimer matches 300 if predicate api:global_vars/difficulty/min/hard at @s positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/dive_prediction
        execute if score @s BF.EventTimer matches 315 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BF.EventTimer matches 319 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BF.EventTimer matches 323 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/attack_dive
        execute if score @s BF.EventTimer matches 327 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/attack_dive

# フレアダイブ追撃
    # 4箇所に攻撃地点設置
        execute if score @s BF.EventTimer matches 350 if predicate api:global_vars/difficulty/min/normal at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare
        execute if score @s BF.EventTimer matches 350 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
        execute if score @s BF.EventTimer matches 350 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow
        execute if score @s BF.EventTimer matches 356 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
        execute if score @s BF.EventTimer matches 356 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BF.EventTimer matches 1 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 70 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 360 run function asset:mob/0411.behemoth/tick/util/start_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 360.. run function asset:mob/0411.behemoth/tick/event/terzetto_succession_a/end
