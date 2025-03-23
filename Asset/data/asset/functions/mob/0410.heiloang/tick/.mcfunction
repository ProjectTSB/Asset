#> asset:mob/0410.heiloang/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/410/tick

# 演出
    execute if entity @s[tag=BE.State.Raging] run particle crimson_spore ~ ~3 ~ 3 3 3 1 3
    execute if entity @s[tag=BE.State.Raging] run effect give @a[distance=..80] night_vision 15 0 true

# スキル用イベントハンドラ
    function asset:mob/0410.heiloang/tick/event/

# アニメーション用イベントハンドラ
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/animated_java/tick/
