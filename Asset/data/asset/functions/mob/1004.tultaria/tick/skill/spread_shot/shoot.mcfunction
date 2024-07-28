#> asset:mob/1004.tultaria/tick/skill/spread_shot/shoot
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/spread_shot/tick

# 弾速設定
    data modify storage rw_shotspeed: Speed set value 2

# 拡散させるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["SpreadMarker","FacingMarker"]}
    
# ステータス設定
    data modify storage lib: Argument.Distance set value 5
    data modify storage lib: Argument.Spread set value 2.5

# 召喚
    function asset:mob/1004.tultaria/tick/skill/common/shot/summon