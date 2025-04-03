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
    execute unless entity @s[tag=AK.Stat.Latter] as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] unless entity @s[tag=aj.haruclaire_aj.animation.1_0_rod_idle.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/1_0_rod_idle
    execute if entity @s[tag=AK.Stat.Latter] as @e[type=item_display,tag=AK.ModelRoot,sort=nearest,limit=1] unless entity @s[tag=aj.haruclaire_aj.animation.1_0_rod_idle.playing] run function asset:mob/0380.haruclaire_v3/tick/animated_java/play/21_0_second_idle

# 前半戦
    execute unless entity @s[tag=AK.Stat.Latter] run function asset:mob/0380.haruclaire_v3/tick/act/phase_1/

# 後半戦
    execute if entity @s[tag=AK.Stat.Latter] run function asset:mob/0380.haruclaire_v3/tick/act/phase_2/
