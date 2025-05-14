#> asset:mob/0380.haruclaire_v3/tick/event/ice_laser/
#
# アイスレーザー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/9_0_rod_laser
    # 移動
        execute if score @s AK.EventTimer matches 1..64 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 10..19 at @s positioned ^ ^0.2 ^-0.3 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 20..28 at @s positioned ^ ^0.02 ^-0.03 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 10 at @s run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.3 10
        execute if score @s AK.EventTimer matches 10 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 攻撃地点決定
        execute if score @s AK.EventTimer matches 14 at @p[tag=AK.MainTarget,distance=..80] run summon area_effect_cloud ~ ~ ~ {Tags:["AK.Temp.AttackPosition"],Duration:58}
        execute if score @s AK.EventTimer matches 14..64 at @p[tag=AK.MainTarget,distance=..80] run tp @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,limit=1] ~ ~ ~
        execute if score @s AK.EventTimer matches 14..71 positioned ^ ^0.8 ^1.6 facing entity @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80,limit=1] feet run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/prediction
    # 攻撃
        execute if score @s AK.EventTimer matches 71 positioned ^ ^0.8 ^1.6 run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/attack
        execute if score @s AK.EventTimer matches 72..121 if predicate api:global_vars/difficulty/min/normal at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/turn
        execute if score @s AK.EventTimer matches 72..121 if predicate api:global_vars/difficulty/min/3_blessless at @s run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/turn
    # 地面に戻る
        execute if score @s AK.EventTimer matches 155.. if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.12 ^-0.02 run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 終了
    execute if score @s AK.EventTimer matches 171.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_laser/end
