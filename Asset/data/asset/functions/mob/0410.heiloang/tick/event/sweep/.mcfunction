#> asset:mob/0410.heiloang/tick/event/sweep/
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/6_sweep_breath
    # 予告
        execute if score @s BE.EventTimer matches 5 at @e[type=marker,tag=BE.CenterPosition] rotated ~-90 ~ positioned ^ ^ ^19.5 rotated ~180 ~ run function asset:mob/0410.heiloang/tick/event/sweep/prediction
    # 攻撃
        execute if score @s BE.EventTimer matches 47..104 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0410.heiloang/tick/event/sweep/get_attack_position.m with entity @s data.locators.locator_head
    # 演出
        execute if score @s BE.EventTimer matches 45 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0410.heiloang/tick/event/sweep/text_start with entity @s data.locators.beam_start
        execute if score @s BE.EventTimer matches 45..105 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0410.heiloang/tick/event/sweep/text with entity @s data.locators.beam_start
    # 角度
        execute if score @s BE.EventTimer matches 10 run tp @s ~ ~ ~ ~70 0
        execute if score @s BE.EventTimer matches 79..106 run tp @s ~ ~ ~ ~-8 ~
        execute if score @s BE.EventTimer matches 130 facing entity @e[type=marker,tag=BE.CenterPosition] feet run tp @s ~ ~ ~ ~ 0
    # 位置決定
            execute if score @s BE.EventTimer matches 10 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=BE.CenterPosition] positioned ~ ~0.5 ~ run function asset:mob/0410.heiloang/tick/event/tornado/summon_attack_pos
        # 攻撃
            execute if score @s BE.EventTimer matches 11 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 13 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 15 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 17 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 19 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 21 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 23 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 25 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 27 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 29 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
            execute if score @s BE.EventTimer matches 31 at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0410.heiloang/tick/event/tornado/attack_wind_burst
# 終了
    execute if score @s BE.EventTimer matches 136.. run function asset:mob/0410.heiloang/tick/event/sweep/end
