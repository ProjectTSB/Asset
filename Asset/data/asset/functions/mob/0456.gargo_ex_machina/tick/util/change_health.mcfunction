#> asset:mob/0456.gargo_ex_machina/tick/util/change_health
#
# ボス名変更
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 最大HPの100%分回復
    function api:mob/get_max_health
    execute store result storage api: Argument.Delta double 1.0 run data get storage api: Return.MaxHealth 1
    function api:mob/modify_health
    function asset:mob/call.m {method: "update_bossbar"}
