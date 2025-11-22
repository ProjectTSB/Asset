#> asset:mob/0420.astro_blaze/tick/check_through/recursive
#
# 再帰で自身の位置に辿り着けるか？
#
# @within function
#   asset:mob/0420.astro_blaze/tick/check_through/
#   asset:mob/0420.astro_blaze/tick/check_through/recursive

# 既に成功してるならreturn
    execute if data storage asset:context this{Success:true} run return fail

# 自身に接触したら成功判定を返す
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function asset:mob/0420.astro_blaze/tick/check_through/success

# 再帰
    execute positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:mob/0420.astro_blaze/tick/check_through/recursive
