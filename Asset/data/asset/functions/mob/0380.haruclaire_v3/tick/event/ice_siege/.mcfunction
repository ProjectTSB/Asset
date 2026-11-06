#> asset:mob/0380.haruclaire_v3/tick/event/ice_siege/
#
# アイスシージ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/4_0_rod_icewall
    # 移動
        execute if score @s AK.EventTimer matches 1..15 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 53..57 at @s positioned ~ ~0.1 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 12 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 32 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 57 at @s run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 57 at @s run particle electric_spark ^-0.6 ^3 ^ 0 0 0 0.5 30
    # 攻撃
        execute if score @s AK.EventTimer matches 15 at @p[tag=AK.MainTarget,distance=..100] rotated ~ 0 run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/summon_attack_pos
        execute if score @s AK.EventTimer matches 15 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 18 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 21 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 24 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 27 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 30 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 43 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 46 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 49 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 52 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 55 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack
        execute if score @s AK.EventTimer matches 58 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=arbitrary,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/attack

    # 地面に戻る
        execute if score @s AK.EventTimer matches 76.. if block ~ ~-0.7 ~ #lib:no_collision/ positioned ^ ^-0.08 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 終了
    execute if score @s AK.EventTimer matches 91.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_siege/end
