#> asset:mob/0331.aurora_sorcerer/tick/reset
#
# リセット処理
#
# @within function asset:mob/0331.aurora_sorcerer/tick/2.shoot

# リセット
    scoreboard players set @s 97.Skill -60
    attribute @s generic.knockback_resistance base set 0
    effect clear @s slowness
