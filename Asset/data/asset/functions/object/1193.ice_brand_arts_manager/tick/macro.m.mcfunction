#> asset:object/1193.ice_brand_arts_manager/tick/macro.m
#
# 氷の武器の召喚処理(マクロ)
#
# @within asset:object/1193.ice_brand_arts_manager/tick/summon

# 召喚処理
    $execute rotated $(Yaw) $(Pitch) run function api:object/summon
