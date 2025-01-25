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
        execute if score @s BG.EventTimer matches 200 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/9_roar
    # 演出
        execute if score @s BG.EventTimer matches 70 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 200 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 265 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 265 run particle block blackstone_wall ~ ~1 ~ 2 0 2 0 20 force
        execute if score @s BG.EventTimer matches 217..235 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 217..235 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    # 攻撃
        execute if score @s BG.EventTimer matches 70..200 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_circle
        execute if score @s BG.EventTimer matches 180 positioned ~ ~0.2 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_attack_pos
        # 3箇所をランダムに選定
            execute if score @s BG.EventTimer matches 181 run tag @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,distance=12.1..60,sort=random,limit=3] add BG.Temp.Dummy
        execute if score @s BG.EventTimer matches 200 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1
        execute if score @s BG.EventTimer matches 250 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_0
        execute if score @s BG.EventTimer matches 215 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_1
        execute if score @s BG.EventTimer matches 265 positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_0
    # 演出
        execute if score @s BG.EventTimer matches 70..200 run particle cloud ~ ~3 ~ 2 2 2 0.1 1
        execute if score @s BG.EventTimer matches 70..215 rotated ~ ~ positioned ~ ~0.5 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/effect_particle

# 待機
    execute if score @s BG.EventTimer matches 290 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle

# アイシクルフィールド
    # 詠唱
        execute if score @s BG.EventTimer matches 470 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
        execute if score @s BG.EventTimer matches 490 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
    # アニメーション再生
        execute if score @s BG.EventTimer matches 600 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/8_spin
    # 演出
        execute if score @s BG.EventTimer matches 471 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 600 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 633 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
        execute if score @s BG.EventTimer matches 620..635 positioned ~ ~32 ~ run playsound entity.wither.hurt hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
        execute if score @s BG.EventTimer matches 620..635 positioned ~ ~32 ~ run playsound entity.phantom.death hostile @a[distance=..80] ~ ~ ~ 0.2 0.5 0.2
    # 攻撃
        execute if score @s BG.EventTimer matches 470..600 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_circle
        execute if score @s BG.EventTimer matches 580 positioned ~ ~-0.3 ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_attack_pos
        execute if score @s BG.EventTimer matches 600 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_0
        execute if score @s BG.EventTimer matches 650 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/prediction_1
        execute if score @s BG.EventTimer matches 615 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_0
        execute if score @s BG.EventTimer matches 665 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/attack_1
        execute if score @s BG.EventTimer matches 665 run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/summon_pillar
    # 演出
        execute if score @s BG.EventTimer matches 470..600 run particle cloud ~ ~3 ~ 2 2 2 0.1 1
        execute if score @s BG.EventTimer matches 470..615 rotated ~ ~ run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_a/effect_particle

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 660 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_0_flymove_start

# 移動
    # アニメーション再生
        execute if score @s BG.EventTimer matches 846 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/6_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BG.EventTimer matches 845 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^-12.5 ^ ^15.5 ~180 0

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 886.. run function asset:mob/0412.tiamat/tick/event/terzetto_purgatorio_b/end
