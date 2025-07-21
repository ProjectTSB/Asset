#> asset:mob/0236.ksitigarbha/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/236/tick

#> within
# @within
#   function asset:mob/0236.ksitigarbha/tick/
#   function asset:mob/0236.ksitigarbha/tick/ongaeshi
    #declare score_holder $6K.OngaeshiFlag

#着地していた場合AlwaysSlowFallを削除
    execute if entity @s[tag=AlwaysSlowFall] if data entity @s {OnGround:1b} run effect clear @s slow_falling
    execute if entity @s[tag=AlwaysSlowFall] if data entity @s {OnGround:1b} run tag @s remove AlwaysSlowFall

# 向きを調整する
    execute on passengers run tp @s ~ ~ ~ ~ 0

# 頭のinterractが右クリックがされていた場合雪を消して恩返しする
    execute if entity @s[tag=!6K.Ongaeshied] on passengers if entity @s[type=interaction] on target run function asset:mob/0236.ksitigarbha/tick/ongaeshi
    execute if score $6K.OngaeshiFlag Temporary matches 1 on passengers if entity @s[tag=6K.Snow] run data modify entity @s block_state.Name set value "minecraft:air"
    execute if score $6K.OngaeshiFlag Temporary matches 1 run tag @s add 6K.Ongaeshied
    execute if score $6K.OngaeshiFlag Temporary matches 1 run function api:mob/kill

# reset
    scoreboard players reset $6K.OngaeshiFlag Temporary
