#> asset:mob/0411.behemoth/tick/debug/reset
#
# デバッグ用処理 割り込みで強制的に初期状態に戻す
#
# @within asset:mob/0411.behemoth/tick/debug/interrupt

# メモ
    # execute as @e[tag=BE.EntityRoot] at @s run function asset:mob/0411.behemoth/tick/debug/reset

# 全アニメーション停止
    # execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function animated_java:behemoth_aj/animations/pause_all

# タグ消去
    function asset:mob/0411.behemoth/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s BF.EventTimer 0
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/1_idle
