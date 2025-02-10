#> asset:mob/0410.heiloang/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/410/tick

# スキル用イベントハンドラ
    function asset:mob/0410.heiloang/tick/event/

# アニメーション用イベントハンドラ
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/animated_java/tick/
