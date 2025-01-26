#> asset:mob/0380.haruclaire_v3/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/380/tick

# キラキラ
    execute if predicate lib:random_pass_per/30 run particle electric_spark ~ ~1 ~ 2 2 2 0 1
    execute if predicate lib:random_pass_per/15 run particle firework ~ ~1 ~ 2 2 2 0 1

# AI処理

# スキル用イベントハンドラ
    function asset:mob/0380.haruclaire_v3/tick/event/

# アニメーション用イベントハンドラ
    execute at @s as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] run function asset:mob/0380.haruclaire_v3/tick/animated_java/tick/
