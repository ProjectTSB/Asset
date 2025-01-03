#> asset:mob/0410.heiloang/tick/event/power_breath/
#
# パワーブレス
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# ターゲット更新
    execute if score @s BE.EventTimer matches 1..155 run function asset:mob/0410.heiloang/tick/util/check_target_hate

# 詠唱：2回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # ターゲット決定
        execute if score @s BE.EventTimer matches 1..155 run function asset:mob/0410.heiloang/tick/util/check_target_hate
        execute if score @s BE.EventTimer matches 1 as @a[tag=BE.HateTarget,distance=..80,limit=1] run tag @s add BE.MainTarget
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 10..100 at @p[tag=BE.MainTarget] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0410.heiloang/tick/event/power_breath/particle_attack_area
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/10_1_power_breath
    # 攻撃位置決定
        execute if score @s BE.EventTimer matches 95 at @p[tag=BE.MainTarget] run function asset:mob/0410.heiloang/tick/event/power_breath/summon_attack_pos_first
    # 攻撃
        execute if score @s BE.EventTimer matches 125 at @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] positioned ^ ^1 ^7 run function asset:mob/0410.heiloang/tick/event/power_breath/attack
# 対象を向く
    execute if score @s BE.EventTimer matches 1..104 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target

# 終了
    execute if score @s BE.EventTimer matches 156.. run function asset:mob/0410.heiloang/tick/event/power_breath/end
