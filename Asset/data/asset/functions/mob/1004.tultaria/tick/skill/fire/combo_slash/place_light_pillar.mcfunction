#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/place_light_pillar
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick

#> 行き先マーカー
# @private
#declare tag FacingMarker


# 方向指定
    execute rotated ~ 0 run summon marker ^ ^ ^1 {Tags:["SpreadMarker","FacingMarker"]}

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:2,Range:200,MovePerStep:0.5}

# 召喚
    data modify storage api: Argument.ID set value 2050
    function api:object/summon
