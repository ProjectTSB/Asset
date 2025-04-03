#> asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start
#
# アイススピナー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/

# ランダムに角度変更
    execute store result entity @s Rotation[0] float 1 run random value 0..359

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 2 2

# 難易度に応じて数を増やす
    execute at @s positioned ^ ^1 ^4 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"false"}
    execute at @s run tp @s ~ ~ ~ ~120 ~
    execute if predicate api:global_vars/difficulty/min/hard at @s positioned ^ ^1 ^4 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"false"}
    execute at @s run tp @s ~ ~ ~ ~120 ~
    execute if predicate api:global_vars/difficulty/min/hard at @s positioned ^ ^1 ^4 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"false"}
    execute at @s run tp @s ~ ~ ~ ~-60 ~
    execute if predicate api:global_vars/difficulty/normal at @s positioned ^ ^1 ^4 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"false"}
    execute at @s run tp @s ~ ~ ~ ~-180 ~
