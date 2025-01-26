#> asset:mob/0376.convict_v2/tick/07.skill_axe7/alert
#
#
#
# @within function asset:mob/0376.convict_v2/tick/07.skill_axe7/**

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Color:6356992,Scale:[15f,15f,0.01f],Tick:30}

# 召喚
    data modify storage api: Argument.ID set value 2063
    function api:object/summon
