#> asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name
#
# ボス名変更
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# bossbar消去
    execute store result storage asset:temp CO.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m with storage asset:temp CO
    data remove storage asset:temp CO
