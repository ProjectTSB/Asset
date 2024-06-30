#> asset:mob/0217.medousa_eye/tick/8.reset
#
# リセット
#
# @within function
#   asset:mob/0217.medousa_eye/tick/3.fix_direction
#   asset:mob/0217.medousa_eye/tick/5.beam_shoot

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players reset @s 61.Tick
