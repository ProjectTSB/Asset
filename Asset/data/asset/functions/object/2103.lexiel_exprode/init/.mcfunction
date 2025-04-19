#> asset:object/2103.lexiel_exprode/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2103/init

# 予告を召喚
# 難易度で予告のサイズを変える
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:34,Color:16720418}
    execute unless predicate api:global_vars/difficulty/hard run data modify storage api: Argument.FieldOverride.Scale set value [8f,8f,0.01f]
    execute if predicate api:global_vars/difficulty/hard run data modify storage api: Argument.FieldOverride.Scale set value [12f,12f,0.01f]
    function api:object/summon
