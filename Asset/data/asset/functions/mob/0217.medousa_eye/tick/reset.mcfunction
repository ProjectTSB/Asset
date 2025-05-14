#> asset:mob/0217.medousa_eye/tick/reset
#
# リセット
#
# @within function
#   asset:mob/0217.medousa_eye/tick/fix_direction
#   asset:mob/0217.medousa_eye/tick/beam/

# リセット
    data modify entity @s NoAI set value 0b

# 難易度別で次の発射までの間隔を変える
    execute if predicate api:global_vars/difficulty/easy run scoreboard players set @s General.Mob.Tick -100
    execute if predicate api:global_vars/difficulty/2_hard run scoreboard players set @s General.Mob.Tick -85
    execute if predicate api:global_vars/difficulty/min/3_blessless run scoreboard players set @s General.Mob.Tick -70
