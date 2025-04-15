#> asset:mob/0380.haruclaire_v3/tick/event/giant_blade/
#
# ジャイアントブレード
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/24_0_second_sword_line_first
    # 移動
        execute if score @s AK.EventTimer matches 1..10 at @s positioned ^ ^0.1 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if entity @s[tag=!AK.Temp.FixedRotation] if score @s AK.EventTimer matches 1..58 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if entity @s[tag=!AK.Temp.FixedRotation] if score @s AK.EventTimer matches 95..100 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 121..126 at @s if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.2 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 123..126 at @s if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.2 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 125..126 at @s if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.2 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 128..135 at @s positioned ^ ^0.1 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 141.. at @s if block ~ ~-0.7 ~ #lib:no_collision positioned ^ ^-0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp
# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 20 at @s run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s AK.EventTimer matches 37 at @s run playsound item.trident.return hostile @a ~ ~ ~ 2 1.5
    execute if score @s AK.EventTimer matches 54 at @s run playsound item.trident.return hostile @a ~ ~ ~ 2 1.5
    execute if score @s AK.EventTimer matches 65 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 68 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 71 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 74 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 77 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 80 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 83 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 86 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 89 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 92 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 100 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 3 1.3
    execute if score @s AK.EventTimer matches 122 at @s run playsound item.trident.throw hostile @a ~ ~ ~ 2 0.7
    execute if score @s AK.EventTimer matches 124 at @s run playsound item.trident.throw hostile @a ~ ~ ~ 2 0.9
    execute if score @s AK.EventTimer matches 164 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3

# 攻撃
    execute if score @s AK.EventTimer matches 110 at @s run function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/prediction
    execute if score @s AK.EventTimer matches 125 run function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/attack

# 終了
    execute if score @s AK.EventTimer matches 191.. run function asset:mob/0380.haruclaire_v3/tick/event/giant_blade/end
