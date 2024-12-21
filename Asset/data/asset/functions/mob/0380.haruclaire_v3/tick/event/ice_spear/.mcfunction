#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear/
#
# アイススピア
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/7_0_rod_icespear
    # 移動
        execute if score @s AK.EventTimer matches 81..86 at @s run tp @s ~ ~0.1 ~
        execute if score @s AK.EventTimer matches 87..93 at @s run tp @s ~ ~0.05 ~
        execute if score @s AK.EventTimer matches 94..104 at @s run tp @s ~ ~-0.05 ~
        execute if score @s AK.EventTimer matches 105..110 at @s run tp @s ~ ~0.15 ~
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 20 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 40 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 52 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 63 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 71 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 76 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 80 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 82 at @s run playsound entity.breeze.jump hostile @a ~ ~ ~ 1 0.5
        execute if score @s AK.EventTimer matches 112 at @s run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1
        execute if score @s AK.EventTimer matches 144 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 112 at @s run particle firework ^ ^2.5 ^0.5 0 0 0 0.5 30
    # 攻撃地点設置
        execute if score @s AK.EventTimer matches 15 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 20 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 25 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 30 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 35 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 40 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 45 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 50 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 55 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 60 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 65 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 70 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 75 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 80 at @r[distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos

    # 攻撃
        execute if score @s AK.EventTimer matches 112..135 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack

    # 地面に戻る
        execute if score @s AK.EventTimer matches 136.. if block ~ ~-0.7 ~ #lib:no_collision run tp @s ^ ^-0.08 ^

# 終了
    execute if score @s AK.EventTimer matches 161.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/end
