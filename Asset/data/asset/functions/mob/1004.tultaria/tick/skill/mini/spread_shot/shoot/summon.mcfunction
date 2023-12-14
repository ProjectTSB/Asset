#> asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/mini/spread_shot/shoot/

#> 行き先マーカーと弾速ストレージ
# @private
#declare tag FacingMarker
#declare storage rw_shotspeed:

# 弾速設定
    data modify storage rw_shotspeed: Speed set value 2

# 召喚
    data modify storage api: Argument.ID set value 1013
    function api:mob/summon

# リセット
    kill @e[type=marker,tag=FacingMarker]
    data remove storage rw_shotspeed: Speed