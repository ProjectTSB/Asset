#> asset:mob/1004.tultaria/tick/skill/spread_shot/shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/spread_shot/tick

#> 行き先マーカー
# @private
#declare tag FacingMarker
#declare tag SpreadMarker

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:1,Range:60,MovePerStep:0.5}

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker","FacingMarker"]}

# ステータス設定
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 2.5

# 召喚
    function asset:mob/1004.tultaria/tick/skill/common/shot/summon
