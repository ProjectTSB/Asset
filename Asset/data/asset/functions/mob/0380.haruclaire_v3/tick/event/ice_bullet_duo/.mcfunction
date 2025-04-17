#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/
#
# アイスバレット・エトワール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/25_0_second_icebullet_duo
    # 移動
        execute if score @s AK.EventTimer matches 35..55 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 35..55 at @s positioned ^ ^ ^-0.1 run function asset:mob/0380.haruclaire_v3/tick/util/tp
    # 第1波
        execute if score @s AK.EventTimer matches 50 rotated ~ 0 run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/attack_0
    # 第2波
        execute if score @s AK.EventTimer matches 70 rotated ~ 0 run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/attack_1

# 演出
    execute if score @s AK.EventTimer matches 2 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3
    execute if score @s AK.EventTimer matches 19 at @s run playsound block.note_block.snare hostile @a ~ ~ ~ 2 1.1
    execute if score @s AK.EventTimer matches 19 at @s run playsound block.note_block.snare hostile @a ~ ~ ~ 2 1.3
    execute if score @s AK.EventTimer matches 37 at @s run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1.3

# 終了
    execute if score @s AK.EventTimer matches 127.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet_duo/end
