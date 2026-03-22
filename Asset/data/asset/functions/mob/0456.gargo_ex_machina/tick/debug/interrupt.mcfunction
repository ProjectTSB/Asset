#> asset:mob/0456.gargo_ex_machina/tick/debug/interrupt
#
# デバッグ用処理 割り込みで強制的にイベントを実行する
#
# @within asset:mob/alias/456/tick

# メモ
    # execute as @e[type=slime,tag=CO.EntityRoot] at @s run function asset:mob/0456.gargo_ex_machina/tick/debug/interrupt

# テスト
    # execute at @e[type=marker,tag=CO.CenterPosition] positioned ~-0.3 ~ ~0.2 run return run function asset:mob/0456.gargo_ex_machina/tick/event/final_flare/particle_floor

# 全アニメーション停止
    function asset:mob/0456.gargo_ex_machina/tick/util/stop_all_animations

# 位置リセット
    # execute at @e[type=marker,tag=CO.CenterPosition] run tp @s ^ ^ ^ 0 0
    # execute at @s run tp @e[type=item_display,tag=CO.ModelRoot] ~ ~ ~ ~ 0

# イベント実行
    scoreboard players set @s CO.EventTimer 0
    tag @s add CO.Skill.HalfBeamShot
    # tag @s add CO.Skill.BluteForce
    # tag @s add CO.Skill.BluteForce.Pt.Tutorial
