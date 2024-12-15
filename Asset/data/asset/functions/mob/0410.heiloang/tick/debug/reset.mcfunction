#> asset:mob/0410.heiloang/tick/debug/reset
#
# デバッグ用処理 割り込みで強制的に初期状態に戻す
#
# @within asset:mob/0410.heiloang/tick/debug/interrupt

# メモ
    # execute as @e[tag=BE.EntityRoot] at @s run function asset:mob/0410.heiloang/tick/debug/reset

# 全アニメーション停止
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function animated_java:heiloang_aj/animations/pause_all

# タグ消去
    function asset:mob/0410.heiloang/tick/util/remove_all_tag
    tag @s remove BE.Skill.Hellfire
    tag @s remove BE.Skill.Adamant
    tag @s remove BE.Skill.Blitz
    tag @s remove BE.Skill.Ehd
    tag @s remove BE.Skill.Move
    tag @s remove BE.Skill.MoveAfterEhd
    tag @s remove BE.Skill.Tornado
    tag @s remove BE.Skill.Sweep
    tag @s remove BE.Skill.Tempest
    tag @s remove BE.Skill.HeilDisaster
    tag @s remove BE.Skill.Flare
    tag @s remove BE.Skill.Plamet

# イベント実行
    scoreboard players set @s BE.EventTimer 0
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle
