#> asset:mob/0456.gargo_ex_machina/tick/debug/reset
#
# デバッグ用処理 割り込みで強制的に初期状態に戻す
#
# @within asset:mob/0456.gargo_ex_machina/tick/debug/interrupt
# @within asset:mob/0456.gargo_ex_machina/tick/debug/interrupt.m

# メモ
    # execute as @e[type=slime,tag=BE.EntityRoot] at @s run function asset:mob/0456.gargo_ex_machina/tick/debug/reset

# 全アニメーション停止
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/pause_all

# イベント実行
    scoreboard players set @s CO.EventTimer 0
    # execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function asset:mob/0456.gargo_ex_machina/tick/animated_java/play/1_idle
