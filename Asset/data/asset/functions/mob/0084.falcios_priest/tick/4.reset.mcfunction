#> asset:mob/0084.falcios_priest/tick/4.reset
#
# リセット
#
# @within function
#   asset:mob/0084.falcios_priest/tick/2.heal
#   asset:mob/0084.falcios_priest/tick/3.shoot

# スコアをリセット
    scoreboard players set @s 2C.Tick -80
    tag @s[tag=2C.AttackSkill] remove 2C.AttackSkill
