#> asset:mob/0456.gargo_ex_machina/tick/debug/act
#
# デバッグ用処理 割り込みで強制的にイベントを実行する
#
# @within asset:mob/alias/456/tick

# メモ
    # execute as @e[type=slime,tag=CO.EntityRoot] at @s run function asset:mob/0456.gargo_ex_machina/tick/debug/act

# 全アニメーション停止
    function asset:mob/0456.gargo_ex_machina/tick/debug/reset

# 位置リセット
    # execute at @e[type=marker,tag=CO.CenterPosition] run tp @s ^ ^ ^ 0 0
    # execute at @s run tp @e[type=item_display,tag=CO.ModelRoot] ~ ~ ~ ~ 0

# イベント実行
    function asset:mob/0456.gargo_ex_machina/tick/act/
