#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m
#
# 
#
# @within
#   function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_target_display
#   function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
#   function asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye_prepare
#   function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone_prepare
#   function asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling_prepare


# データ設定
    $data modify storage api: Argument.FieldOverride set value {Color:$(Color),Interpolation:1,Tick:$(Tick),Scale:$(Scale)}

# 見てる方向へRotationXを設定
    $data modify storage api: Argument.FieldOverride.RotationX set value $(RotationX)

# 召喚
    data modify storage api: Argument.ID set value 2113
    function api:object/summon
