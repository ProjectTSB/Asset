#> asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/
#
# テルツェット・ラグナレク
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 前半
    # 移動
        # アニメーション再生
            execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
            execute if score @s BF.EventTimer matches 30 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
        # 中心点の前に移動
            execute if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^23 ^-0.5 ^23 ~-225 0
    # 詠唱
        # アニメーション再生
            execute if score @s BF.EventTimer matches 70 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_2_cast_start_dive
            execute if score @s BF.EventTimer matches 90 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_3_casting_dive

# フレアダイブ
    # アニメーション再生
        execute if score @s BF.EventTimer matches 252 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/7_dive
    # ターゲットを向く
        execute if score @s BF.EventTimer matches 71..210 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
    # 線予兆
        execute if score @s BF.EventTimer matches 70 positioned ^ ^4 ^4 run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/summon_line
        execute if score @s BF.EventTimer matches 71..210 positioned ^ ^4 ^4 as @e[type=item_display,tag=2181.Line,tag=BF.Object,distance=..1,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/prediction_line
        # 線を消去
            execute if score @s BF.EventTimer matches 210 positioned ^ ^4 ^4 run kill @e[type=item_display,tag=2181.Line,tag=BF.Object,distance=..1,sort=nearest,limit=1]
    # 移動
        execute if score @s BF.EventTimer matches 267..274 at @s run tp @s ^ ^ ^2.8
        execute if score @s BF.EventTimer matches 275..288 at @s run tp @s ^ ^ ^2.1
        execute if score @s BF.EventTimer matches 289..297 at @s run tp @s ^ ^ ^1.5
    # 演出
        execute if score @s BF.EventTimer matches 267 run playsound entity.breeze.shoot hostile @a ^ ^ ^20 3 0.7
        execute if score @s BF.EventTimer matches 267..288 at @s run particle cloud ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 267..288 at @s run particle soul_fire_flame ~ ~3 ~ 2 2 2 0.1 10
        execute if score @s BF.EventTimer matches 267..288 at @s run particle explosion ~ ~ ~ 2 0 2 0.1 3
    # 攻撃
        execute if score @s BF.EventTimer matches 210 at @s positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/dive_prediction
        execute if score @s BF.EventTimer matches 267 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/attack_dive
        execute if score @s BF.EventTimer matches 271 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/attack_dive
        execute if score @s BF.EventTimer matches 275 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/attack_dive
        execute if score @s BF.EventTimer matches 279 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/attack_dive
# フレアダイブ追撃
    # 4箇所に攻撃地点設置
        execute if score @s BF.EventTimer matches 282 if predicate api:global_vars/difficulty/min/2_hard at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare
        execute if score @s BF.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
        execute if score @s BF.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow
        execute if score @s BF.EventTimer matches 288 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
        execute if score @s BF.EventTimer matches 288 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow

# 移動
    # アニメーション再生
        # execute if score @s BF.EventTimer matches 331 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
        execute if score @s BF.EventTimer matches 315 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
    # 中心点の後ろに移動
        execute if score @s BF.EventTimer matches 310 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^-32 ~0 0

# フレアブレス
    # 詠唱
        # アニメーション再生
            execute if score @s BF.EventTimer matches 351 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
            execute if score @s BF.EventTimer matches 370 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 351..450 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
        # 口元に炎の予兆
            execute if score @s BF.EventTimer matches 351..554 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_flame.m with entity @s data.locators.pos_head
    # 攻撃
        # アニメーション再生
            execute if score @s BF.EventTimer matches 480 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
            execute if score @s BF.EventTimer matches 515 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
            execute if score @s BF.EventTimer matches 550 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 495 if predicate api:global_vars/difficulty/max/2_hard facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:34,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 520 if predicate api:global_vars/difficulty/max/2_hard facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:34,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 505 if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^5 {Duration:30,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 540 if predicate api:global_vars/difficulty/min/3_blessless facing entity @p[tag=BF.MainTarget] feet rotated ~ 0 run summon area_effect_cloud ^ ^ ^10 {Duration:30,Tags:["BF.Temp.AttackRotation"]}
            execute if score @s BF.EventTimer matches 515..530 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
            execute if score @s BF.EventTimer matches 550..565 run function asset:mob/0411.behemoth/tick/util/rotate_to_target_aec
        # 攻撃範囲表示
            execute if score @s BF.EventTimer matches 455 if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
            execute if score @s BF.EventTimer matches 495 if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
            execute if score @s BF.EventTimer matches 530 if predicate api:global_vars/difficulty/max/2_hard at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction_long
            execute if score @s BF.EventTimer matches 475 if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
            execute if score @s BF.EventTimer matches 510 if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
            execute if score @s BF.EventTimer matches 545 if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:mob/0411.behemoth/tick/event/flarebreath/prediction
        # 攻撃
            execute if score @s BF.EventTimer matches 495 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
            execute if score @s BF.EventTimer matches 530 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
            execute if score @s BF.EventTimer matches 565 positioned ^ ^ ^ run function asset:mob/0411.behemoth/tick/event/flarebreath/attack
    # 演出
        execute if score @s BF.EventTimer matches 351 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 480 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 515 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
        execute if score @s BF.EventTimer matches 550 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 移動
    # アニメーション再生
        execute if score @s BF.EventTimer matches 606 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start

# 無敵化
    execute if score @s BF.EventTimer matches 1 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 30 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 300 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 315 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 606 run function asset:mob/0411.behemoth/tick/util/start_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 880.. run function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/end
