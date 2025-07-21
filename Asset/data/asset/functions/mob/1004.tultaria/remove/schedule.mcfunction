#> asset:mob/1004.tultaria/remove/schedule
# @within function asset:mob/1004.tultaria/remove/

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_tultaria",Active:false}]
    function asset:datapack/set_activation_state
