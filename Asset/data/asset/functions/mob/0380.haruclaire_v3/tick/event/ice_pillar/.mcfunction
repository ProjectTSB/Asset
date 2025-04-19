#> asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/
#
# アイスピラー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/6_0_rod_icefang
    # 移動
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 54 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 攻撃
        execute if score @s AK.EventTimer matches 5 positioned ~ ~4 ~ run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/summon_attack_position
        execute if score @s AK.EventTimer matches 15 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
        execute if score @s AK.EventTimer matches 20 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
        execute if score @s AK.EventTimer matches 25 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
        execute if score @s AK.EventTimer matches 30 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
        execute if score @s AK.EventTimer matches 35 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
        execute if score @s AK.EventTimer matches 40 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack
        execute if score @s AK.EventTimer matches 45 at @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,sort=random,limit=1] run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/attack

# 終了
    execute if score @s AK.EventTimer matches 71.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_pillar/end
