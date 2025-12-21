#> asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/
#
# アイスバレット・ソレイユ
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/6_1_rod_super_icebullet
    # 移動
        execute if score @s AK.EventTimer matches 1..69 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 1..15 at @s positioned ~ ~0.2 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 1 at @s run particle firework ~ ~1 ~ 0.1 0.1 0.1 0.3 10
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 召喚
        execute if score @s AK.EventTimer matches 15 positioned ^ ^4 ^2 run function asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/attack

    # 地面に戻る
        execute if score @s AK.EventTimer matches 111..120 if block ~ ~-0.7 ~ #lib:no_collision/ positioned ^ ^-0.08 ^-0.02 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches 121..133 if block ~ ~-0.7 ~ #lib:no_collision/ positioned ^ ^-0.18 ^-0.02 run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 終了
    execute if score @s AK.EventTimer matches 131.. run function asset:mob/0380.haruclaire_v3/tick/event/super_ice_bullet/end
