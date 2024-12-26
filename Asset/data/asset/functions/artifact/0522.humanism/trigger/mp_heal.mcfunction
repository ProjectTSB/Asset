#> asset:artifact/0522.humanism/trigger/mp_heal
#
#
#
# @within function asset:artifact/0522.humanism/trigger/3.main

# 自身以外のプレイヤー全回復
    data modify storage api: Argument.Fluctuation set value 150
    function api:mp/fluctuation
