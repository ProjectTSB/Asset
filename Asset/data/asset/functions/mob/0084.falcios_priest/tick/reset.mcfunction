#> asset:mob/0084.falcios_priest/tick/reset
#
# リセット
#
# @within function
#   asset:mob/0084.falcios_priest/tick/shoot
#   asset:mob/0084.falcios_priest/tick/heal

# リセット
    scoreboard players set @s General.Mob.Tick -80
    tag @s[tag=2C.Attack] remove 2C.Attack
