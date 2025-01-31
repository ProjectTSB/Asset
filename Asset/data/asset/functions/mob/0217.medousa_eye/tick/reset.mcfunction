#> asset:mob/0217.medousa_eye/tick/reset
#
# リセット
#
# @within function
#   asset:mob/0217.medousa_eye/tick/fix_direction
#   asset:mob/0217.medousa_eye/tick/beam/shoot

# リセット
    data modify entity @s NoAI set value 0b
    scoreboard players set @s General.Mob.Tick -70
