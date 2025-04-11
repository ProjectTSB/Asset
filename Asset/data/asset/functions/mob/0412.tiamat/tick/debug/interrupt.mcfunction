#> asset:mob/0412.tiamat/tick/debug/interrupt
#
# デバッグ用処理 割り込みで強制的にイベントを実行する
#
# @within asset:mob/alias/410/tick

# メモ
    # execute as @e[type=slime,tag=BG.EntityRoot] at @s run function asset:mob/0412.tiamat/tick/debug/interrupt

# 全アニメーション停止
    function asset:mob/0412.tiamat/tick/debug/reset

# イベント実行
    scoreboard players set @s BG.EventTimer 0
    tag @s add BG.Skill.DarkBreath
