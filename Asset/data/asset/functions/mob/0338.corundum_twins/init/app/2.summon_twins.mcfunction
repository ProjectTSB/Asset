#> asset:mob/0338.corundum_twins/init/app/2.summon_twins
#
# Mobの召喚時の処理・双子本体を召喚し、初期化する
#
# @within function asset:mob/0338.corundum_twins/init/

# 双子を召喚
    data modify storage api: Argument.ID set value 339
    execute positioned ~-0.7 ~101.5 ~2 rotated ~-6 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 340
    execute positioned ~0.7 ~101.5 ~2 rotated ~6 ~ run function api:mob/summon

# 双子とRootの紐づけを行う
    execute store result storage asset:temp 9E.Uid int 1 run scoreboard players get @s 9E.Uid
    function asset:mob/0338.corundum_twins/app/general/1.start_link.m with storage asset:temp 9E
    data remove storage asset:temp 9E

# 完了
    tag @s remove 9E.Init
