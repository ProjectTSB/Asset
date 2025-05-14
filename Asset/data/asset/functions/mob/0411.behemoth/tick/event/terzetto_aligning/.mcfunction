#> asset:mob/0411.behemoth/tick/event/terzetto_aligning/
#
# テルツェット・ディザスター
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
            execute if score @s BF.EventTimer matches 25 if predicate lib:random_pass_per/50 run tag @s add BF.Temp.Dummy
            execute if entity @s[tag=!BF.Temp.Dummy] if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^11 ^ ^32 ~-180 0
            execute if entity @s[tag=!BF.Temp.Dummy] if score @s BF.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-11 ^ ^32 ~-180 0
            execute if entity @s[tag=BF.Temp.Dummy] if score @s BF.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^11 ^ ^-32 ~ 0
            execute if entity @s[tag=BF.Temp.Dummy] if score @s BF.EventTimer matches 25 if predicate lib:random_pass_per/50 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-11 ^ ^-32 ~ 0
            execute if score @s BF.EventTimer matches 25 run tag @s remove BF.Temp.Dummy
    # 詠唱
        # アニメーション再生
            execute if score @s BF.EventTimer matches 70 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_2_cast_start_dive
            execute if score @s BF.EventTimer matches 90 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_3_casting_dive
    # フレアダイブ
        # アニメーション再生
            execute if score @s BF.EventTimer matches 252 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/7_dive
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
            execute if score @s BF.EventTimer matches 152 if predicate api:global_vars/difficulty/max/normal at @s positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/dive_prediction_long
            execute if score @s BF.EventTimer matches 252 if predicate api:global_vars/difficulty/min/3_blessless at @s positioned ~ ~0.5 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/dive_prediction
            execute if score @s BF.EventTimer matches 267 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^7.5 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack_dive
            execute if score @s BF.EventTimer matches 271 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^22.5 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack_dive
            execute if score @s BF.EventTimer matches 275 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^37.5 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack_dive
            execute if score @s BF.EventTimer matches 279 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=nearest,limit=1] positioned ^ ^ ^52.5 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack_dive
    # フレアダイブ追撃
        # 4箇所に攻撃地点設置
            execute if score @s BF.EventTimer matches 282 if predicate api:global_vars/difficulty/min/normal at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/summon_flare
            execute if score @s BF.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
            execute if score @s BF.EventTimer matches 282 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow
            execute if score @s BF.EventTimer matches 288 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_normal
            execute if score @s BF.EventTimer matches 288 at @e[type=area_effect_cloud,tag=BF.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0411.behemoth/tick/event/terzetto_succession_dive/attack_flare_slow

# 後半
    # 移動
        # アニメーション再生
            execute if score @s BF.EventTimer matches 430 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
        # ヘイローン、ティアマットの対角に移動
            execute if score @s BF.EventTimer matches 426 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^ ^ ~ 0
            execute if score @s BF.EventTimer matches 426 at @s facing entity @e[type=slime,tag=BE.EntityRoot] feet positioned ^ ^ ^-0.01 facing entity @e[type=slime,tag=BG.EntityRoot] feet positioned ^ ^ ^-0.01 facing entity @s feet rotated ~ 0 positioned ^ ^ ^-32 run tp @s ~ ~ ~ ~ 0
    # ヘルファイア
        # 詠唱
            execute if score @s BF.EventTimer matches 470 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
            execute if score @s BF.EventTimer matches 490 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
        # ターゲット決定
            execute if score @s BF.EventTimer matches 490..719 run function asset:mob/0411.behemoth/tick/util/check_target
        # ターゲットを向く
            execute if score @s BF.EventTimer matches 490..719 run function asset:mob/0411.behemoth/tick/util/rotate_to_target
        # 攻撃範囲予告
            execute if score @s BF.EventTimer matches 490..606 at @p[tag=BF.MainTarget] run particle soul_fire_flame ~ ~0.3 ~ 0.1 0.1 0.1 0.2 2
            execute if score @s BF.EventTimer matches 490..705 at @p[tag=BF.MainTarget] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/particle_attack_area
        # 発動
            # 1
                execute if score @s BF.EventTimer matches 611 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath
                execute if score @s BF.EventTimer matches 626 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
            # 2
                execute if score @s BF.EventTimer matches 642 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
                execute if score @s BF.EventTimer matches 657 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
            # 3
                execute if score @s BF.EventTimer matches 673 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
                execute if score @s BF.EventTimer matches 688 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
            # 4
                execute if score @s BF.EventTimer matches 704 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/4_breath_continue
                execute if score @s BF.EventTimer matches 719 run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/attack
    # 移動
        # アニメーション再生
            execute if score @s BF.EventTimer matches 760 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_0_flymove_start
            execute if score @s BF.EventTimer matches 846 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/6_1_flymove_end
        # 中心点の正面方向に移動
            execute if score @s BF.EventTimer matches 845 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BF.EventTimer matches 1 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 30 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 300 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 430 run function asset:mob/0411.behemoth/tick/util/end_invulnerable
    execute if score @s BF.EventTimer matches 760 run function asset:mob/0411.behemoth/tick/util/start_invulnerable
    execute if score @s BF.EventTimer matches 846 run function asset:mob/0411.behemoth/tick/util/end_invulnerable

# 終了
    execute if score @s BF.EventTimer matches 886.. run function asset:mob/0411.behemoth/tick/event/terzetto_aligning/end
