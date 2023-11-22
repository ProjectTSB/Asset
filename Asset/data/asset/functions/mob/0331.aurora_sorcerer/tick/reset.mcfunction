#> asset:mob/0331.aurora_sorcerer/tick/reset
#
#
#
# @within function asset:mob/0331.aurora_sorcerer/tick/3.skill1_shoot

# リセット
    scoreboard players set @s 97.Skill -60
    attribute @s generic.knockback_resistance base set 0
    effect clear @s slowness