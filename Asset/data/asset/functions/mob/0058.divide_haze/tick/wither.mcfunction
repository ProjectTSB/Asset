#> asset:mob/0058.divide_haze/tick/wither
#
# ウィザーを付与
#
# @within function asset:mob/0058.divide_haze/tick/

# ウィザー
    function api:global_vars/get_difficulty
    data modify storage api: Argument set value {ID:30,Duration:100}
    execute store result storage api: Argument.Stack int 1 run data get storage api: Return.Difficulty
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
