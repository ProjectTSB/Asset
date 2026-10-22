#> asset:effect/0409.waxing/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0409.waxing/_/given

# 現在MPを記憶
    function api:mp/get_current
    data modify storage asset:context this.InitialMP set from storage api: Return.CurrentMP
