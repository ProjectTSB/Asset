#> asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/
#
# アイシクルブレード
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/22_0_second_sword
    # 移動
        execute if score @s AK.EventTimer matches 1..70 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 95..100 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target

# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 20 at @s run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 1
    execute if score @s AK.EventTimer matches 32 at @s run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
    execute if score @s AK.EventTimer matches 80 at @s run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2

# 攻撃
    # 攻撃位置決定
        execute if score @s AK.EventTimer matches 65 positioned as @p[tag=AK.MainTarget,distance=..100] run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/set_position
        execute if score @s AK.EventTimer matches 65 run tag @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] add AK.Temp.Start
        execute if score @s AK.EventTimer matches 80 positioned as @p[tag=AK.MainTarget,distance=..100] run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/set_position
    # 1回目
        execute if score @s AK.EventTimer matches 65 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/prediction.m {Rotate:90}
        execute if score @s AK.EventTimer matches 88 run playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
        execute if score @s AK.EventTimer matches 90 rotated ~90 ~25 positioned ~ ~1.8 ~ run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/particle
        execute if score @s AK.EventTimer matches 90 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/attack.m {Rotate:90}
    # 2回目
        execute if score @s AK.EventTimer matches 80 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=!AK.Temp.Start,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/prediction.m {Rotate:30}
        execute if score @s AK.EventTimer matches 85 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=!AK.Temp.Start,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/prediction.m {Rotate:-30}
        execute if score @s AK.EventTimer matches 103 run playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
        execute if score @s AK.EventTimer matches 108 run playsound item.trident.throw hostile @a ~ ~ ~ 2 1.2
        execute if score @s AK.EventTimer matches 105 rotated ~90 ~-35 positioned ~ ~1.8 ~ run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/particle
        execute if score @s AK.EventTimer matches 110 rotated ~90 ~35 positioned ~ ~1.8 ~ run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/particle
        execute if score @s AK.EventTimer matches 105 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=!AK.Temp.Start,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/attack.m {Rotate:30}
        execute if score @s AK.EventTimer matches 110 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=!AK.Temp.Start,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/attack.m {Rotate:-30}

# 終了
    execute if score @s AK.EventTimer matches 162.. run function asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/end
