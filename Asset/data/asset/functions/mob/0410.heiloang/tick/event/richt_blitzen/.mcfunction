#> asset:mob/0410.heiloang/tick/event/richt_blitzen/
#
# リヒトブリッツェン
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# パターン決定
    execute if score @s BE.EventTimer matches 1 if predicate lib:random_pass_per/50 run tag @s add BE.Temp.Blitz.PatternB

# 詠唱：2回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # 攻撃
        execute if entity @s[tag=!BE.Temp.Blitz.PatternB] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_a
        execute if entity @s[tag=BE.Temp.Blitz.PatternB] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/attack_pattern_b
        # ノーマル以上：プレイヤー位置に落雷設置
            execute if score @s BE.EventTimer matches 112 if predicate api:global_vars/difficulty/min/normal positioned as @a[distance=..80] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_point
            execute if score @s BE.EventTimer matches 137 if predicate api:global_vars/difficulty/min/normal positioned as @a[distance=..80] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_point
            execute if score @s BE.EventTimer matches 162 if predicate api:global_vars/difficulty/min/normal positioned as @a[distance=..80] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_point
        # ハード以上：回転する雷を設置
            execute if score @s BE.EventTimer matches 23 if predicate api:global_vars/difficulty/min/3_blessless positioned as @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_circle_spin
            execute if score @s BE.EventTimer matches 90 if predicate api:global_vars/difficulty/min/3_blessless at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/richt_blitzen/summon_spin

# 待機
    execute if score @s BE.EventTimer matches 175 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 6
    execute if score @s BE.EventTimer matches 175 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 終了
    execute if score @s BE.EventTimer matches 215.. if predicate api:global_vars/difficulty/max/normal run function asset:mob/0410.heiloang/tick/event/richt_blitzen/end
    execute if score @s BE.EventTimer matches 254.. if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0410.heiloang/tick/event/richt_blitzen/end
