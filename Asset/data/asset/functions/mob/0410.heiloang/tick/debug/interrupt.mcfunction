#> asset:mob/0410.heiloang/tick/debug/interrupt
#
# デバッグ用処理 割り込みで強制的にイベントを実行する
#
# @within asset:mob/alias/410/tick

# メモ
    # execute as @e[type=slime,tag=BE.EntityRoot] at @s run function asset:mob/0410.heiloang/tick/debug/interrupt

# テスト
    # execute at @e[type=marker,tag=BE.CenterPosition] positioned ~-0.3 ~ ~0.2 run return run function asset:mob/0410.heiloang/tick/event/final_flare/particle_floor

# 全アニメーション停止
    function asset:mob/0410.heiloang/tick/debug/reset

# 位置リセット
    execute at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
    execute at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0
    time set 6000

# イベント実行
    scoreboard players set @s BE.EventTimer 0
    # tag @s add BE.Skill.Ter.Purg.Start
    tag @s add BE.Skill.Ehd
    scoreboard players set @s BE.Pb.Count 5
