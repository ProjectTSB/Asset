#> asset:mob/0456.gargo_ex_machina/tick/event/idle/check
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# 待機検証
    execute if entity @s[tag=aj.gargo_ex_machina.animation.idle.playing] run function asset:mob/0456.gargo_ex_machina/tick/event/idle/
    execute if entity @s[tag=aj.gargo_ex_machina.animation.idle_shot.playing] run function asset:mob/0456.gargo_ex_machina/tick/event/idle/
