#> asset:mob/0331.aurora_sorcerer/tick/reset
#
# リセット処理
#
# @within function asset:mob/0331.aurora_sorcerer/tick/shoot

# リセット
    scoreboard players set @s General.Mob.Tick -60
    attribute @s generic.knockback_resistance base set 0
    effect clear @s slowness
