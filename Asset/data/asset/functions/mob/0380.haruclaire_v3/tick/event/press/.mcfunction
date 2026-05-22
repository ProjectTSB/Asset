#> asset:mob/0380.haruclaire_v3/tick/event/press/
#
# 押しつぶし
# またの名を The Shimaenaga Pressing
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# アニメーション再生
    execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,distance=..80,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/29_0_second_press

# 移動
    execute if score @s AK.EventTimer matches 65..90 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
    execute if score @s AK.EventTimer matches 90 positioned as @p[tag=AK.MainTarget,distance=..80] run function asset:mob/0380.haruclaire_v3/tick/event/press/set_position
    execute if score @s AK.EventTimer matches 90 run function asset:mob/0380.haruclaire_v3/tick/util/calc_vector.m {Tick:11}
    execute if score @s AK.EventTimer matches 95..105 run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector
    execute if score @s AK.EventTimer matches 106..182 at @s if block ~ ~-0.1 ~ #lib:no_collision/ positioned ^ ^-0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp

    execute if score @s AK.EventTimer matches 110..129 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
    execute if score @s AK.EventTimer matches 129 positioned as @p[tag=AK.MainTarget,distance=..80] run function asset:mob/0380.haruclaire_v3/tick/event/press/set_position
    execute if score @s AK.EventTimer matches 129 run function asset:mob/0380.haruclaire_v3/tick/util/calc_vector.m {Tick:11}
    execute if score @s AK.EventTimer matches 134..144 run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector

    execute if score @s AK.EventTimer matches 150..171 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
    execute if score @s AK.EventTimer matches 167 positioned as @p[tag=AK.MainTarget,distance=..80] run function asset:mob/0380.haruclaire_v3/tick/event/press/set_position
    execute if score @s AK.EventTimer matches 167 run function asset:mob/0380.haruclaire_v3/tick/util/calc_vector.m {Tick:11}
    execute if score @s AK.EventTimer matches 172..182 run function asset:mob/0380.haruclaire_v3/tick/util/tp_using_vector

    execute if score @s AK.EventTimer matches 225.. unless block ~ ~-0.75 ~ #lib:no_collision/ positioned ^ ^0.05 ^ run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 攻撃
    execute if score @s AK.EventTimer matches 114 run function asset:mob/0380.haruclaire_v3/tick/event/press/attack_0
    execute if score @s AK.EventTimer matches 151 run function asset:mob/0380.haruclaire_v3/tick/event/press/attack_0
    execute if score @s AK.EventTimer matches 195 run function asset:mob/0380.haruclaire_v3/tick/event/press/attack_1

# 演出
    execute if score @s AK.EventTimer matches 45..63 run function asset:mob/0380.haruclaire_v3/tick/event/press/sound_flap
    execute if score @s AK.EventTimer matches 226.. run function asset:mob/0380.haruclaire_v3/tick/event/press/sound_flap
    execute if score @s AK.EventTimer matches 2 run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 17 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 3 1.6
    execute if score @s AK.EventTimer matches 37 run playsound entity.puffer_fish.blow_up hostile @a ~ ~ ~ 2 1.3
    execute if score @s AK.EventTimer matches 66 run playsound disabled_sounds:item.armor.equip_leather hostile @a ~ ~ ~ 2 1.3
    execute if score @s AK.EventTimer matches 95 run playsound entity.puffer_fish.blow_up hostile @a ~ ~ ~ 2 0.7
    execute if score @s AK.EventTimer matches 134 run playsound entity.puffer_fish.blow_up hostile @a ~ ~ ~ 2 0.7
    execute if score @s AK.EventTimer matches 172 run playsound entity.puffer_fish.blow_up hostile @a ~ ~ ~ 2 0.7
    execute if score @s AK.EventTimer matches 222 run playsound entity.puffer_fish.blow_out hostile @a ~ ~ ~ 2 1.3

# 終了
    execute if score @s AK.EventTimer matches 258.. run function asset:mob/0380.haruclaire_v3/tick/event/press/end
