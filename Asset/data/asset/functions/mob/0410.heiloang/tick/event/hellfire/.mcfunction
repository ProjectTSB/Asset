#> asset:mob/0410.heiloang/tick/event/hellfire/
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：3回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/2_1_common_casting
    # 予告：プレイヤー1人対象
        execute if score @s BE.EventTimer matches 23..125 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 発動
    # 開始
        execute if score @s BE.EventTimer matches 125 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/3_0_hellfire_start
    # 1
    # 2
    # 3
    # 4
    # 5

# 終了
