#> asset:mob/0410.heiloang/tick/event/terzetto_aligning/
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 30 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position
    # 中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 25 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^3 ^35 ~180 0
        execute if score @s BE.EventTimer matches 25 at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# 詠唱：8回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 65 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 88 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting

# リヒトブリッツェン
    # アニメーション再生
        execute if score @s BE.EventTimer matches 360 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # 攻撃
        function asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_main

# ヘヴンリースパイク
    # ターゲット決定
        execute if score @s BE.EventTimer matches 90..270 run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/check_target
    # 攻撃範囲予告
        execute if score @s BE.EventTimer matches 90..265 at @p[tag=BE.MainTarget] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/particle_attack_area
    # 攻撃
        execute if score @s BE.EventTimer matches 210 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_heavenly
        execute if score @s BE.EventTimer matches 240 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_heavenly
        execute if score @s BE.EventTimer matches 270 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_heavenly
        execute if score @s BE.EventTimer matches 300 at @p[tag=BE.MainTarget] positioned ~ ~0.2 ~ run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/attack_heavenly

# 待機
    execute if score @s BE.EventTimer matches 444 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 終了
    execute if score @s BE.EventTimer matches 484.. run function asset:mob/0410.heiloang/tick/event/terzetto_aligning/end
