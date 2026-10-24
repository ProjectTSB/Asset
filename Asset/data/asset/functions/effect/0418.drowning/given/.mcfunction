#> asset:effect/0418.drowning/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0418.drowning/_/given

# 現在のMP値を保存
    function api:mp/get_current
    data modify storage asset:context this.InitialMP set from storage api: Return.CurrentMP
