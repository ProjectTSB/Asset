#> asset:effect/0426.star_cycles/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0426.star_cycles/_/tick

# 前tickのMPが最大でないかつ、現在MPが最大ならエフェクトを切り替える
    function api:entity/player/get_mp_per
    execute unless data storage asset:context this{MPRatio:1.0d} if data storage api: Return{MPPer:1.0d} run function asset:effect/0426.star_cycles/tick/switch
    #MPは記憶
    data modify storage asset:context this.MPRatio set from storage api: Return.MPPer
