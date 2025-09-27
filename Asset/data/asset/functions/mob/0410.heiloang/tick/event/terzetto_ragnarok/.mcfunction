#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
        execute if score @s BE.EventTimer matches 30 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position
    # 中心点正面移動
        execute if score @s BE.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^3 ^32 ~180 0
        execute if score @s BE.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# リヒトブリッツェン
    # 詠唱：5回
        # アニメーション再生
            execute if score @s BE.EventTimer matches 65 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
            execute if score @s BE.EventTimer matches 88 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # 発動
        # アニメーション再生
            execute if score @s BE.EventTimer matches 254 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
        # 攻撃
            function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack_main

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 338 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
        execute if score @s BE.EventTimer matches 500 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点回転
        execute if score @s BE.EventTimer matches 305 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position
        execute if score @s BE.EventTimer matches 495 as @e[type=marker,tag=BE.CenterPosition] at @s run tp @s ~ ~ ~ ~90 0
    # 中心点正面移動
        execute if score @s BE.EventTimer matches 495 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^3 ^32 ~180 0
        execute if score @s BE.EventTimer matches 495 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# ロックオンサンダー
    # 詠唱：5回
        # アニメーション再生
            execute if score @s BE.EventTimer matches 535 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
            execute if score @s BE.EventTimer matches 558 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # 発動
        execute if score @s BE.EventTimer matches 660 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
        execute if score @s BE.EventTimer matches 744 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 20
        execute if score @s BE.EventTimer matches 744 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
    # 攻撃
        execute if score @s BE.EventTimer matches 541 run tag @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=6] add BE.AttackTarget
        execute if score @s BE.EventTimer matches 560 as @a[tag=BE.AttackTarget,tag=!PlayerShouldInvulnerable] at @s run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/attack_thunder

# リヒトブリッツェン(回転)
    # 攻撃
        execute if score @s BE.EventTimer matches 558 positioned as @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_circle_spin_richt
        execute if score @s BE.EventTimer matches 630 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/summon_spin_richt

# テンペスト
    # 攻撃
        execute if score @s BE.EventTimer matches 542 at @a[tag=BE.AttackTarget,tag=!PlayerShouldInvulnerable] rotated ~ 0 run function asset:mob/0410.heiloang/tick/event/tempest/attack
        execute if score @s BE.EventTimer matches 542..672 as @a[tag=BE.AttackTarget,tag=!PlayerShouldInvulnerable,distance=..80] at @s rotated ~ 0 positioned ~ ~0.1 ~ run function asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area
        execute if score @s BE.EventTimer matches 542..672 run tag @e[type=item_display,tag=BE.Temp.MoveEnd] remove BE.Temp.MoveEnd

# 終了
    execute if score @s BE.EventTimer matches 783.. run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/end
