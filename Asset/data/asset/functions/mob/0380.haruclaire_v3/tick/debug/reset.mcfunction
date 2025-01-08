#> asset:mob/0380.haruclaire_v3/tick/debug/reset
#
# デバッグ用処理 割り込みで強制的に初期状態に戻す
#
# @within asset:mob/0380.haruclaire_v3/tick/debug/interrupt
# @within asset:mob/0380.haruclaire_v3/tick/debug/interrupt.m

# メモ
    # execute as @e[tag=BE.EntityRoot] at @s run function asset:mob/0380.haruclaire_v3/tick/debug/reset

# 全アニメーション停止
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_aj/animations/pause_all

# タグ消去
    function asset:mob/0380.haruclaire_v3/tick/util/remove_all_tag
    function asset:mob/0380.haruclaire_v3/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s AK.EventTimer 0
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle
