#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/
#
# テルツェット・ラグナレク
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 30 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の前に移動
        execute if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-23 ^-0.5 ^23 ~-135 0
# 詠唱
    # アニメーション再生
        execute if score @s BG.EventTimer matches 70 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_5_cast_start_dive
        execute if score @s BG.EventTimer matches 90 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_6_casting_dive

# アイシクルダイブ
    # アニメーション再生
        execute if score @s BG.EventTimer matches 252 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/7_dive
    # ターゲットを向く
        execute if score @s BG.EventTimer matches 71..210 run function asset:mob/0412.tiamat/tick/util/rotate_to_target
    # 線予兆
        execute if score @s BG.EventTimer matches 70 positioned ^ ^2.5 ^6 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_line
        execute if score @s BG.EventTimer matches 71..210 positioned ^ ^2.5 ^6 as @e[type=item_display,tag=2181.Line,distance=..1,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_line
        # 線を消去
            execute if score @s BG.EventTimer matches 210 positioned ^ ^2.5 ^6 run kill @e[type=item_display,tag=2181.Line,distance=..1,sort=nearest,limit=1]
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
        execute if score @s BG.EventTimer matches 210 at @s positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/dive_prediction
        execute if score @s BG.EventTimer matches 267 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_dive
        execute if score @s BG.EventTimer matches 271 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_dive
        execute if score @s BG.EventTimer matches 275 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_dive
        execute if score @s BG.EventTimer matches 279 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_dive
# アイシクルダイブ追撃
    # 2箇所に攻撃地点設置
        execute if score @s BG.EventTimer matches 282 if predicate api:global_vars/difficulty/min/normal at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/summon_icicle
        execute if score @s BG.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle
        execute if score @s BG.EventTimer matches 287 at @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/attack_icicle

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 360 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点前に移動
        execute if score @s BG.EventTimer matches 355 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^16 ~180 0

# アイシクルフィールド
    # 詠唱
        execute if score @s BG.EventTimer matches 400 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
        execute if score @s BG.EventTimer matches 420 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
    # アニメーション再生
        execute if score @s BG.EventTimer matches 500 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/8_spin
    # 演出
        execute if score @s BG.EventTimer matches 401 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 500 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 533 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 520..535 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 520..535 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    # 攻撃
        execute if score @s BG.EventTimer matches 400..500 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_circle_icicle
        execute if score @s BG.EventTimer matches 490 positioned ^ ^-0.3 ^ run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_attack_pos_icicle
        execute if score @s BG.EventTimer matches 440 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_0_icicle_long
        execute if score @s BG.EventTimer matches 490 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_1_icicle_long
        execute if score @s BG.EventTimer matches 500 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_0_icicle
        execute if score @s BG.EventTimer matches 550 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_1_icicle
        execute if score @s BG.EventTimer matches 515 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_0_icicle
        execute if score @s BG.EventTimer matches 565 run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/attack_1_icicle
    # 演出
        execute if score @s BG.EventTimer matches 400..500 run particle cloud ~ ~3 ~ 2 2 2 0.1 1
        execute if score @s BG.EventTimer matches 400..515 rotated ~ ~ run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/effect_particle_icicle
    # 氷柱設置
        # 周囲のプレイヤー数と同じだけ設置、最大6
            execute if score @s BG.EventTimer matches 514 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_pillar_position
            execute if score @s BG.EventTimer matches 515 as @a[distance=..80] as @e[type=area_effect_cloud,tag=BG.Temp.PillarPosition,sort=random,limit=1] at @s run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/summon_pillar
        # 破壊
            execute if score @s BG.EventTimer matches 800 run tag @e[type=item_display,tag=2180.Pillar] add 2180.Pillar.Death
# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 560 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BG.EventTimer matches 1 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 30 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 297 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 360 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 560 run function asset:mob/0412.tiamat/tick/util/start_invulnerable

# 終了
    execute if score @s BG.EventTimer matches 880.. run function asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/end
