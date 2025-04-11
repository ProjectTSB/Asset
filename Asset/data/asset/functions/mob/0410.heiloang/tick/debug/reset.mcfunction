#> asset:mob/0410.heiloang/tick/debug/reset
#
# デバッグ用処理 割り込みで強制的に初期状態に戻す
#
# @within asset:mob/0410.heiloang/tick/debug/interrupt
# @within asset:mob/0410.heiloang/tick/debug/interrupt.m

# メモ
    # execute as @e[type=slime,tag=BE.EntityRoot] at @s run function asset:mob/0410.heiloang/tick/debug/reset

# 全アニメーション停止
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function animated_java:heiloang_aj/animations/pause_all

# 中心点の正面方向に移動し、中心点を向く
        # execute at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
        # execute at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# タグ消去
    function asset:mob/0410.heiloang/tick/util/remove_all_tag
    function asset:mob/0410.heiloang/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s BE.EventTimer 0
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
