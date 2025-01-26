#> asset:mob/0410.heiloang/tick/event/hellfire/
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：3回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # ターゲット決定
        execute if score @s BE.EventTimer matches 1..281 run function asset:mob/0410.heiloang/tick/util/check_target
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 10..279 at @p[tag=BE.MainTarget] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0410.heiloang/tick/event/hellfire/particle_attack_area
# 発動
    # 開始
        execute if score @s BE.EventTimer matches 125 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/3_0_hellfire_start
    # 1
        execute if score @s BE.EventTimer matches 156 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/3_1_hellfire_shoot
        execute if score @s BE.EventTimer matches 156 run function asset:mob/0410.heiloang/tick/event/hellfire/attack
    # 2
        execute if score @s BE.EventTimer matches 187 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/3_1_hellfire_shoot
        execute if score @s BE.EventTimer matches 187 run function asset:mob/0410.heiloang/tick/event/hellfire/attack
    # 3
        execute if score @s BE.EventTimer matches 218 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/3_1_hellfire_shoot
        execute if score @s BE.EventTimer matches 218 run function asset:mob/0410.heiloang/tick/event/hellfire/attack
    # 4
        execute if score @s BE.EventTimer matches 249 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/3_1_hellfire_shoot
        execute if score @s BE.EventTimer matches 249 run function asset:mob/0410.heiloang/tick/event/hellfire/attack
    # 5
        execute if score @s BE.EventTimer matches 280 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/3_2_hellfire_shoot_end
        execute if score @s BE.EventTimer matches 280 run function asset:mob/0410.heiloang/tick/event/hellfire/attack

# 対象を向く
    execute if score @s BE.EventTimer matches 1..125 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
    execute if score @s BE.EventTimer matches 140..155 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
    execute if score @s BE.EventTimer matches 172..187 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
    execute if score @s BE.EventTimer matches 203..218 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
    execute if score @s BE.EventTimer matches 234..249 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
    execute if score @s BE.EventTimer matches 265..280 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_target
    execute if score @s BE.EventTimer matches 311..321 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/rotate_to_center

# 終了
    # execute if score @s BE.EventTimer matches 321 run scoreboard players set @s BE.Idle.Count 99
    execute if score @s BE.EventTimer matches 321.. run function asset:mob/0410.heiloang/tick/event/hellfire/end
