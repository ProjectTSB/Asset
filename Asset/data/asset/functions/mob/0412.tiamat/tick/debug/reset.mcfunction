#> asset:mob/0412.tiamat/tick/debug/reset
#
# デバッグ用処理 割り込みで強制的に初期状態に戻す
#
# @within asset:mob/0412.tiamat/tick/debug/interrupt
# @within asset:mob/0412.tiamat/tick/debug/interrupt.m

# メモ
    # execute as @e[tag=BE.EntityRoot] at @s run function asset:mob/0412.tiamat/tick/debug/reset

# タグ消去
    # function asset:mob/0412.tiamat/tick/util/remove_all_tag
    function asset:mob/0412.tiamat/tick/util/remove_animation_tag

# イベント実行
    scoreboard players set @s BG.EventTimer 0
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] run function asset:mob/0412.tiamat/tick/animated_java/play/1_idle
