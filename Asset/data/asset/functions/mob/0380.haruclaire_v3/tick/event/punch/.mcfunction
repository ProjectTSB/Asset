#> asset:mob/0380.haruclaire_v3/tick/event/punch/
#
# ぶんぶんぶん殴り
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    execute if score @s AK.EventTimer matches 1 run tag @p[distance=..50] add AK.MainTarget

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/8_0_rod_punch
    # 移動
        execute if score @s AK.EventTimer matches 1..5 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 20..28 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 38..42 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 9..13 unless entity @a[tag=AK.MainTarget,distance=..1.8] at @s run tp @s ^ ^ ^0.8
        execute if score @s AK.EventTimer matches 35..38 unless entity @a[tag=AK.MainTarget,distance=..1.8] at @s run tp @s ^ ^ ^0.8
        execute if score @s AK.EventTimer matches 39..42 at @s run tp @s ^ ^ ^0.1
        execute if score @s AK.EventTimer matches 51..63 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 51..58 at @s run tp @s ^ ^ ^-0.2
        execute if score @s AK.EventTimer matches 51..58 if entity @a[tag=AK.MainTarget,distance=..8] at @s run tp @s ^ ^ ^-0.6
        execute if score @s AK.EventTimer matches 59..65 at @s run tp @s ^ ^0.3 ^
        execute if score @s AK.EventTimer matches 78..84 at @s run tp @s ^ ^-0.3 ^
        execute if score @s AK.EventTimer matches 116..134 at @s run tp @s ^ ^0.04 ^
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 22 at @s run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.3
        execute if score @s AK.EventTimer matches 52 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 攻撃
        execute if score @s AK.EventTimer matches 14 positioned ^ ^1 ^1 run function asset:mob/0380.haruclaire_v3/tick/event/punch/attack_punch
        execute if score @s AK.EventTimer matches 38 positioned ^ ^1 ^1 run function asset:mob/0380.haruclaire_v3/tick/event/punch/attack_spear
        execute if score @s AK.EventTimer matches 42 positioned ^ ^1 ^1 run function asset:mob/0380.haruclaire_v3/tick/event/punch/attack_spear
        execute if score @s AK.EventTimer matches 66 positioned ^ ^2 ^1 run function asset:mob/0380.haruclaire_v3/tick/event/punch/attack_throw

    # 地面に戻る
        execute if score @s AK.EventTimer matches 144.. if block ~ ~-0.7 ~ #lib:no_collision run tp @s ^ ^-0.08 ^

# 終了
    execute if score @s AK.EventTimer matches 156.. run function asset:mob/0380.haruclaire_v3/tick/event/punch/end
