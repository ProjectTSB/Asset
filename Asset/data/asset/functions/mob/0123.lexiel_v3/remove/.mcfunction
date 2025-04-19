#> asset:mob/0123.lexiel_v3/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/123/remove

function asset:mob/super.remove

execute as @e[type=item_display,tag=3F.AJ,sort=nearest,limit=1] run function animated_java:lexiel/remove/this

    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_lexiel",Active:false}]
    function asset:datapack/set_activation_state
