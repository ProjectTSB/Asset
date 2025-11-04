#> asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/
#
# テルツェット・プルガトリオ 内→外
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start
        execute if score @s BG.EventTimer matches 30 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_2_cast_land_start
    # 中心点に移動
        execute if score @s BG.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^-0.5 ^ ~0 0
    # 演出
        execute if score @s BG.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.7
        execute if score @s BG.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.6
        execute if score @s BG.EventTimer matches 43 run playsound entity.hoglin.step hostile @a ~ ~ ~ 3 0.5
        execute if score @s BG.EventTimer matches 43 run particle explosion ~ ~1 ~ 2 0 2 0 20 force

# アイシクルロア
    # 詠唱
        execute if score @s BG.EventTimer matches 80 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_3_casting_land
    # アニメーション再生
        execute if score @s BG.EventTimer matches 150 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/9_roar
    # 演出
        execute if score @s BG.EventTimer matches 70 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 150 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 215 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 215 run particle block blackstone_wall ~ ~1 ~ 2 0 2 0 20 force
        execute if score @s BG.EventTimer matches 167..185 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 167..185 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    # 攻撃
        execute if score @s BG.EventTimer matches 70..150 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_circle
        execute if score @s BG.EventTimer matches 130 positioned ~ ~0.2 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_attack_pos
        # 3箇所をランダムに選定
            execute if score @s BG.EventTimer matches 131 run tag @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,distance=12.1..60,sort=random,limit=3] add BG.Temp.Dummy
        execute if score @s BG.EventTimer matches 90 if predicate api:global_vars/difficulty/max/2_hard positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1_long
        execute if score @s BG.EventTimer matches 140 if predicate api:global_vars/difficulty/max/2_hard positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_0_long
        execute if score @s BG.EventTimer matches 150 if predicate api:global_vars/difficulty/min/3_blessless positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1
        execute if score @s BG.EventTimer matches 200 if predicate api:global_vars/difficulty/min/3_blessless positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_0
        execute if score @s BG.EventTimer matches 165 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_1
        execute if score @s BG.EventTimer matches 215 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_0
    # 演出
        execute if score @s BG.EventTimer matches 70..150 run particle cloud ~ ~3 ~ 2 2 2 0.1 1
        execute if score @s BG.EventTimer matches 70..165 rotated ~ ~ positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/effect_particle

# 待機
    execute if score @s BG.EventTimer matches 240 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle

# アイシクルフィールド
    # 詠唱
        execute if score @s BG.EventTimer matches 420 run tag @e[type=item_display,tag=2180.Pillar] add 2180.Pillar.Death
        execute if score @s BG.EventTimer matches 370 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
        execute if score @s BG.EventTimer matches 390 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
    # アニメーション再生
        execute if score @s BG.EventTimer matches 450 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/8_spin
    # 演出
        execute if score @s BG.EventTimer matches 371 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 450 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 383 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 470..485 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[tag=!PlayerShouldInvulnerable,distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 470..485 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[tag=!PlayerShouldInvulnerable,distance=..80] ~ ~ ~ 0.2 0.5 0.2
    # 攻撃
        execute if score @s BG.EventTimer matches 370..450 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_circle
        execute if score @s BG.EventTimer matches 430 positioned ~ ~-0.3 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_attack_pos
        execute if score @s BG.EventTimer matches 390 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_0_long
        execute if score @s BG.EventTimer matches 440 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1_long
        execute if score @s BG.EventTimer matches 450 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_0
        execute if score @s BG.EventTimer matches 500 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1
        execute if score @s BG.EventTimer matches 465 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_0
        execute if score @s BG.EventTimer matches 515 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_1
        execute if score @s BG.EventTimer matches 515 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_pillar
    # 演出
        execute if score @s BG.EventTimer matches 370..450 run particle cloud ~ ~3 ~ 2 2 2 0.1 1
        execute if score @s BG.EventTimer matches 370..465 rotated ~ ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/effect_particle

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 510 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 720 run tag @e[type=item_display,tag=2180.Pillar] add 2180.Pillar.Death
        execute if score @s BG.EventTimer matches 733 unless predicate api:global_vars/difficulty/2_hard as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BG.EventTimer matches 732 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BG.EventTimer matches 1 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 30 run function asset:mob/0412.tiamat/tick/util/end_invulnerable
    execute if score @s BG.EventTimer matches 510 run function asset:mob/0412.tiamat/tick/util/start_invulnerable
    execute if score @s BG.EventTimer matches 733 run function asset:mob/0412.tiamat/tick/util/end_invulnerable

# 終了
    execute if score @s BG.EventTimer matches 773.. run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/end
