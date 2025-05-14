#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear/
#
# アイススピア
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/7_0_rod_icespear
    # 移動
        execute if score @s AK.EventTimer matches 81..86 at @s positioned ~ ~0.1 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 87..93 at @s positioned ~ ~0.05 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 94..104 at @s positioned ~ ~-0.05 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 105..110 at @s positioned ~ ~0.15 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
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
        execute if score @s AK.EventTimer matches 15..18 at @r[gamemode=!spectator,distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 35..38 at @r[gamemode=!spectator,distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 55..58 at @r[gamemode=!spectator,distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 70..73 at @r[gamemode=!spectator,distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 80..83 at @r[gamemode=!spectator,distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 85..104 at @r[gamemode=!spectator,distance=..50] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/spread_attack_pos
        execute if score @s AK.EventTimer matches 105 if predicate api:global_vars/difficulty/2_hard as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run tag @s add AK.IceSpear.Spread
        execute if score @s AK.EventTimer matches 105 if predicate api:global_vars/difficulty/min/3_blessless as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=2] run tag @s add AK.IceSpear.Spread

    # 攻撃
        execute if score @s AK.EventTimer matches 35..38 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack
        execute if score @s AK.EventTimer matches 54..57 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack
        execute if score @s AK.EventTimer matches 73..76 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack
        execute if score @s AK.EventTimer matches 87..90 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack
        execute if score @s AK.EventTimer matches 96..99 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack
        execute if score @s AK.EventTimer matches 115..150 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=!AK.IceSpear.Spread,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack
        execute if score @s AK.EventTimer matches 120 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.IceSpear.Spread,distance=..80] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/attack_spread

    # 地面に戻る
        execute if score @s AK.EventTimer matches 136.. if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.08 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 終了
    execute if score @s AK.EventTimer matches 161.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear/end
