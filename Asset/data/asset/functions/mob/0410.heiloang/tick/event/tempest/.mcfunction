#> asset:mob/0410.heiloang/tick/event/tempest/
#
# テンペスト
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：3回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # ターゲット決定
        execute if score @s BE.EventTimer matches 1 as @a[distance=..60,sort=random,limit=5] run tag @s add BE.AttackTarget
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 10 at @a[tag=BE.AttackTarget,distance=..80] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/tempest/attack
        execute if score @s BE.EventTimer matches 10..140 as @a[tag=BE.AttackTarget,distance=..80] at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
        execute if score @s BE.EventTimer matches 10..140 run tag @e[type=item_display,tag=BE.Temp.MoveEnd] remove BE.Temp.MoveEnd
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 125 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # 攻撃
        # execute if score @s BE.EventTimer matches 145 at @a[tag=BE.AttackTarget] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/tempest/summon_attack_pos

# 終了
    execute if score @s BE.EventTimer matches 210.. run function asset:mob/0410.heiloang/tick/event/tempest/end
