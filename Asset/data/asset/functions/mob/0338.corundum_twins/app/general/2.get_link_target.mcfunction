#> asset:mob/0338.corundum_twins/app/general/2.get_link_target
#
# Rootと双子本体の紐づけ処理
#
# @within function asset:mob/0338.corundum_twins/**

# 紐づけ対象を取得
    execute store result storage asset:temp 9E.Uid int 1 run scoreboard players get @s 9E.Uid
    function asset:mob/0338.corundum_twins/app/general/3.get_link_target_macro.m with storage asset:temp 9E
    data remove storage asset:temp 9E.Uid
