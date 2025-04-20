#> asset:mob/0338.corundum_twins/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/338/remove

function asset:mob/super.remove

# 独自remove処理に移譲
    function asset:mob/0338.corundum_twins/remove/app/1.remove

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_twins_rubiel",Active:false},{Datapack:"AJ_twins_sapphiel",Active:false}]
    function asset:datapack/set_activation_state
