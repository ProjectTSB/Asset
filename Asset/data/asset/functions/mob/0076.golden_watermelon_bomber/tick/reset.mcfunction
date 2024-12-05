#> asset:mob/0076.golden_watermelon_bomber/tick/reset
#
# リセット処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/

# リセット
    scoreboard players set @s General.Mob.Tick -70
    item replace entity @s weapon.mainhand with melon{CustomModelData:20023,Enchantments:[{}]}
