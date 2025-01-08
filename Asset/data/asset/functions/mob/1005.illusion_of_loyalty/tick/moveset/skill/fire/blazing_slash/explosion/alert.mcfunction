#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/alert
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:16741120,Interpolation:5,Tick:30,Scale:[2f,32.0f]}

# 見てる方向へRotationXを設定
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]

# 召喚
    data modify storage api: Argument.ID set value 2113
    function api:object/summon
