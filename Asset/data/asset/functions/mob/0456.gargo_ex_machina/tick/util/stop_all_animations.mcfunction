#> asset:mob/0456.gargo_ex_machina/tick/util/stop_all_animations
#
# 全アニメーション停止
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 行動停止
    function asset:mob/0456.gargo_ex_machina/tick/util/remove_animation_tag

# アニメーション停止
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/pause_all
