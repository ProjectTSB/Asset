#> asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m
#
# ボス名変更
#
# @input args
#   Name: string
#   Visible: boolean
# @within asset:mob/0456.gargo_ex_machina/tick/**

# bossbar変更準備
    $data modify storage asset:temp CO.Name set value "$(Name)"
    $data modify storage asset:temp CO.Visible set value "$(Visible)"
    data modify storage asset:temp CO.Suffix set value '{"translate":"【%s×%s】","with":[{"text":"\\uE300","font":"icon"},{"score":{"name":"@s","objective":"1JK.RemainingPlayerLife"}}]}'
    execute store result storage asset:temp CO.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name_apply.m with storage asset:temp CO
    data remove storage asset:temp CO
