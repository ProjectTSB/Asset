#> asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/
#
# アイススピナー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/31_0_second_icespear
    # 移動
        execute if score @s AK.EventTimer matches 1..40 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
    # 演出
        execute if score @s AK.EventTimer matches 2 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 9 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 17 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 30 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 35 at @s run playsound entity.evoker.cast_spell hostile @a ~ ~ ~ 1 1
        execute if score @s AK.EventTimer matches 30 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 69 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 74 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 81 at @s run playsound disabled_sounds:item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
    # 攻撃
        execute if score @s AK.EventTimer matches 5 positioned as @p[tag=AK.MainTarget,distance=..100] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/summon_attack_pos
        execute if score @s AK.EventTimer matches 40 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random] at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start
        execute if score @s AK.EventTimer matches 60 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random] at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start_long

# 終了
    execute if score @s AK.EventTimer matches 101.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/end
