#> asset:mob/0074.watermelon_bomber/tick/6.reset
#
# リセット処理
#
# @within function asset:mob/0074.watermelon_bomber/tick/1

# リセット
    scoreboard players set @s 22.Tick -60
    item replace entity @s weapon.mainhand with melon{CustomModelData:20023}
