#> asset:mob/1004.tultaria/remove/schedule
# @within function asset:mob/1004.tultaria/remove/

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_Tultaria",Active:false},{Datapack:"AJ_IllusionOfLoyalty",Active:false}]
    function asset:datapack/set_activation_state
