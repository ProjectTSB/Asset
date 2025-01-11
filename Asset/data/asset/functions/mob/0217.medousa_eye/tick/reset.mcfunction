#> asset:mob/0217.medousa_eye/tick/reset
#
# リセット
#
# @within function
#   asset:mob/0217.medousa_eye/tick/fix_direction
#   asset:mob/0217.medousa_eye/tick/beam_shoot

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players reset @s General.Mob.Tick
