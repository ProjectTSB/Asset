#> asset:object/2070.potion/kill/thunder/mp_reduce
#
# 実行者のプレイヤーのMPを減らす
#
# @within function asset:object/2070.potion/kill/thunder/

# MP減らす
    data modify storage api: Argument.Fluctuation set from storage asset:context this.MPReduceVal
    function api:mp/fluctuation
