#> asset:mob/0411.behemoth/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/411/tick

# ターゲットは常に確認
    function asset:mob/0411.behemoth/tick/util/check_target

# イベント処理
    function asset:mob/0411.behemoth/tick/event/

# アニメーション用イベントハンドラ
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0411.behemoth/tick/animated_java/tick/
