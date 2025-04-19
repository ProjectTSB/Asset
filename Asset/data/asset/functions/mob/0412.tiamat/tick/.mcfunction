#> asset:mob/0412.tiamat/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/412/tick

# ターゲットは常に確認
    function asset:mob/0412.tiamat/tick/util/check_target

# イベント処理
    function asset:mob/0412.tiamat/tick/event/

# アニメーション用イベントハンドラ
    execute as @e[type=item_display,tag=BG.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0412.tiamat/tick/animated_java/tick/
