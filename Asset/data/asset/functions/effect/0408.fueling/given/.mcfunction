#> asset:effect/0408.fueling/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0408.fueling/_/given

# 現在MPを記憶
    function api:mp/get_current
    data modify storage asset:context this.InitialMP set from storage api: Return.CurrentMP
