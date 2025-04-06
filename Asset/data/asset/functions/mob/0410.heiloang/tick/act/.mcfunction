#> asset:mob/0410.heiloang/tick/act/
#
# Mobのtick時の処理
#
# @within asset:mob/0410.heiloang/tick/**

# デバッグ用
    return 0

# 行動リセット
    function asset:mob/0410.heiloang/tick/util/remove_animation_tag
    execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] unless entity @s[tag=aj.heiloang_aj.animation.1_idle.playing] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 行動回数増加
    scoreboard players set @s BE.EventTimer -2
    scoreboard players add @s BE.ActCount 1

# フェーズ1
    execute if score @s BE.Phase matches ..0 run function asset:mob/0410.heiloang/tick/act/phase_1/

# フェーズ2
    execute if score @s BE.Phase matches 1 run function asset:mob/0410.heiloang/tick/act/phase_2/

# フェーズ3
    execute if score @s BE.Phase matches 2 run function asset:mob/0410.heiloang/tick/act/phase_3/

# フェーズ4
    execute if score @s BE.Phase matches 3.. run function asset:mob/0410.heiloang/tick/act/phase_4/
