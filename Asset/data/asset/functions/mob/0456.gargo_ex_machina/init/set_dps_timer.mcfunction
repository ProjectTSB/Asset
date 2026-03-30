#> asset:mob/0456.gargo_ex_machina/init/set_dps_timer
#
# Mobのinit時の処理
#
# @within asset:mob/0456.gargo_ex_machina/init/

# 実HP計算
    function api:mob/get_max_health
    execute store result score @s CO.ActualHealth run data get storage api: Return.MaxHealth 1
    data remove storage api: Return
    scoreboard players set @s CO.DpsTimer 0
