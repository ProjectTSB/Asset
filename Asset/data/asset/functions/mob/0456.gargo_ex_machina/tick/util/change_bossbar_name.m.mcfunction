#> asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m
#
# ボス名変更
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# bossbar変更準備
    $data modify storage asset:temp CO.Name set value "$(Name)"
    $data modify storage asset:temp CO.Visible set value "$(Visible)"
    execute store result storage asset:temp CO.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name_apply.m with storage asset:temp CO
    data remove storage asset:temp CO
    
# 最大HPの100%分回復
    function api:mob/get_max_health
    execute store result storage api: Argument.Delta double 1.0 run data get storage api: Return.MaxHealth 1
    function api:mob/modify_health
    function asset:mob/call.m {method: "update_bossbar"}
