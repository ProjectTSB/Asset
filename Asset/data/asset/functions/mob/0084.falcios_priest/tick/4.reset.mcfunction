#> asset:mob/0084.falcios_priest/tick/4.reset
#
# リセット
#
# @within function
#   asset:mob/0084.falcios_priest/tick/2.shoot
#   asset:mob/0084.falcios_priest/tick/3.heal

# リセット
    scoreboard players set @s 2C.Tick -80
    tag @s[tag=2C.Attack] remove 2C.Attack
