#> asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/
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
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/5_0_rod_icebullet
    # 移動
        execute if score @s AK.EventTimer matches 1..69 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 1..14 at @s positioned ~ ~0.2 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1..14 at @s if entity @a[tag=AK.MainTarget,distance=..7] positioned ^ ^ ^-0.6 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1..14 at @s if entity @a[tag=AK.MainTarget,distance=..13] positioned ^ ^ ^-0.2 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1 at @s run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.3 10
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 第1波
        execute if score @s AK.EventTimer matches 29 positioned ^ ^3 ^-3 run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack
    # 第2波
        execute if score @s AK.EventTimer matches 49 positioned ^ ^4 ^-3 run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_horizontal
    # 第3波
        execute if score @s AK.EventTimer matches 69 positioned ^ ^6 ^-4 run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/attack_circle

    # 地面に戻る
        execute if score @s AK.EventTimer matches 85..105 if block ~ ~-0.7 ~ #lib:no_collision/ positioned ^ ^-0.08 ^-0.02 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 106..133 if block ~ ~-0.7 ~ #lib:no_collision/ positioned ^ ^-0.15 ^-0.02 run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 終了
    execute if score @s AK.EventTimer matches 114.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_bullet/end
