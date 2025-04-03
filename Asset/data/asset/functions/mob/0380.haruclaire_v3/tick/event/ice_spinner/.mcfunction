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
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/32_0_second_icespinner
    # 移動
        execute if score @s AK.EventTimer matches 1..40 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
    # 演出
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 54 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 攻撃
        execute if score @s AK.EventTimer matches 5 positioned as @p[tag=AK.MainTarget,distance=..100] run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/summon_attack_pos
        execute if score @s AK.EventTimer matches 22 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,sort=random] at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start
        execute if score @s AK.EventTimer matches 42 as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,sort=random] at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start_long

# 終了
    execute if score @s AK.EventTimer matches 61.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/end
