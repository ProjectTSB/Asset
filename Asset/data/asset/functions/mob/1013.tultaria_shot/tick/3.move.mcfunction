#> asset:mob/1013.tultaria_shot/tick/3.move
#
#
#
# @within function
#   asset:mob/1013.tultaria_shot/tick/2.tick
#   asset:mob/1013.tultaria_shot/tick/3.move

# 複数回実行
    execute at @s[scores={S5.Speed=1..}] run function asset:mob/1013.tultaria_shot/tick/4.tp
    execute at @s[scores={S5.Speed=2..}] run function asset:mob/1013.tultaria_shot/tick/4.tp
    execute at @s[scores={S5.Speed=3..}] run function asset:mob/1013.tultaria_shot/tick/4.tp
    execute at @s[scores={S5.Speed=4..}] run function asset:mob/1013.tultaria_shot/tick/4.tp