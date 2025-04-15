#> asset:mob/0380.haruclaire_v3/tick/event/move/
#
# 移動
#
# @within asset:mob/0380.haruclaire_v3/tick/event/

# タイマー増加
    scoreboard players add @s AK.EventTimer 1

# ターゲット決定
    function asset:mob/0380.haruclaire_v3/tick/util/check_target

# 発射
    # アニメーション再生
        execute if score @s AK.EventTimer matches 1 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/3_0_rod_move
        execute if score @s AK.EventTimer matches 194 as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle_tween
    # 移動
        function asset:mob/0380.haruclaire_v3/tick/util/rotate_to_target
        execute if score @s AK.EventTimer matches ..192 at @s facing entity @p[tag=AK.MainTarget,distance=..80] feet positioned ^ ^ ^0.4 run function asset:mob/0380.haruclaire_v3/tick/util/tp
        execute if score @s AK.EventTimer matches ..192 at @s unless block ~ ~-1 ~ #lib:no_collision positioned ~ ~0.05 ~ run function asset:mob/0380.haruclaire_v3/tick/util/tp

# 十分近づくか、一定時間後に終了
    execute if score @s AK.EventTimer matches ..192 if entity @p[tag=AK.MainTarget,distance=..5] run scoreboard players set @s AK.EventTimer 193

    execute if score @s AK.EventTimer matches 200.. run function asset:mob/0380.haruclaire_v3/tick/event/move/end
