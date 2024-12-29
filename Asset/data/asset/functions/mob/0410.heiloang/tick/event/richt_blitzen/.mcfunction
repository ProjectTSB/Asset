#> asset:mob/0410.heiloang/tick/event/richt_blitzen/
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：2回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # 攻撃位置予告
        execute if score @s BE.EventTimer matches 23 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/particle_before
        # execute if score @s BE.EventTimer matches 23..90 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/particle_before
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # 攻撃
        # 1
            execute if score @s BE.EventTimer matches 110 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
            execute if score @s BE.EventTimer matches 130 run summon lightning_bolt ~ ~100 ~
            execute if score @s BE.EventTimer matches 130 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
        # 2
            execute if score @s BE.EventTimer matches 115 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_1
            execute if score @s BE.EventTimer matches 135 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_1
            execute if score @s BE.EventTimer matches 155 run summon lightning_bolt ~ ~100 ~
            execute if score @s BE.EventTimer matches 155 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
        # 3
            execute if score @s BE.EventTimer matches 140 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_0
            execute if score @s BE.EventTimer matches 160 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_0
            execute if score @s BE.EventTimer matches 180 run summon lightning_bolt ~ ~100 ~
            execute if score @s BE.EventTimer matches 180 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    # ハード以上：回転する雷を設置
            execute if score @s BE.EventTimer matches 23 if predicate api:global_vars/difficulty/min/hard positioned as @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_spin
            execute if score @s BE.EventTimer matches 90 if predicate api:global_vars/difficulty/min/hard at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_spin

# 待機
    execute if score @s BE.EventTimer matches 175 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 6
    execute if score @s BE.EventTimer matches 175 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 終了
    execute if score @s BE.EventTimer matches 254.. run function asset:mob/0410.heiloang/tick/event/richt_blitzen/end
