#> asset:mob/0076.golden_watermelon_bomber/tick/6.reset
#
# リセット処理
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/1

# リセット
    scoreboard players set @s 24.Tick -70
    item replace entity @s weapon.mainhand with melon{CustomModelData:20023,Enchantments:[{}]}
