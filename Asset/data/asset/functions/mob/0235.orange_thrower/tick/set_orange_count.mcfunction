#> asset:mob/0235.orange_thrower/tick/set_orange_count
#
#
#
# @within function asset:mob/0235.orange_thrower/tick/

# みかんを(難易度値*2 - 1)個召喚する
    function api:global_vars/get_difficulty
    execute store result storage asset:context this.OrangeCount int 0.9999999999 run data get storage api: Return.Difficulty 2
