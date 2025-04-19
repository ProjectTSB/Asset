#> asset:mob/0338.corundum_twins/init/
# @within asset:mob/alias/338/init

# AJロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_twins_rubiel",Active:true},{Datapack:"AJ_twins_sapphiel",Active:true}]
    function asset:datapack/set_activation_state

function asset:mob/super.init

function asset:mob/0338.corundum_twins/init/app/1.init
function asset:mob/0338.corundum_twins/init/app/2.summon_twins
tp @s ~ ~5 ~
