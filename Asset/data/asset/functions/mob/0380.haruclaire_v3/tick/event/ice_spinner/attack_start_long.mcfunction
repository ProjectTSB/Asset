#> asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack_start_long
#
# アイススピナー
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/

# 演出
    playsound item.trident.return hostile @a ~ ~ ~ 2 2

# 難易度に応じて数を増やす
    tp @s ~ ~ ~ ~90 ~
    execute if predicate api:global_vars/difficulty/min/hard at @s positioned ^ ^1 ^10 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"true"}
    execute at @s run tp @s ~ ~ ~ ~90 ~
    execute at @s positioned ^ ^1 ^10 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"true"}
    execute at @s run tp @s ~ ~ ~ ~90 ~
    execute if predicate api:global_vars/difficulty/min/hard at @s positioned ^ ^1 ^10 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"true"}
    execute at @s run tp @s ~ ~ ~ ~90 ~
    execute if predicate api:global_vars/difficulty/min/normal at @s positioned ^ ^1 ^10 run function asset:mob/0380.haruclaire_v3/tick/event/ice_spinner/attack.m {IsLong:"true"}

# 終了
    kill @s
