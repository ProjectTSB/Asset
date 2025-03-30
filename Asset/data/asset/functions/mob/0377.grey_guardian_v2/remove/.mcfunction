#> asset:mob/0377.grey_guardian_v2/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/377/remove

function asset:mob/super.remove


execute as @e[type=item_display,tag=AH.AJ,distance=..100,sort=nearest,limit=1] run function animated_java:grey_guardian/remove/this

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_GreyGuardian",Active:false}]
    function asset:datapack/set_activation_state
