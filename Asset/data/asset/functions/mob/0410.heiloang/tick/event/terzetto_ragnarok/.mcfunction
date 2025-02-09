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
        # execute if score @s BE.EventTimer matches 30 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点回転
        execute if score @s BE.EventTimer matches 350 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/util/turn_center_position

# ロックオンサンダー

# リヒトブリッツェン(回転)

# テンペスト

# 終了
    execute if score @s BE.EventTimer matches 773.. run function asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/end
