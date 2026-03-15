#> asset:mob/0456.gargo_ex_machina/tick/act/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 行動リセット
    # function asset:mob/0456.gargo_ex_machina/tick/util/remove_animation_tag
    # execute as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] unless entity @s[tag=aj.heiloang_aj.animation.1_idle.playing] run function asset:mob/0456.gargo_ex_machina/tick/animated_java/play/1_idle

# 行動回数増加
    # scoreboard players set @s BE.EventTimer -2
    scoreboard players add @s CO.Counter 1

# 前半戦
    execute unless entity @s[tag=CO.IsLatter] run function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/

# 後半
    # execute if entity @s[tag=CO.IsLatter] run function asset:mob/0456.gargo_ex_machina/tick/act/phase_2/
