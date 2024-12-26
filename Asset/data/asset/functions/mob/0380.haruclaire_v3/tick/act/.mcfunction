#> asset:mob/0380.haruclaire_v3/tick/act/
#
# Mobのtick時の処理
#
# @within asset:mob/0380.haruclaire_v3/tick/**

# デバッグ用
    # return 0

# 行動リセット
    scoreboard players set @s AK.EventTimer 0
    function asset:mob/0380.haruclaire_v3/tick/util/remove_animation_tag
    execute as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] unless entity @s[tag=aj.haruclaire_aj.animation.1_0_rod_idle.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle

# 前半戦
    function asset:mob/0380.haruclaire_v3/tick/act/phase_1/
