#> asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/
#
# アイススピア
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 攻撃
    # 中心点回転
        execute if score @s AK.EventTimer matches 1 as @e[type=marker,tag=AK.CenterPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/turn_center_position
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/31_0_second_icespear
    # 移動
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 攻撃
        execute if score @s AK.EventTimer matches 34 at @s rotated ~ 0 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/summon_attack_pos
        execute if score @s AK.EventTimer matches 35 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random] at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/attack
    # 演出
        execute if score @s AK.EventTimer matches 2 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 9 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 17 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 30 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 35 at @s run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1
        execute if score @s AK.EventTimer matches 30 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 69 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 74 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 81 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3

# 終了
    execute if score @s AK.EventTimer matches 90.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_spear_duo/end
