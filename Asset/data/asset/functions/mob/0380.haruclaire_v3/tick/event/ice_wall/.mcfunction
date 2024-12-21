#> asset:mob/0380.haruclaire_v3/tick/event/ice_wall/
#
# アイスバレット
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    execute if score @s AK.EventTimer matches 1 run tag @p[distance=..50] add AK.MainTarget

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/4_0_rod_icewall
    # 移動
        execute if score @s AK.EventTimer matches 1..35 run function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches 53..57 at @s run tp @s ~ ~0.1 ~
        # execute if score @s AK.EventTimer matches 1..14 at @s if entity @a[tag=AK.MainTarget,distance=..7] run tp @s ^ ^ ^-0.6
        # execute if score @s AK.EventTimer matches 1..14 at @s if entity @a[tag=AK.MainTarget,distance=..13] run tp @s ^ ^ ^-0.2
        execute if score @s AK.EventTimer matches 1 at @s run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1.3
    # 攻撃
        # execute if score @s AK.EventTimer matches 29 positioned ^ ^3 ^-3 run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall/attack

    # 地面に戻る
        execute if score @s AK.EventTimer matches 76.. if block ~ ~-0.7 ~ #lib:no_collision run tp @s ^ ^-0.08 ^

# 終了
    execute if score @s AK.EventTimer matches 91.. run function asset:mob/0380.haruclaire_v3/tick/event/ice_wall/end
