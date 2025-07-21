#> asset:mob/0301.karmic/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/301/remove

#> private
# @private
#declare function animated_java:karmic/remove/this

# 消滅
    execute as @e[type=item_display,tag=8D.AJ,sort=nearest,limit=1] run function animated_java:karmic/remove/this

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_karmic",Active:false}]
    function asset:datapack/set_activation_state

# Super!
    function asset:mob/super.remove
