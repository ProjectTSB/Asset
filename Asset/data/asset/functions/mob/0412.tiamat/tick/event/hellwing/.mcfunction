#> asset:mob/0412.tiamat/tick/event/hellwing/
#
# ヘルウィング
#
# @within asset:mob/0412.tiamat/tick/event/

# タイマー増加
    scoreboard players add @s BG.EventTimer 1

# 詠唱
    # アニメーション再生
        execute if score @s BG.EventTimer matches 1 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_0_cast_start
        execute if score @s BG.EventTimer matches 20 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/3_1_casting
    # ターゲットを向く
        execute if score @s BG.EventTimer matches 1..70 run function asset:mob/0412.tiamat/tick/util/rotate_to_target

# 攻撃
    # アニメーション再生
        execute if score @s BG.EventTimer matches 100 as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/5_deathwing
    # 攻撃位置決定
        execute if score @s BG.EventTimer matches 70 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0412.tiamat/tick/event/hellwing/prediction_long
        execute if score @s BG.EventTimer matches 90 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0412.tiamat/tick/event/hellwing/prediction
    # 攻撃
        execute if score @s BG.EventTimer matches 115 positioned ~ ~-0.7 ~ run function asset:mob/0412.tiamat/tick/event/hellwing/attack
    # 演出
        execute if score @s BG.EventTimer matches 115 positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=7] at @s run function asset:mob/0412.tiamat/tick/event/hellwing/effect
        execute if score @s BG.EventTimer matches 117 positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=7] at @s run function asset:mob/0412.tiamat/tick/event/hellwing/effect
        execute if score @s BG.EventTimer matches 119 positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=BG.Temp.AttackPosition,sort=nearest,limit=7] at @s run function asset:mob/0412.tiamat/tick/event/hellwing/effect

# 演出
    execute if score @s BG.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
    execute if score @s BG.EventTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65
    execute if score @s BG.EventTimer matches 116 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.
    execute if score @s BG.EventTimer matches 135 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.65

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BG.EventTimer matches 150.. run function asset:mob/0412.tiamat/tick/event/hellwing/end
