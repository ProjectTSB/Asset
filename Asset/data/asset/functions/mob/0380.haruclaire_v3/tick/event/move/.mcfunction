#> asset:mob/0380.haruclaire_v3/tick/event/move/
#
# 移動
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    execute if score @s AK.EventTimer matches 1 run tag @p[distance=..50] add AK.MainTarget

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/3_0_rod_move
        execute if score @s AK.EventTimer matches 194 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle_tween
    # 移動
        function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches ..192 at @s facing entity @p[tag=AK.MainTarget] feet run tp @s ^ ^ ^0.4
        execute if score @s AK.EventTimer matches ..192 at @s unless block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~0.05 ~

# 十分近づくか、一定時間後に終了
    execute if score @s AK.EventTimer matches ..192 if entity @p[tag=AK.MainTarget,distance=..4] run scoreboard players set @s AK.EventTimer 193

    execute if score @s AK.EventTimer matches 200.. run function asset:mob/0380.haruclaire_v3/tick/event/move/end
