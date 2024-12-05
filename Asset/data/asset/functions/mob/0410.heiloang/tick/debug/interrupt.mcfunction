#> asset:mob/0410.heiloang/tick/debug/interrupt
#
# デバッグ用処理 割り込みで強制的にイベントを実行する
#
# @within asset:mob/alias/410/tick

# メモ
    # execute as @e[tag=BE.EntityRoot] at @s run function asset:mob/0410.heiloang/tick/debug/interrupt

# 全アニメーション停止
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function animated_java:heiloang_aj/animations/pause_all

# イベント実行
    scoreboard players set @s BE.EventTimer 0
    tag @s add BE.Skill.Ehd
